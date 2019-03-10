<template>
  <div id="timeTable">
    <div style="width: 100%;height: 50px;">
      请选择日期：<el-date-picker v-model="date" align="right" type="date" placeholder="选择日期"
                            :picker-options="pickerOptions" size="mini">
    </el-date-picker>
    </div>
    <div>
      <el-table :data="timeData" border style="width: 100%;text-align: center" stripe
                :header-cell-style="{textAlign:'center'}">
        <el-table-column prop="day" label="" width="150"></el-table-column>
        <el-table-column prop="monday" label="星期一">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.monday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="tuesday" label="星期二">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.tuesday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="wednesday" label="星期三">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.wednesday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="thursday" label="星期四">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.thursday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="friday" label="星期五">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.friday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="saturday" label="星期六">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.saturday"></i>
          </template>
        </el-table-column>
        <el-table-column prop="sunday" label="星期日">
          <template slot-scope="scope">
            <i class="el-icon-check" v-show="scope.row.sunday"></i>
          </template>
        </el-table-column>
      </el-table>
    </div>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        date:'',
        pickerOptions: {
          shortcuts: [{
            text: '今天',
            onClick(picker) {
              picker.$emit('pick', new Date());
            }
          }, {
            text: '明天',
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() + 3600 * 1000 * 24);
              picker.$emit('pick', date);
            }
          }, {
            text: '后天',
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() + 3600 * 1000 * 24 * 2);
              picker.$emit('pick', date);
            }
          }, {
            text: '一周后',
            onClick(picker) {
              const date = new Date();
              date.setTime(date.getTime() + 3600 * 1000 * 24 * 7);
              picker.$emit('pick', date);
            }
          }]
        },
        timeData: [{
          day: '上午(5:30-12:00)',
          monday: true,
          tuesday: true,
          wednesday: true,
          thursday: true,
          friday: true,
          saturday: true,
          sunday: true
        }, {
          day: '下午(12:00-18:00)',
          monday: true,
          tuesday: true,
          wednesday: true,
          thursday: true,
          friday: true,
          saturday: true,
          sunday: true
        }, {
          day: '晚上(18:00-21:30)',
          monday: true,
          tuesday: true,
          wednesday: true,
          thursday: true,
          friday: true,
          saturday: true,
          sunday: true
        }]
      }
    }
  }
</script>

<style lang="less" scoped>
  #timeTable{
    .el-table .cell{
      text-align: center;
    }
  }
</style>
