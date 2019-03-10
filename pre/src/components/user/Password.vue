<template>
  <div id="password">
    <div class="password_title">找回密码</div>
    <div class="password_form">
      <el-form :model="passwordForm" ref="passwordForm" :rules="passwordRules" status-icon>
        <el-form-item prop="phone">
          <el-input v-model="passwordForm.phone" placeholder="请输入手机号" :clearable="true"></el-input>
        </el-form-item>
        <el-form-item prop="iCode">
          <el-input v-model="passwordForm.iCode" placeholder="请输入验证码" :clearable="true">
            <el-button slot="append" @click="getPhoneCode" :disabled="timeShow">{{timeShowInfo}}</el-button>
          </el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" v-model="passwordForm.password" placeholder="请输入密码"
                    :clearable="true"></el-input>
        </el-form-item>
        <el-form-item prop="passwordCheck">
          <el-input type="password" v-model="passwordForm.passwordCheck" placeholder="请再次输入密码"
                    :clearable="true"></el-input>
        </el-form-item>
        <el-button type="primary" @click="submitForm('passwordForm')">确 认</el-button>
        <el-button @click="changeToRegister">重新注册</el-button>
        <div style="text-align: center;margin-top: 10px">
          <el-button type="text" size="mini" @click="changeToLogin">返回登陆</el-button>
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
        'passwordForm',
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
        if(this.phone.phoneCode === -1){
          callback(new Error('发送验证码失败，请检查手机号是否正确'));
        }else if (value !== '' && value === this.phone.phoneCode) {
          callback();
        }else{
          callback(new Error('验证码不正确'));
        }
      };
      //校验密码
      let validatePass = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('密码不能为空'));
        } else {
          if (this.passwordForm.passwordCheck !== '') {
            this.$refs.passwordForm.validateField('passwordCheck');
          }
          callback();
        }
      };
      //校验密码
      let validatePassCheck = (rule, value, callback) => {
        if (value === '') {
          callback(new Error('密码不能为空'));
        } else if (value !== this.passwordForm.password) {
          callback(new Error('两次输入密码不一致!'));
        } else {
          callback();
        }
      };
      return {
        passwordRules: {
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
        limitTime:60,
        isStop:false,
        timeShowInfo:'获取验证码',
        timeShow:false
      }
    },
    methods: {
      submitForm(formName) {
        if(confirm('确认要重置密码吗？')){
          this.$refs[formName].validate((valid) => {
            if (valid) {
              this.$store.dispatch('changePassword',this.passwordForm).then((value)=>{
                if(value.code === 0){
                  alert(value.data);
                  this.changeToLogin()
                }else if(value.code === -1){
                  alert(value.data);
                }
              });
            } else {
              console.log('change password failed!');
              return false;
            }
          });
        }else {
          return false;
        }
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      changeToRegister() {
        this.$store.dispatch('changeToRegister');
        this.resetForm('passwordForm');
        this.$refs['passwordForm'].clearValidate();
      },
      changeToLogin() {
        this.$store.dispatch('changeToLogin');
        this.resetForm('passwordForm');
        this.$refs['passwordForm'].clearValidate();
      },
      getPhoneCode(){
        if(this.passwordForm.phone!== ""){
          this.timeShow = true;
          alert('验证码已发送至您的手机，请注意查收！');
          //设置60s的定时任务
          this.stop = false;
          let _this = this;
          _this.timeDown();
          let time = setInterval(()=> {
            if (_this.stop) {
              clearInterval(time);
              _this.stop = false;
              _this.timeShowInfo = '获取验证码';
              _this.timeShow = false;
              _this.limitTime = 60;
            }
            _this.limitTime --;
            _this.timeDown();
          }, 1000);
          this.$store.dispatch('getPhoneCode',this.passwordForm.phone);
        }else {
          alert("请输入手机号")
        }
      },
      timeDown () {
        let s = parseInt(this.limitTime % 60);
        if (this.limitTime <= 0) {
          this.stop = true;
          return;
        }
        this.timeShowInfo = `${s}秒后重发`;
      }
    },
    created(){
      this.limitTime = 60;
      this.isStop = false;
      this.timeShowInfo = '获取验证码';
      this.timeShow = false;
      this.$store.commit(types.RESET_PASSWORD_FORM)
    },
  }
</script>

<style lang="less" scoped>
  #password{
    width: 36%;
    height: 450px;
    background-color: #fff;
    margin: 130px auto;
    border-radius: 5px;
    box-shadow: 0 0 15px #909399;
    .password_title {
      text-align: center;
      font-size: 30px;
      color: #409EFF;
      padding-top: 30px;
      padding-bottom: 30px;
    }
    .password_form{
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
