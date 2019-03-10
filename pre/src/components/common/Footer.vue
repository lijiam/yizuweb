<template>
  <div id="footer">
    <div class="content">
      <p style="padding-top: 15px">{{footer.copyright}}</p>
      <span>地址：{{footer.address}}</span>
      <span style="margin-left: 15px;margin-right: 15px">邮箱：{{footer.email}}</span>
      <router-link :to="{ path: footer.aboutUsUrl}" @click.native="open(footer.aboutUsUrl)" replace
                   style="color: #dddddd;text-decoration: none;">关于我们</router-link>
      <el-button type="text" size="mini" @click="footer.disclaimerDialog = true">免责说明</el-button>
      <router-link :to="{ path: footer.demandUrl}" @click.native="open(footer.demandUrl)" replace
                   style="color: #dddddd;text-decoration: none;">联系我们</router-link>
    </div>
    <el-dialog title="免责说明" :visible="footer.disclaimerDialog" :center="true"
               :modal="false" :lock-scroll="true" :show-close="false">
      <div v-for="disclaimer in footer.disclaimers" :key="disclaimer.key">
        <div class="disclaimer_title">{{disclaimer.title}}</div>
        <div class="disclaimer_content">{{disclaimer.content}}</div>
      </div>
      <span slot="footer">
        <el-button @click="footer.disclaimerDialog = false">关 闭</el-button>
    </span>
    </el-dialog>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import types from '../../store/types'

  export default {
    computed:{
      ...mapGetters([
        'footer'
      ])
    },
    methods: {
      open(url) {
        this.$store.commit(types.SET_ACTIVE_INDEX,url);
      }
    }
  }
</script>

<style lang="less" scoped>
  #footer {
    background-color: #333333;
    color: #dddddd;
    opacity: 0.8;
    width: 100%;
    font-size: 12px;
    padding-top: 5px;
    .content {
      width: 80%;
      height: 100%;
      margin: 0 auto;
      text-align: center;
      .el-button {
        color: #dddddd;
      }
    }
    .disclaimer_title{
      font-size: 16px;
      color: #000000;
      margin-top: 10px;
      margin-bottom: 10px;
    }
    .disclaimer_content{
      text-indent: 2em;
    }
  }
</style>
