<template>
  <div id="spaces">
    <div class="spaces_top">
      <el-cascader :options="cities" v-model="searchObj.selectedCity" clearable
                   expand-trigger="hover" size="mini" placeholder="请选择所在城市">
      </el-cascader>
      <el-select v-model="searchObj.selectedSchool" placeholder="请选择所在大学" size="mini" clearable>
        <el-option v-for="school in schools" :key="school.value" :label="school.label"
                   :value="school.value"></el-option>
      </el-select>
      <el-select v-model="searchObj.selectedSpace" placeholder="请选择场地类型" size="mini" clearable>
        <el-option v-for="space in spaces" :key="space.value" :label="space.label"
                   :value="space.value"></el-option>
      </el-select>
      <el-select v-model="searchObj.selectedActivity" placeholder="请选择活动类型" size="mini" clearable>
        <el-option v-for="activity in activities" :key="activity.value" :label="activity.label"
                   :value="activity.value"></el-option>
      </el-select>
      <el-select v-model="searchObj.selectedPeople" placeholder="请选择活动人数" size="mini" clearable>
        <el-option v-for="people in peoples" :key="people.value" :label="people.label"
                   :value="people.value"></el-option>
      </el-select>
      <el-button type="primary" icon="el-icon-search" native-type="submit" size="mini" @click="doSearch">搜索
      </el-button>
    </div>
    <div class="spaces_middle">
        <div v-if="spacesArr.total === 0" style="text-align: center;font-size: 30px;color: #f51726;padding-top: 200px;">
          无数据
        </div>
        <div style="float: left;" v-for="space in spacesArr.data" :key="space.id" v-else>
          <el-card :body-style="{ padding: '0px',textAlign:'center'}" v-if="currentPage === space.currentPage">
            <router-link :to="{ name:'SpaceDetail',params: { space_id: space.id}}">
              <img :src="space.spaceImg" style="width: 250px;height: 180px;cursor: pointer">
              <div style="padding: 5px;">
                <el-button type="text" style="color: #909399">{{space.spaceName}}</el-button>
              </div>
            </router-link>
          </el-card>
        </div>
    </div>
    <div style="text-align: center">
      <el-pagination background @current-change="handleCurrentChange"
                     :current-page.sync="currentPage" :page-size="8" layout="prev, pager, next"
                     :total="spacesArr.total">
      </el-pagination>
    </div>
      <clt-partner></clt-partner>
  </div>
</template>

<script>
  import Partner from './common/Partner'
  import types from '../store/types'
  import {mapGetters} from 'vuex'

  export default {
    data() {
      return {
        currentPage: 1
      }
    },
    components: {
      'clt-partner': Partner
    },
    computed: {
      ...mapGetters([
        'cities',
        'schools',
        'spaces',
        'activities',
        'peoples',
        'searchObj',
        'spacesArr'
      ])
    },
    created() {
      this.$store.commit(types.RESET_SEARCH_OBJ);
      this.$store.dispatch('doSearchSpaces')
    },
    methods: {
      doSearch() {
        this.$store.dispatch('doSearchSpaces',this.searchObj)
      },
      handleCurrentChange(val) {
        this.currentPage = val
      }
    }
  }
</script>

<style lang="less" scoped>
  #spaces {
    width: 80%;
    margin: 30px auto;
    .spaces_top {
      width: 100%;
      margin: 40px auto;
      text-align: center;
    }
    .spaces_middle {
      height: 530px;
    }
    .el-col-5 {
      width: 21.83333%;
      margin-bottom: 40px;
    }
    .el-card {
      transition: all 0.5s;
      margin: 0 8px 20px 8px;
    }
    .el-card:hover {
      box-shadow: 5px 5px 20px #909399;
      transform: translateY(-5px);
    }
  }
</style>
