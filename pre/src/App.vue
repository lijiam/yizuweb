<template>
  <div id="app">
    <!--页面布局容器开始：上中下结构-->
    <el-container>
      <!--头部开始-->
      <el-header>
        <clt-header></clt-header>
      </el-header>
      <!--头部结束-->
      <!--中间开始-->
      <el-main>
        <router-view/>
      </el-main>
      <!--中间结束-->
      <!--底部开始-->
      <el-footer>
        <clt-footer></clt-footer>
      </el-footer>
      <!--底部结束-->
    </el-container>
    <!--页面布局容器结束：上中下结构-->
    <clt-floatFrame></clt-floatFrame>
  </div>
</template>

<script>
  import Header from './components/common/Header'
  import Footer from './components/common/Footer'
  import FloatFrame from './components/common/FloatFrame'

  export default {
    components:{
      'clt-header':Header,
      'clt-footer':Footer,
      'clt-floatFrame':FloatFrame
    }
  }
</script>

<style lang="less" scoped>
#app{
  background-color: #f4f4f4;
  .el-main{
    padding: 0;
    margin-top: 60px;
  }
  .el-header{
    position: fixed;
    left: 0;
    top: 0;
    z-index: 666;
    width: 100%;
    padding: 0;
    background-color: #fff;
    opacity: 0.8;
  }
  .el-footer{
    padding: 0;
  }
}
</style>
