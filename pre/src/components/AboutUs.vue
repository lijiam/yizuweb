<template>
  <div id="aboutUs">
    <div class="about_us_logo">
      <img src="../../static/imgs/logo.png" alt="" style="width: 300px;height: 300px;margin: 50px;float: left">
      <p style="padding-top: 50px">{{about_01}}</p>
      <p style="padding-top: 20px">{{about_02}}</p>
    </div>
    <div class="about_us_content">
      <p style="padding-top: 90px">{{about_03}}</p>
      <p style="padding-top: 20px">{{about_04}}</p>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        about_01:'“益租”：“益”意为公益，强调本项目为公益性项目；谐音容“易”，意指租赁方式简便，无繁琐程序；谐音适“宜”，意指宜租宜用，一切皆宜；“租”则直接说明了本组织租赁高校闲置资源的意图。',
        about_02:'“益租”高校闲置资源共享公益创业协会，是致力于解决高校资源闲置和商家（社会）资源短缺问题，减少高校隐性的资源浪费而建设的共享经济公益组织。',
        about_03:'平台的主要业务是面向政府、社区群众、企业、事业单位、个人等有场地租赁需要的客户，集成校园信息化功能模块，用低成本构建可交互式的校园信息系统。在挖掘校园潜在资源基础上，积极将其整合且对外半开放。',
        about_04:'公益组织服务覆盖闲置资源租赁、服务的各个方面，如推进学校体育场馆、报告厅、教室、礼堂、宿舍等基础资源设备，在确保校园安全和维护正常教学秩序的前提下，使符合开放条件的学校利用非教育时间向社会开放。提供方便的信息检索和信息匹配的过程，使需要场地的客户更方便、更快速地在本平台上找到意向度较高的合作对象，从而得到所需要的资源。'
      }
    }
  }
</script>

<style lang="less" scoped>
  #aboutUs{
    width: 80%;
    margin: 30px auto;
    p{
      text-indent: 2em;
      font-size: 30px;
      color: #8c939d;
      line-height: 40px;
    }
    .about_us_logo{
      width: 100%;
      height: 350px;
    }
  }
</style>
