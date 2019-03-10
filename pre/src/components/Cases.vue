<template>
  <div id="cases">
    <div class="cases_list">
      <el-row>
        <el-col :span="20" v-for="iCase in casesList" :key="iCase.caseId" :offset="2">
          <el-card :body-style="{ padding: '0px',width:'100%',height:'170px'}">
            <div style="padding: 20px;height: 77%;width: 96%">
              <div class="case_img">
                <router-link :to="{name:'CaseDetails',params:{case_id:iCase.caseId}}">
                  <img :src="iCase.caseImg" alt="iCase" style="width: 200px;height: 130px;border-radius: 5px">
                </router-link>
              </div>
              <div class="case_title">
                <router-link :to="{name:'CaseDetails',params:{case_id:iCase.caseId}}">
                  {{iCase.caseTitle}}</router-link>
              </div>
              <div class="case_introduce">
                {{iCase.caseIntroduce}}
              </div>
            </div>
          </el-card>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed:{
      ...mapGetters([
        'casesList',
        'caseDetail'
      ])
    },
    created(){
      this.$store.dispatch('getCasesList')
    }
  }
</script>

<style lang="less" scoped>
  #cases{
    width: 80%;
    margin: 0 auto 20px auto;
    .case_img{
      float: left;
    }
    .case_title{
      font-size: 20px;
      margin: 15px 0 15px 228px;
      a{
        text-decoration: none;
        color: #303133;
      }
      a:hover
      {
        color:#409EFF;
      }
    }
    .case_introduce{
      font-size: 14px;
      color: #606266;
      text-indent: 2em;
      padding-left: 228px;
      padding-right: 15px;
      line-height: 20px;
    }
    .el-col-20{
      margin-top: 20px;
    }
    .el-card:hover{
      box-shadow: 0 0 20px #909399;
    }
  }
</style>
