<template>
  <div id="home">
    <!-- 走马灯开始 -->
    <div class="carousel_module">
      <el-carousel height="600px">
        <el-carousel-item v-for="carouselImage in carouselImages" :key="carouselImage">
          <img :src="carouselImage" alt="logo"/>
        </el-carousel-item>
      </el-carousel>
    </div>
    <!-- 走马灯结束 -->
    <!-- 公益健身场地推荐模块开始 -->
    <div class="spaces_module">
      <div class="spaces_module_title">
        <h3 class="spaces_module_left">公益健身场地推荐</h3>
        <div style="float: right">
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
          <el-button type="text" icon="el-icon-plus" @click="moreSelectsCode = !moreSelectsCode"></el-button>
          <el-button type="primary" icon="el-icon-search" native-type="submit" size="mini" @click="doSearchSpaces">搜索
          </el-button>
          <br/>
          <div v-show="moreSelectsCode">
            <el-select v-model="searchObj.selectedActivity" placeholder="请选择活动类型" size="mini" clearable>
              <el-option v-for="activity in activities" :key="activity.value" :label="activity.label"
                         :value="activity.value"></el-option>
            </el-select>
            <el-select v-model="searchObj.selectedPeople" placeholder="请选择活动人数" size="mini" clearable>
              <el-option v-for="people in peoples" :key="people.value" :label="people.label"
                         :value="people.value"></el-option>
            </el-select>
          </div>
        </div>
      </div>
      <div class="spaces_module_content">
        <div v-if="publicPlaces.total === 0" style="text-align: center;font-size: 30px;color: #f51726;padding-top: 120px;">
          无数据
        </div>
        <div class="content_card" v-for="publicPlace in publicPlaces.data" :key="publicPlace.id" v-else>
          <el-card :body-style="{ padding: '0px',textAlign:'center'}" v-if="currentPage === publicPlace.currentPage">
            <router-link :to="publicPlace.id">
              <img :src="publicPlace.imgUrl">
              <div style="padding: 5px;">
                <el-button type="text" style="color: #909399">{{publicPlace.titleName}}</el-button>
              </div>
            </router-link>
          </el-card>
        </div>
      </div>
      <div style="text-align: center">
        <el-pagination background layout="prev, pager, next" :page-size="4" :total="publicPlaces.total"
                       :current-page.sync="currentPage" @current-change="handleCurrentChange"></el-pagination>
      </div>
    </div>
    <!-- 公益健身场地推荐模块结束 -->
    <div style="border-bottom: solid 1px #909399"></div>
    <!--突出优点展示开始-->
    <div class="bottom_module">
      <div class="bottom_module_design">
        <el-row>
          <el-col :span="6" v-for="(designTag,index) in designTags" :key="designTag" :offset="index > 0 ? 2 : 0">
            <el-card
              :body-style="{ padding: '0px',width: '300px',height: '50px',backgroundColor: 'RGBA(64,158,255,0.5)'}">
              <img src="../../static/imgs/logo.png" alt="logo" style="width: 50px;height: 50px;float: left;">
              <div class="designTagFont"><span>{{designTag}}</span></div>
            </el-card>
          </el-col>
        </el-row>
      </div>
      <clt-partner></clt-partner>
    </div>
    <!--突出优点展示结束-->
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import types from '../store/types'
  import Partner from './common/Partner'

  export default {
    components: {
      'clt-partner': Partner
    },
    computed:{
      ...mapGetters([
        'cities',
        'schools',
        'spaces',
        'activities',
        'peoples',
        'publicPlaces',
        'searchObj'
      ])
    },
    created() {
      this.$store.commit(types.RESET_SEARCH_OBJ);
      this.$store.dispatch('getCities');
      this.$store.dispatch('getSchools');
      this.$store.dispatch('getSpaces');
      this.$store.dispatch('getActivities');
      this.$store.dispatch('getPeoples');
      this.$store.dispatch('getPublicPlaces');
    },
    data() {
      return {
        currentPage:1,
        moreSelectsCode: false,
        designTags: [
          '公益成本价', '服务贴心化', '个性化定制'
        ],
        carouselImages: [
          '../../static/imgs/home/home_01.png',
          '../../static/imgs/home/home_02.png',
          '../../static/imgs/home/home_03.png',
          '../../static/imgs/home/home_04.png',
          '../../static/imgs/home/home_05.png'
        ]
      };
    },
    methods: {
      doSearchSpaces() {
        this.$store.dispatch("getPublicPlaces",this.searchObj)
      },
      handleCurrentChange(currentPage){
        this.currentPage = currentPage
      }
    }
  };
</script>

<style lang="less" scoped>
  #home {
    width: 100%;
    .carousel_module {
      height: 600px;
      width: 100%;
    }
    .spaces_module {
      margin: 0 auto 50px auto;
      height: 400px;
      width: 80%;
      .spaces_module_title {
        height: 80px;
        width: 100%;
        margin-top: 35px;
        .spaces_module_left {
          font-size: 28px;
          float: left;
          margin-top: 8px;
          color: #606266;
        }
      }
      .spaces_module_content {
        height: 300px;
        width: 100%;
        img {
          width: 250px;
          height: 200px;
        }
        .content_card{
          float: left;
          margin: 0 8px;
        }
      }
    }
    .bottom_module {
      width: 80%;
      height: 350px;
      margin: 50px auto 0 auto;
      .bottom_module_design {
        margin-top: 50px;
        margin-left: 4%;
        width: 100%;
        .designTagFont {
          font-size: 20px;
          color: #fff;
          padding-left: 100px;
          padding-top: 14px;
        }
      }
    }
    .el-card{
      transition:all 0.5s;
    }
    .el-card:hover{
      box-shadow: 5px 5px 20px #909399;
      transform:translateY(-5px);
    }
  }
</style>
