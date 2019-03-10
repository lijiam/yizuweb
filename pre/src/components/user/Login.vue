<template>
  <div id="login">
    <div class="login_title">登陆</div>
    <div class="login_form">
      <el-form :model="loginForm" ref="loginForm" :rules="loginRules" status-icon>
        <el-form-item prop="phone">
          <el-input v-model="loginForm.phone" placeholder="请输入手机号" :maxlength="11" :clearable="true"></el-input>
        </el-form-item>
        <el-form-item prop="password">
          <el-input type="password" v-model="loginForm.password" placeholder="请输入密码"
                    :clearable="true"></el-input>
        </el-form-item>
        <el-button type="primary" @click="submitForm('loginForm')">登 陆</el-button>
        <el-button @click="changeToRegister">注 册</el-button>
        <div style="text-align: center;margin-top: 10px">
          <el-button type="text" size="mini" @click="changeToPassword">忘记密码？</el-button>
        </div>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed: {
      ...mapGetters([
        'loginForm',
        'userTags'
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
      return {
        loginRules: {
          phone: [
            {required: true, message: '手机号不能为空', trigger: 'blur,change'},
            {validator: validatePhone, trigger: 'blur,change'}
          ],
          password: [
            {required: true, message: '密码不能为空', trigger: 'blur,change'},
            {min: 6, max: 30, message: '长度为 6 至 30 个字符', trigger: 'blur,change'}
          ]
        }
      }
    },
    methods: {
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$store.dispatch('toLogin', this.loginForm).then((value) => {
              if (value.code === 0) {
                //这里是跳转个人信息中心的方法,0表示普通用户  1表示管理员
                if (value.data.userTag === '0') {
                  this.toUserCenter(value.data.phone);
                } else if (value.data.userTag === '1') {
                  this.toBackCenter(value.data.phone);
                }
                this.setCookie('phone',value.data.phone,365);
                alert('登录成功');
              } else {
                alert(value.data);
              }
            }).catch(()=>{
              alert("系统异常");
            })
          } else {
            alert('登录表单校验失败');
            return false;
          }
        });
      },
      setCookie(cname,cvalue,exdays){
        let d = new Date();
        d.setTime(d.getTime()+(exdays*24*60*60*1000));
        let expires = "expires="+d.toGMTString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      },
      changeToPassword() {
        this.$store.dispatch('changeToPassword');
        this.resetForm('loginForm');
        this.$refs['loginForm'].clearValidate();
      },
      changeToRegister() {
        this.$store.dispatch('changeToRegister');
        this.resetForm('loginForm');
        this.$refs['loginForm'].clearValidate();
      },
      toUserCenter(val) {
        this.userTags.loginRegisterShow = false;
        this.userTags.userCenterShow = true;
        this.userTags.backCenterShow = false;
        this.userTags.exitShow = true;
        // console.log(this.userTags);
        this.$router.replace({name: 'UserCenter', params: {phone: val}});
      },
      toBackCenter(val) {
        this.userTags.loginRegisterShow = false;
        this.userTags.userCenterShow = false;
        this.userTags.backCenterShow = true;
        this.userTags.exitShow = true;
        // console.log(this.userTags);
        this.$router.replace({name: 'BackCenter', params: {phone: val}});
      }
    }
  }
</script>

<style lang="less" scoped>
  #login {
    width: 36%;
    height: 380px;
    background-color: #fff;
    margin: 130px auto;
    border-radius: 5px;
    box-shadow: 0 0 15px #909399;
    .login_title {
      text-align: center;
      font-size: 30px;
      color: #409EFF;
      padding-top: 50px;
      padding-bottom: 40px;
    }
    .login_form {
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
