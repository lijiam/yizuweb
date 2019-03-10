<template>
  <div id="floatFrame" v-show="floatFrameShow">
    <a href="javascript:">
      <img :src="weChatImgUrl" alt="微信公众号" style="width: 50px;height: 50px;"
           @mouseover="changeWeChatLight" @mouseout="changeWeChatBlack">
    </a>
    <a href="javascript:">
      <img :src="weBoImgUrl" alt="微博" style="width: 43px;height: 43px;margin-top: 30px"
           @mouseover="changeWeBoLight" @mouseout="changeWeBoBlack">
    </a>
    <a href="javascript:window.scrollTo(0,0)">
      <img :src="backImgUrl" alt="返回顶部" style="width: 42px;height: 42px;margin-top: 30px"
           @mouseover="changeBackLight" @mouseout="changeBackBlack">
    </a>
    <img src="../../../static/imgs/wechatcode.png" alt="微信二维码" v-show="weChatLogoShow"
         style="position: fixed;bottom: 200px;right: 110px;width: 200px;height: 200px">
    <img src="../../../static/imgs/webocode.png" alt="微博二维码" v-show="weBoLogoShow"
         style="position: fixed;bottom: 120px;right: 110px;width: 200px;height: 200px">
  </div>
</template>

<script>
  export default {
    data(){
      return {
        floatFrameShow:false,
        weChatLogoShow:false,
        weBoLogoShow:false,
        weChatImgUrl:'../../../static/imgs/wechat_black.svg',
        backImgUrl:'../../../static/imgs/back_black.svg',
        weBoImgUrl:'../../../static/imgs/webo_black.svg',
      }
    },
    methods:{
      handleScroll(){
        let scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
        if (scrollTop > 150) {
          this.floatFrameShow = true
        } else {
          this.floatFrameShow = false
        }
      },
      changeWeChatLight(){
        this.weChatImgUrl = '../../../static/imgs/wechat_light.svg';
        this.weChatLogoShow = true;
      },
      changeWeChatBlack(){
        this.weChatImgUrl = '../../../static/imgs/wechat_black.svg';
        this.weChatLogoShow = false
      },
      changeWeBoLight(){
        this.weBoImgUrl = '../../../static/imgs/webo_light.svg';
        this.weBoLogoShow = true;
      },
      changeWeBoBlack(){
        this.weBoImgUrl = '../../../static/imgs/webo_black.svg';
        this.weBoLogoShow = false
      },
      changeBackLight(){
        this.backImgUrl = '../../../static/imgs/back_light.svg'
      },
      changeBackBlack(){
        this.backImgUrl = '../../../static/imgs/back_black.svg'
      }
    },
    mounted(){
      window.addEventListener('scroll',this.handleScroll);
    }
  }
</script>

<style lang="less" scoped>
  #floatFrame{
    width: 50px;
    height: 200px;
    position: fixed;
    bottom: 50px;
    right: 50px;
    z-index: 888;
    background-color: transparent;
  }
</style>
