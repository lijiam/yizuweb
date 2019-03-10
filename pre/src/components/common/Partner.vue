<template>
  <div id="partner">
    <h3 style="font-size: 28px;margin-top: 100px;color: #606266">合作伙伴</h3>
    <div class="partnerStyle">
      <el-row>
        <el-col :span="4" v-for="(partner,index) in partners" :key="index" :offset="index > 0 ? 1 : 0">
          <el-card :body-style="{ padding: '0',width: '200px',height: '50px'}">
            <a href="javascript:" @click="goToPartner(partner.url)">
              <img :src="partner.value" :alt="partner.name" style="width: 180px;height: 50px;">
            </a>
          </el-card>
        </el-col>
      </el-row>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    methods:{
      goToPartner(url){
        window.open(url);
      }
    },
    computed:{
      ...mapGetters([
        'partners'
      ])
    }
  }
</script>

<style lang="less" scoped>
  #partner {
    .partnerStyle {
      margin: 50px auto;
      width: 100%;
    }
  }
</style>
