<template>
  <div id="userCenter">
    <div class="user_center_left">
      <el-menu :default-active="{name:'MyInfo',params:{phone:phone}}" router>
        <el-submenu index="1">
          <template slot="title">
            <i class="el-icon-document"></i>
            <span slot="title">个人信息</span>
          </template>
          <el-menu-item :route="{name:'MyInfo',params:{phone:phone}}">我的资料</el-menu-item>
          <el-menu-item :route="{name:'MyDemand',params:{phone:phone}}">我的需求</el-menu-item>
        </el-submenu>
        <el-submenu index="2">
          <template slot="title">
            <i class="el-icon-setting"></i>
            <span slot="title">设置</span>
          </template>
          <el-menu-item :route="{name:'ModifyInfo',params:{phone:phone}}">完善信息</el-menu-item>
          <el-menu-item index="" @click="exitLogin">退出登录</el-menu-item>
        </el-submenu>
      </el-menu>
    </div>
    <div class="user_center_right">
      <router-view/>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        phone:this.getCookie('phone')
      }
    },
    methods: {
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
    }
  }
</script>

<style lang="less" scoped>
  #userCenter{
    width: 80%;
    margin: 0 auto;
    background-color: #fff;
    height: 700px;
    .user_center_left{
      width: 20%;
      height: 100%;
      float: left;
      background-color: #fff;
      border-right: solid 1px #e6e6e6;;
    }
    .user_center_right{
      width: 79%;
      height: 100%;
      float: left;
      background-color: #fff;
    }
    .el-menu{
      border-right: none;
    }
  }
</style>
