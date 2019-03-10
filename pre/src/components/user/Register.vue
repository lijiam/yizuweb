<template>
  <div id="register">
    <div class="register_title">注册</div>
    <div class="register_form">
      <el-form :model="registerForm" ref="registerForm" :rules="registerRules" status-icon>
        <el-form-item prop="phone">
          <el-input v-model="registerForm.phone" placeholder="请输入手机号" :maxlength="11" :clearable="true"></el-input>
        </el-form-item>
        <el-form-item prop="iCode">
          <el-input v-model="registerForm.iCode" placeholder="请输入验证码" :maxlength="11" :clearable="true">
            <el-button slot="append" @click="getPhoneCode" :disabled="timeShow">{{timeShowInfo}}</el-button>
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" v-model="registerForm.password" placeholder="请输入密码"
                    :clearable="true"></el-input>
        </el-form-item>
        <el-form-item prop="passwordCheck">
          <el-input type="password" v-model="registerForm.passwordCheck" placeholder="请再次输入密码"
                    :clearable="true"></el-input>
        </el-form-item>
        <el-button type="primary" @click="submitForm('registerForm')">注 册</el-button>
        <el-button @click="resetForm('registerForm')">重 置</el-button>
        <div style="text-align: center;margin-top: 10px">
          <el-button type="text" size="mini" @click="changeToLogin">已有账号，返回登陆</el-button>
        </div>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import types from '../../store/types'

  export default {
    computed: {
      ...mapGetters([
        'registerForm',
        'phone'
      ])
    },
    data() {
      // 验证手机号
      let validatePhone = (rule, value, callback) => {
        let checkPhone = /^1[3578]\d{9}$/;
        if (checkPhone.test(value)) {
          callback();
        } else {
          callback(new Error('请输入正确格式的手机号'));
        }
      };
      //校验验证码
      let validatePhoneCode = (rule, value, callback) => {
        if (this.phone.phoneCode === -1) {
          callback(new Error('发送验证码失败，请检查手机号是否正确'));
        } else if (value !== '' && value === this.phone.phoneCode) {
          callback();
        } else {
          callback(new Error('验证码不正确'));
        }
      };
      //校验密码
      let validatePass = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('密码不能为空'));
        } else {
          if (this.registerForm.passwordCheck !== '') {
            this.$refs.registerForm.validateField('passwordCheck');
          }
          callback();
        }
      };
      //校验密码
      let validatePassCheck = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('密码不能为空'));
        } else if (value !== this.registerForm.password) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      return {
        registerRules: {
          phone: [
            {required: true, message: '手机号不能为空', trigger: 'blur,change'},
            {validator: validatePhone, trigger: 'blur,change'}
          ],
          iCode: [
            {required: true, message: '验证码不能为空', trigger: 'blur,change'},
            {validator: validatePhoneCode, trigger: 'blur,change'}
          ],
          password: [
            {min: 6, max: 30, message: '长度为 6 至 30 个字符', trigger: 'blur,change'},
            {validator: validatePass, trigger: 'blur,change'}
          ],
          passwordCheck: [
            {min: 6, max: 30, message: '长度为 6 至 30 个字符', trigger: 'blur,change'},
            {validator: validatePassCheck, trigger: 'blur,change'}
          ],
        },
        limitTime: 60,
        isStop: false,
        timeShowInfo: '获取验证码',
        timeShow: false
      }
    },
    created() {
      this.limitTime = 60;
      this.isStop = false;
      this.timeShowInfo = '获取验证码';
      this.timeShow = false;
      this.$store.commit(types.RESET_REGISTER_FORM)
    },
    methods: {
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$store.dispatch('toRegister', this.registerForm).then((value) => {
              if (value.code === 0) {
                alert(value.data);
                this.changeToLogin()
              } else {
                alert(value.data);
              }
            }).catch(err=>{
              alert('系统异常')
            });
          } else {
            alert('注册表单校验失败');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      changeToLogin() {
        this.$store.dispatch('changeToLogin');
        this.resetForm('registerForm');
        this.$refs['registerForm'].clearValidate();
      },
      getPhoneCode() {
        if(this.registerForm.phone !== ""){
          this.timeShow = true;
          alert('验证码已发送至您的手机，请注意查收！');
          //设置60s的定时任务
          let _this = this;
          _this.timeDown();
          let time = setInterval(() => {
            if (_this.stop) {
              clearInterval(time);
              _this.stop = false;
              _this.timeShowInfo = '获取验证码';
              _this.timeShow = false;
              _this.limitTime = 60;
            }
            _this.limitTime--;
            _this.timeDown();
          }, 1000);
          this.$store.dispatch('getPhoneCode', this.registerForm.phone);
        }else {
          alert('请先输入手机号');
        }
      },
      timeDown() {
        let s = parseInt(this.limitTime % 60);
        if (this.limitTime <= 0) {
          this.stop = true;
          return;
        }
        this.timeShowInfo = `${s}秒后重发`;
      }
    }
  }
</script>

<style lang="less" scoped>
  #register {
    width: 36%;
    height: 460px;
    background-color: #fff;
    margin: 130px auto;
    border-radius: 5px;
    box-shadow: 0 0 15px #909399;
    .register_title {
      text-align: center;
      font-size: 30px;
      color: #409EFF;
      padding-top: 30px;
      padding-bottom: 30px;
    }
    .register_form {
      width: 70%;
      height: 200px;
      margin: 0 auto;
      .el-button {
        width: 48%;
        margin-left: 3px;
      }
    }
  }
</style>
