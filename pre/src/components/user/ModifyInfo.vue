<template>
  <div id="modifyInfo">
    <div class="modify_info_title">
      完善信息
    </div>
    <div style="border-bottom: dashed 1px #e6e6e6;margin-left: 10px"></div>
    <div class="modify_info_content">
      <el-form ref="myInfo" :model="myInfo" label-width="100px">
        <el-form-item label="昵称">
          <el-input v-model="myInfo.userName" :value="myInfo.userName" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item label="姓名">
          <el-input v-model="myInfo.name" :value="myInfo.name" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item label="性别">
          <el-radio-group v-model="myInfo.sex">
            <el-radio label="男"></el-radio>
            <el-radio label="女"></el-radio>
          </el-radio-group>
        </el-form-item>
        <el-form-item label="手机号" required>
          <el-input v-model="myInfo.phone" :value="myInfo.phone" size="mini" disabled></el-input>
        </el-form-item>
        <el-form-item label="邮箱">
          <el-input v-model="myInfo.email" :value="myInfo.email" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item label="联系地址">
          <el-input v-model="myInfo.address" :value="myInfo.address" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item label="生日">
          <el-date-picker v-model="myInfo.birthday" type="date" placeholder="选择生日" size="mini"
                          value-format="yyyy-MM-dd"></el-date-picker>
        </el-form-item>
        <el-form-item label="职业">
          <el-input v-model="myInfo.work" :value="myInfo.work" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item label="单位地址">
          <el-input v-model="myInfo.workAddress" :value="myInfo.workAddress" size="mini" clearable></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="updateMyInfo" size="mini">提交</el-button>
          <el-button size="mini" @click="resetForm">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'

  export default {
    computed: {
      ...mapGetters([
        'myInfo'
      ])
    },
    created() {
      this.$store.dispatch('getMyInfo')
    },
    methods: {
      updateMyInfo() {
        this.$store.dispatch('updateMyInfo', this.myInfo).then((value => {
          alert('更新成功')
        })).catch(err => {
          alert('更新失败')
        })
      },
      resetForm() {
        this.$store.dispatch('getMyInfo')
      }
    }
  }
</script>

<style lang="less" scoped>
  #modifyInfo {
    .modify_info_title {
      font-size: 20px;
      color: #303133;
      padding: 20px;
      margin-left: 10px;
    }
    .modify_info_content {
      width: 80%;
      margin: 50px auto 0 auto;
      font-size: 16px;
      color: #606266;
    }
    .el-input {
      width: 400px;
    }
    .el-form-item{
      margin-bottom: 10px;
    }
  }
</style>
