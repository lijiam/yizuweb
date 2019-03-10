import types from '../types'
import axios from 'axios'

const state = {
  loginShow: true,
  registerShow: false,
  passwordShow: false,
  loginForm: {
    phone: '',
    password: '',
    isLoginSuccess: false,
    loginInfo: '',
    userTag: ''
  },
  registerForm: {
    phone: '',
    iCode: '',
    password: '',
    passwordCheck: '',
    isRegisterSuccess: false,
    registerInfo: ''
  },
  passwordForm: {
    phone: '',
    iCode: '',//输入的验证码
    password: '',
    passwordCheck: '',
    isPasswordSuccess: false,
    passwordInfo: ''
  },
  phone: {
    phoneCode: '',//手机收到的验证码
    phoneCodeInfo: '',//手机验证码收取提示信息的返回
  },
  // myInfo:{
  //   myInfoId:'000001',
  //   username:'我的昵称',
  //   phone:'17826808951',
  //   email:'58348938729@qq.com',
  //   address:'浙江省杭州市西湖区浙江科技学院',
  //   name:'李佳明',
  //   sex:'男',
  //   birthday:'2018年02月03号',
  //   work:'学生',
  //   workAddress:'浙江省杭州市西湖区浙江科技学院'
  // },
  userTags: {
    loginRegisterShow: true,
    userCenterShow: false,
    backCenterShow: false,
    exitShow: false
  },
  myInfo: {
    userName: '',
    phone: '',
    email: '',
    address: '',
    name: '',
    sex: '',
    birthday: '',
    work: '',
    workAddress: ''
  },
  myDemandData: [
    // {
    //   id:'001'
    //   insertDate:'2016-05-03',
    //   name:'李四是',
    //   phone:'18920964238',
    //   city:'杭州',
    //   spaceType:'篮球场',
    //   activityType:'打篮球',
    //   peopleCount:'20',
    //   budget:'2020',
    //   startTime:'2018-02-02 12:00:00',
    //   endTime:'2018-02-03 12:00:00'
    // }
  ]
};

const getters = {
  loginShow: state => state.loginShow,
  registerShow: state => state.registerShow,
  passwordShow: state => state.passwordShow,
  loginForm: state => state.loginForm,
  registerForm: state => state.registerForm,
  passwordForm: state => state.passwordForm,
  phone: state => state.phone,
  userTags: state => state.userTags,
  myInfo: state => state.myInfo,
  myDemandData: state => state.myDemandData
};

const actions = {
  toLogin({commit}, data) {
    return new Promise((resolve, reject) => {
      axios.post('/api/school-wgy-yizuweb/user/toLogin', data).then(resp => {
        if (resp.status === 200) {
          commit(types.TO_LOGIN, resp.data);
          resolve(resp.data);
        }
      }).catch(err => {
        console.log(err);
      });
    })
  },
  toRegister({commit}, data) {
    return new Promise((resolve, reject) => {
      axios.post('/api/school-wgy-yizuweb/user/toRegister', data).then(resp => {
        if (resp.status === 200) {
          commit(types.TO_REGISTER, resp.data);
          resolve(resp.data);
        }
      }).catch(err => {
        console.log(err);
      })
    })
  },
  changePassword({commit}, data) {
    return new Promise((resolve, reject) => {
      axios.post('/api/school-wgy-yizuweb/user/changePassword', data).then(resp => {
        if (resp.status === 200) {
          commit(types.CHANGE_PASSWORD, resp.data);
          resolve(resp.data);
        }
      }).catch(err => {
        console.log(err);
      })
    })
  },
  getPhoneCode({commit}, data) {
    axios.post('/api/school-wgy-yizuweb/user/getPhoneCode/' + data).then(resp => {
      // console.log("获取手机验证码：");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.GET_PHONE_CODE, resp.data)
      }
    }).catch(err => {
      console.log(err);
    })
  },
  changeToLogin({commit}) {
    commit(types.CHANGE_TO_LOGIN)
  },
  changeToRegister({commit}) {
    commit(types.CHANGE_TO_REGISTER)
  },
  changeToPassword({commit}) {
    commit(types.CHANGE_TO_PASSWORD)
  },
  getMyInfo({commit, state}) {
    if (state.loginForm.isLoginSuccess) {
      axios.post('/api/school-wgy-yizuweb/user/getMyInfo/' + state.loginForm.phone).then(resp => {
        if (resp.status === 200) {
          commit(types.GET_MY_INFO, resp.data.data)
        }
      }).catch(err => {
        console.log(err);
      })
    }
  },
  updateMyInfo({commit, state}, data) {
    return new Promise((resolve, reject) => {
      axios.post('/api/school-wgy-yizuweb/user/updateMyInfo', data).then(resp => {
        if (resp.status === 200) {
          commit(types.UPDATE_MY_INFO, resp.data.data);
          resolve(resp.data.data);
        }
      }).catch(err => {
        console.log(err);
      })
    })
  },
  getMyDemand({commit}, data) {
    axios.post('/api/school-wgy-yizuweb/user/userCenter/getMyDemand/' + data).then(resp => {
      if (resp.status === 200) {
        commit(types.GET_MY_DEMAND, resp.data);
      }
    }).catch(err => {
      console.log(err)
    })
  },
  deleteMyDemand({commit},data){
    return new Promise((resolve, reject)=>{
      axios.post('/api/school-wgy-yizuweb/user/userCenter/deleteMyDemand/'+data).then(resp=>{
        if (resp.status === 200) {
          resolve(resp.data);
        }
      }).catch(err => {
        console.log(err)
      })
    })
  }
};

