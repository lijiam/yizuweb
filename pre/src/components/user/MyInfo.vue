<template>
  <div id="myInfo">
    <div class="my_info_title">
      我的资料
    </div>
    <div style="border-bottom: dashed 1px #e6e6e6;margin-left: 10px"></div>
    <div class="my_info_content">
      <div class="content_div">
        <span style="padding-left: 2em">昵称：</span>{{myInfo.userName}}
      </div>
      <div class="content_div">
        <span style="padding-left: 2em">姓名：</span>{{myInfo.name}}
      </div>
      <div class="content_div">
        <span style="padding-left: 2em">性别：</span>{{myInfo.sex}}
      </div>
      <div class="content_div">
        <span style="padding-left: 1em">手机号：</span>{{myInfo.phone}}
      </div>
      <div class="content_div">
        <span style="padding-left: 2em">邮箱：</span>{{myInfo.email}}
      </div>
      <div class="content_div">
        联系地址：{{myInfo.address}}
      </div>
      <div class="content_div">
        <span style="padding-left: 2em">生日：</span>{{myInfo.birthday}}
      </div>
      <div class="content_div">
        <span style="padding-left: 2em">职业：</span>{{myInfo.work}}
      </div>
      <div class="content_div">
        单位地址：{{myInfo.workAddress}}
      </div>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed:{
      ...mapGetters([
        'myInfo'
      ])
    },
    created(){
      this.$store.dispatch('getMyInfo')
    }
  }
</script>

<style lang="less" scoped>
  #myInfo{
    .my_info_title{
      font-size: 20px;
      color: #303133;
      padding: 20px;
      margin-left: 10px;
    }
    .my_info_content{
      width: 80%;
      margin: 50px auto 0 auto;
      font-size: 16px;
      color: #606266;
      .content_div{
        margin: 30px;
      }
    }
  }
</style>
