import Vue from 'vue'
import Router from 'vue-router'
import Home from '../components/Home'
import Spaces from '../components/Spaces'
import Demand from '../components/Demand'
import Cases from '../components/Cases'
import AboutUs from '../components/AboutUs'
import UserCommon from '../components/user/UserCommon'
import CaseDetails from '../components/CaseDetails'
import SpaceDetail from '../components/SpaceDetail'
import UserCenter from '../components/user/UserCenter'
import ModifyInfo from '../components/user/ModifyInfo'
import MyInfo from '../components/user/MyInfo'
import MyDemand from '../components/user/MyDemand'
import BackCenter from '../components/user/BackCenter'

Vue.use(Router);

export default new Router({
  linkActiveClass:'active',
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/spaces',
      name: 'Spaces',
      component: Spaces
    },
    {
      path: '/spaces/detail/:space_id',
      name: 'SpaceDetail',
      component: SpaceDetail
    },
    {
      path: '/demand',
      name: 'Demand',
      component: Demand
    },
    {
      path: '/demand/:space_name',
      name: 'Demand1',
      component: Demand
    },
    {
      path: '/cases',
      name: 'Cases',
      component: Cases
    },
    {
      path: '/cases/detail/:case_id',
      name: 'CaseDetails',
      component: CaseDetails
    },
    {
      path: '/aboutUs',
      name: 'AboutUs',
      component: AboutUs
    },
    {
      path: '/user/userCommon',
      name: 'UserCommon',
      component: UserCommon
    },
    {
      path: '/user/userCenter/:phone',
      name: 'UserCenter',
      component: UserCenter,
      children:[
        {
          path: '/user/userCenter/:phone/modifyInfo',
          name: 'ModifyInfo',
          component: ModifyInfo
        },
        {
          path: '/user/userCenter/:phone/myInfo',
          name: 'MyInfo',
          component: MyInfo
        },
        {
          path: '/user/userCenter/:phone/myDemand',
          name: 'MyDemand',
          component: MyDemand
        }
      ]
    },
    {
      path: '/user/backCenter/:phone',
      name: 'BackCenter',
      component: BackCenter
    }
  ],
  mode:'history'
})
