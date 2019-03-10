<template>
  <div id="caseDetails">
    <div class="case_detail_top">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <!--<el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>-->
        <el-breadcrumb-item :to="{ path: '/cases' }">案例精选</el-breadcrumb-item>
        <el-breadcrumb-item>案例详情</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <div class="case_detail_title">
      {{caseDetail.caseTitle}}
    </div>
    <div style="border-bottom: solid #909399 1px"></div>
    <div class="case_detail_imgs" v-for="img in caseDetail.imgUrls" :key="img">
      <img :src="img" alt="case" style="width: 900px;height: 600px;border-radius: 10px">
    </div>
    <div class="case_detail_content">
      <span>{{caseDetail.caseContent}}</span>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed:{
      ...mapGetters([
        'caseDetail'
      ])
    },
    created(){
      this.$store.dispatch('getCaseDetail',this.$route.params.case_id)
    }
  }
</script>

<style lang="less" scoped>
  #caseDetails{
    width: 80%;
    margin: 20px auto;
    .case_detail_top{
      margin-bottom: 20px;
    }
    .case_detail_title{
      font-size: 30px;
      text-align: center;
      margin-bottom: 30px;
    }
    .case_detail_imgs{
      margin-top: 30px;
      text-align: center;
    }
    .case_detail_content{
      width: 90%;
      margin: 30px auto;
      text-indent: 2em;
      font-size: 18px;
      line-height: 30px;
      color: #606266;
    }
    .el-breadcrumb{
      font-size: 16px;
    }
  }
</style>
