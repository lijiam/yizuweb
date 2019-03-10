<template>
  <div id="header">
    <div class="logo_div"><img src="../../../static/imgs/logo_long.png" alt="LOGO" class="logo"></div>
    <div class="items">
      <el-menu :default-active="headerUrl.activeIndex" mode="horizontal" :router="true" @select="handleSelect">
        <el-menu-item index="/">首页</el-menu-item>
        <el-menu-item index="/spaces">场地</el-menu-item>
        <el-menu-item index="/demand">需求登记</el-menu-item>
        <el-menu-item index="/cases">案例精选</el-menu-item>
        <el-menu-item index="/aboutUs">关于我们</el-menu-item>
        <el-submenu index="6">
          <template slot="title"><span style="font-size: 18px">会员中心</span></template>
          <el-menu-item index="/user/userCommon" v-show="userTags.loginRegisterShow" style="font-size: 18px">登录·注册</el-menu-item>
          <el-menu-item :route="{name:'UserCenter',params:{phone:phone}}" v-show="userTags.userCenterShow" style="font-size: 18px">个人信息</el-menu-item>
          <el-menu-item :route="{name:'BackCenter',params:{phone:phone}}" v-show="userTags.backCenterShow" style="font-size: 18px">后台管理</el-menu-item>
          <el-menu-item index="6-4" v-show="userTags.exitShow" style="font-size: 18px" @click="exitLogin">退出登录</el-menu-item>
        </el-submenu>
      </el-menu>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed:{
      ...mapGetters([
        'headerUrl',
        'userTags',
        'loginForm'
      ])
    },
    methods: {
      handleSelect(keyPath) {
        this.headerUrl.activeIndex = keyPath;
      },
      exitLogin(){
        window.location.href = "/";
        this.delCookie('phone')
      },
      getCookie(c_name){
        if (document.cookie.length>0){
          let c_start=document.cookie.indexOf(c_name + "=");
          if (c_start!=-1){ 
            c_start=c_start + c_name.length+1;
            let c_end=document.cookie.indexOf(";",c_start);
          if (c_end==-1)c_end=document.cookie.length;
          return unescape(document.cookie.substring(c_start,c_end));
          } 
        }
        return ""
      },
      delCookie(name){
        let exp = new Date();
        exp.setTime(exp.getTime() - 1);
        let cval=this.getCookie(name);
        if(cval!=null)
        document.cookie= name + "="+cval+";expires="+exp.toGMTString();
      }
    },
    data(){
      return {
        // phone:this.$route.params.phone,
        phone:this.getCookie('phone')
      }
    }
  };
</script>

<style lang="less" scoped>
  #header {
    width: 80%;
    height: 60px;
    margin: 0px auto;
    .logo_div {
      height: 60px;
      width: 60px;
      padding: 5px;
      float: left;
    }
    .logo {
      width: 200px;
      height: 50px;
    }
    .items {
      float: right;
    }
    .el-menu--horizontal{
      border-bottom: none;
    }
    .el-menu-item{
      padding: 0 35px;
      font-size: 18px;
    }
  }
</style>
