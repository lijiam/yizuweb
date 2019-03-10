<template>
  <div id="spaceDetail">
    <div class="space_detail_top">
      <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/spaces' }">场地</el-breadcrumb-item>
        <el-breadcrumb-item>场地详情</el-breadcrumb-item>
      </el-breadcrumb>
    </div>
    <div class="space_detail_title">
      <img :src="spaceDetail.spaceImg" alt="场地图" class="title_left">
      <div class="title_right">
        <div style="font-size: 26px">{{spaceDetail.spaceName}}</div>
        <el-popover ref="popover" placement="top-start" title="益租卡使用说明" width="450"
                    trigger="hover">
          <div v-for="item in yizuka" :key="item">
            <p>{{item}}</p>
          </div>
        </el-popover>
        <el-button type="text" v-popover:popover>"益租"卡使用说明</el-button>

        <div class="right_name">
          场地价 <span class="right_content" style="color: #f5120f;font-size: 30px;">{{spaceDetail.price[0]}}</span>
        </div>
        <div class="right_name">
          场地类型 <span class="right_content">{{spaceDetail.spaceType}}</span>
        </div>
        <div class="right_name">
          场地大小 <span class="right_content">{{spaceDetail.spaceArea}}</span>
        </div>
        <div class="right_name">
          活动类型
          <el-tooltip effect="dark" :content="spaceDetail.activityType" v-if="spaceDetail.activityType.length>=20"
                      placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.activityType.substring(0,20)+'...'}}</el-button>
          </el-tooltip>
          <el-tooltip effect="dark" :content="spaceDetail.activityType" v-else placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.activityType}}</el-button>
          </el-tooltip>
        </div>
        <div class="right_name">
          场地设施
          <el-tooltip effect="dark" :content="spaceDetail.spaceFacilities" v-if="spaceDetail.spaceFacilities.length>=20"
                      placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.spaceFacilities.substring(0,20)+'...'}}</el-button>
          </el-tooltip>
          <el-tooltip effect="dark" :content="spaceDetail.spaceFacilities" v-else placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.spaceFacilities}}</el-button>
          </el-tooltip>
        </div>
        <div class="right_name">
          场地地址
          <el-tooltip effect="dark" :content="spaceDetail.address" v-if="spaceDetail.address.length>=20"
                      placement="bottom-start">
            <el-button type="text" class="right_content" @click="openBaiduMap">{{spaceDetail.address.substring(0,20)+'...'}}</el-button>
          </el-tooltip>
          <el-tooltip effect="dark" :content="spaceDetail.address" v-else placement="bottom-start">
            <el-button type="text" class="right_content" @click="openBaiduMap">{{spaceDetail.address}}</el-button>
          </el-tooltip>
        </div>
        <div class="right_name">
          场地路线
          <el-tooltip effect="dark" :content="spaceDetail.route" v-if="spaceDetail.route.length>=20"
                      placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.route.substring(0,20)+'...'}}</el-button>
          </el-tooltip>
          <el-tooltip effect="dark" :content="spaceDetail.route" v-else placement="bottom-start">
            <el-button type="text" class="right_content">{{spaceDetail.route}}</el-button>
          </el-tooltip>
        </div>
        <div class="right_name">
          请选择开放时间
          <div style="margin-top: 15px">
            <el-checkbox-group v-model="spaceDetail.timeCheckList">
              <el-checkbox label="上午(5:30-12:00)" :disabled="false"></el-checkbox>
              <el-checkbox label="下午(12:00-18:00)" :disabled="false"></el-checkbox>
              <el-checkbox label="晚上(18:00-21:30)" :disabled="false"></el-checkbox>
            </el-checkbox-group>
          </div>
        </div>
        <div style="margin-left: 10px;margin-top: 10px">
          <router-link :to="{name:'Demand1',params:{space_name:spaceDetail.spaceName}}">
            <el-button type="primary" icon="el-icon-tickets" size="mini">预 定</el-button>
          </router-link>
        </div>
      </div>
    </div>
    <div class="space_detail_content">
      <el-tabs type="border-card">
        <el-tab-pane label="场地介绍">
          <div class="space_introduce">
            {{spaceDetail.spaceIntroduce}}
          </div>
        </el-tab-pane>
        <el-tab-pane label="开放时间">
          <clt-timeTable></clt-timeTable>
        </el-tab-pane>
      </el-tabs>
    </div>
    <clt-partner></clt-partner>
  </div>
</template>

<script>
  import Partner from './common/Partner'
  import TimeTable from './TimeTable'
  import {mapGetters} from 'vuex'

  export default {
    components: {
      'clt-partner': Partner,
      'clt-timeTable': TimeTable
    },
    computed: {
      ...mapGetters([
        'spaceDetail',
        'headerUrl'
      ])
    },
    data() {
      return {
        space_id:this.$route.params.space_id,
        yizuka: ['1、“益租”卡通过本网站注册发放，开通益租卡的用户需进行实名认证。',
          '2、实名认证：可在注册之后，勾选“益租卡”实名认证，进入实名认证页面进行认证；可在第一次使用“益租卡”的高校携带身份证进行实名认证；实名认证后会生成电子卡。',
          '3、“益租卡”按照以年为单位进行收费，每张卡一年300元。账户为Email/手机号，密码自定，凭借电子卡进入服务区域。',
          '4、“益租卡”使用于与本协会有合作的高校体育场、体育馆、图书馆、公开课、图书馆。（最终解释权归“益租”所有。）']
      }
    },
    created() {
      this.$store.dispatch('getSpaceDetail', this.$route.params.space_id)
    },
    methods:{
      openBaiduMap(){
        window.open("https://map.baidu.com/")
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
    }
  }
</script>

<style lang="less" scoped>
  #spaceDetail {
    width: 80%;
    margin: 0 auto;
    .space_detail_top {
      margin: 20px auto 20px 20px;
    }
    .space_detail_title {
      width: 90%;
      height: 520px;
      margin: 0 auto;
      background-color: #fff;
      box-shadow: 0 0 5px #909399;
      font-size: 14px;
      .title_left {
        width: 400px;
        height: 400px;
        margin: 15px;
        border-radius: 5px;
        float: left;
      }
      .title_right {
        margin-top: 20px;
        margin-left: 5px;
        float: left;
        .right_name {
          padding: 10px;
          color: #909399;
        }
        .right_content {
          margin-left: 20px;
          color: #606266;
          font-size: 18px;
          font-weight: normal;
          padding: 0;
        }
      }
    }
    .space_detail_content {
      width: 90%;
      /*height: 800px;*/
      margin: 30px auto 0 auto;
      background-color: #fff;
      box-shadow: 0 0 5px #909399;
      font-size: 14px;
      .space_introduce {
        width: 80%;
        margin: 0 auto;
        text-indent: 2em;
        line-height: 25px;
        font-size: 18px;
        color: #909399;
      }
    }
    .el-breadcrumb {
      font-size: 16px;
    }
  }
</style>