const mutations = {
  [types.TO_LOGIN](state, data) {
    if (data.code === -1) {
      state.loginForm.loginInfo = data.data;
      state.loginForm.isLoginSuccess = false;
    } else if (data.code === 0) {
      state.loginForm.loginInfo = '登录成功';
      state.loginForm.isLoginSuccess = true;
      state.loginForm.userTag = data.data.userTag;
    }
  },
  [types.TO_REGISTER](state, data) {
    if (data.code === -1) {
      state.registerForm.registerInfo = data.data;
      state.registerForm.isRegisterSuccess = false;
    } else if (data.code === 0) {
      state.registerForm.registerInfo = data.data;
      state.registerForm.isRegisterSuccess = true;
    }
  },
  [types.CHANGE_PASSWORD](state, data) {
    if (data.code === -1) {
      state.passwordForm.passwordInfo = data.data;
      state.passwordForm.isPasswordSuccess = false;
    } else if (data.code === 0) {
      state.passwordForm.passwordInfo = data.data;
      state.passwordForm.isPasswordSuccess = true;
    }
  },
  [types.GET_PHONE_CODE](state, data) {
    state.phone.phoneCode = data.phoneCode;
    state.phone.phoneCodeInfo = data.phoneCodeInfo;
  },
  [types.CHANGE_TO_LOGIN](state) {
    state.loginShow = true;
    state.registerShow = false;
    state.passwordShow = false;
  },
  [types.CHANGE_TO_REGISTER](state) {
    state.loginShow = false;
    state.registerShow = true;
    state.passwordShow = false;
  },
  [types.CHANGE_TO_PASSWORD](state) {
    state.loginShow = false;
    state.registerShow = false;
    state.passwordShow = true;
  },
  [types.GET_MY_INFO](state, data) {
    state.myInfo.userName = data.userName;
    state.myInfo.phone = data.phone;
    state.myInfo.email = data.email;
    state.myInfo.address = data.address;
    state.myInfo.name = data.name;
    state.myInfo.sex = data.sex;
    state.myInfo.birthday = data.birthday;
    state.myInfo.work = data.work;
    state.myInfo.workAddress = data.workAddress;
  },
  [types.RESET_LOGIN_FORM](state) {
    state.loginForm = {
      phone: '',
      password: '',
      isLoginSuccess: false,
      loginInfo: '',
      userTag: '',
      userId: ''
    }
  },
  [types.RESET_PASSWORD_FORM](state) {
    state.passwordForm = {
      phone: '',
      iCode: '',//输入的验证码
      password: '',
      passwordCheck: '',
      isPasswordSuccess: false,
      passwordInfo: ''
    }
  },
  [types.RESET_REGISTER_FORM](state) {
    state.registerForm = {
      phone: '',
      iCode: '',
      password: '',
      passwordCheck: '',
      isRegisterSuccess: false,
      registerInfo: ''
    }
  },
  [types.RESET_USER_COMMON_SHOW](state) {
    state.loginShow = true;
    state.registerShow = false;
    state.passwordShow = false
  },
  [types.UPDATE_MY_INFO](state, data) {
    state.myInfo.userName = data.userName;
    state.myInfo.email = data.email;
    state.myInfo.address = data.address;
    state.myInfo.name = data.name;
    state.myInfo.sex = data.sex;
    state.myInfo.birthday = data.birthday;
    state.myInfo.work = data.work;
    state.myInfo.workAddress = data.workAddress;
  },
  [types.GET_MY_DEMAND](state, data) {
    state.myDemandData = [];
    if(data.code === 0){
      for (let i = 0; i < data.data.length; i++) {
        let tmp_demand = {};
        tmp_demand.id = data.data[i].id;
        tmp_demand.insertDate = data.data[i].insertTime;
        tmp_demand.name = data.data[i].name;
        tmp_demand.phone = data.data[i].phone;
        tmp_demand.city = data.data[i].city;
        tmp_demand.spaceType = data.data[i].space;
        tmp_demand.activityType = data.data[i].activity;
        tmp_demand.peopleCount = data.data[i].people;
        tmp_demand.budget = data.data[i].budget;
        tmp_demand.startTime = data.data[i].startTime;
        tmp_demand.endTime = data.data[i].endTime;
        state.myDemandData.push(tmp_demand);
      }
    }else if(data.code === -1){
      state.myDemandData = [];
    }
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
