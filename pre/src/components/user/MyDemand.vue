<template>
  <div id="myDemand">
    <div class="my_demand_title">
      我的需求
    </div>
    <div style="border-bottom: dashed 1px #e6e6e6;margin-left: 10px"></div>
    <div class="my_demand_content">
      <el-table :data="myDemandData" style="width: 100%" max-height="500">
        <el-table-column fixed prop="insertDate" label="登记日期" width="200"></el-table-column>
        <el-table-column prop="name" label="姓名" width="80"></el-table-column>
        <el-table-column prop="phone" label="手机号" width="120"></el-table-column>
        <el-table-column prop="city" label="城市" width="80"></el-table-column>
        <el-table-column prop="spaceType" label="场地类型" width="120"></el-table-column>
        <el-table-column prop="activityType" label="活动类型" width="120"></el-table-column>
        <el-table-column prop="peopleCount" label="活动人数" width="120"></el-table-column>
        <el-table-column prop="budget" label="预算" width="120"></el-table-column>
        <el-table-column prop="startTime" label="开始时间" width="200"></el-table-column>
        <el-table-column prop="endTime" label="结束时间" width="200"></el-table-column>
        <el-table-column fixed="right" label="操作" width="100">
          <template slot-scope="scope">
            <el-button @click.native.prevent="deleteRow(scope.$index, myDemandData)" type="text" size="small">
              撤销登记
            </el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    methods: {
      deleteRow(index, rows) {
        if(confirm('确认要撤销登记吗？')){
          this.$store.dispatch('deleteMyDemand',rows[index].id).then((value => {
            // console.log('这是撤销登记的value值');
            // console.log(value);
            if(value.code === 0){
              rows.splice(index, 1);
              alert(value.data)
            }else if(value.code === -1){
              alert(value.data)
            }
          }))
        }else {
          return false;
        }
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
      }
    },
    data() {
      return {
        phone:this.getCookie('phone')
      }
    },
    computed:{
      ...mapGetters([
        'myDemandData'
      ])
    },
    created(){
      this.$store.dispatch('getMyDemand',this.phone)
    }
  }
</script>

<style lang="less" scoped>
  #myDemand {
    .my_demand_title {
      font-size: 20px;
      color: #303133;
      padding: 20px;
      margin-left: 10px;
    }
    .my_demand_content {
      margin-left: 10px;
    }
  }
</style>
