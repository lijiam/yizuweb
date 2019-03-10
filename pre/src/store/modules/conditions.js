import types from '../types'
import axios from 'axios'

const state = {
  cities: [
    // {
    //   value: "zhejiang",
    //   label: "浙江",
    //   children: [
    //     {
    //       value: "hangzhou",
    //       label: "杭州"
    //     }
    //   ]
    // }
  ],
  schools: [
    // {
    //   value:'111',
    //   label:'地方'
    // },
    // {
    //   value:'121',
    //   label:'地方'
    // }
  ],
  spaces: [
    // {
    //   value:'111',
    //   label:'税收'
    // }
  ],
  activities: [
    // {
    //   value:'111',
    //   label:'请求'
    // }
  ],
  peoples:[
    // {
    //   value:'12',
    //   label:'1-2'
    // }
  ],
  searchObj:{
    selectedSchool:'',
    selectedSpace:'',
    selectedCity:[],
    selectedActivity:'',
    selectedPeople:''
  }
};

const getters = {
  cities: state => state.cities,
  schools: state => state.schools,
  spaces: state => state.spaces,
  activities: state => state.activities,
  peoples: state => state.peoples,
  searchObj: state => state.searchObj
};

const actions = {
  getCities({commit}){
    // 这里是获取城市列表的接口
    axios.post('/api/school-wgy-yizuweb/getCities',{}).then(resp=>{
      // console.log("城市列表getCities:");
      // console.log(resp);
      if(resp.status === 200){
        commit(types.GET_CITIES,resp.data.data);
      }
    }).catch(err=>{
      console.log(err);
    })
  },
  getSchools({commit}){
    // 这里是获取大学的接口
    axios.post('/api/school-wgy-yizuweb/getSchools',{}).then(resp=>{
      // console.log("获取大学getSchools");
      // console.log(resp);
      if(resp.status === 200){
        commit(types.GET_SCHOOLS,resp.data.data);
      }
    }).catch(err=>{
      console.log(err);
    })
  },
  getSpaces({commit}){
    // 这里是获取场地类型
    axios.post('/api/school-wgy-yizuweb/getSpaces',{}).then(resp=>{
      // console.log("获取场地类型getSpaces:");
      // console.log(resp);
      if(resp.status === 200){
        commit(types.GET_SPACES,resp.data.data);
      }
    }).catch(err=>{
      console.log(err);
    })
  },
  getActivities({commit}){
    // 这里是获取活动类型
    axios.post('/api/school-wgy-yizuweb/getActivities',{}).then(resp=>{
      // console.log("获取活动类型getActivities:");
      // console.log(resp);
      if(resp.status === 200){
        commit(types.GET_ACTIVITIES,resp.data.data);
      }
    }).catch(err=>{
      console.log(err);
    })
  },
  getPeoples({commit}){
    // 获取活动人数
    axios.post('/api/school-wgy-yizuweb/getPeoples',{}).then(resp=>{
      // console.log("获取活动人数getPeoples:");
      // console.log(resp);
      if(resp.status === 200){
        commit(types.GET_PEOPLES,resp.data.data);
      }
    }).catch(err=>{
      console.log(err);
    })
  }
};

const mutations = {
  [types.GET_CITIES](state,data){
    state.cities = [];
    let province = "";
    let obj_tmp = {};
    for(let i = 0;i<data.length;i++){
      if(!(province === data[i].province)){
        if(i>0){
          state.cities.push(obj_tmp);
          obj_tmp = {};
        }
        province = data[i].province;
        obj_tmp.value = data[i].provinceId;
        obj_tmp.label = data[i].province;
        obj_tmp.children=[];
        obj_tmp.children.push({
          value:data[i].cityId,
          label:data[i].city
        });
      }else {
        obj_tmp.children.push({
          value:data[i].cityId,
          label:data[i].city
        });
      }
    }
  },
  [types.GET_SCHOOLS](state,data){
    state.schools = [];
    for(let i=0;i<data.length;i++){
      let school_tmp = {};
      school_tmp.value = data[i].schoolId;
      school_tmp.label = data[i].schoolName;
      state.schools.push(school_tmp);
    }
  },
  [types.GET_SPACES](state,data){
    state.spaces = [];
    for(let i=0;i<data.length;i++){
      let space_tmp = {};
      space_tmp.value = data[i].spaceId;
      space_tmp.label = data[i].spaceName;
      state.spaces.push(space_tmp);
    }
  },
  [types.GET_ACTIVITIES](state,data){
    state.activities = [];
    for(let i=0;i<data.length;i++){
      let activity_tmp = {};
      activity_tmp.value = data[i].activityId;
      activity_tmp.label = data[i].activityName;
      state.activities.push(activity_tmp);
    }
  },
  [types.GET_PEOPLES](state,data){
    state.peoples = [];
    for(let i=0;i<data.length;i++){
      let people_tmp = {};
      people_tmp.value = data[i].peopleId;
      people_tmp.label = data[i].peopleCount;
      state.peoples.push(people_tmp);
    }
  },
  [types.RESET_SEARCH_OBJ](state){
    state.searchObj['selectedSchool']='';
    state.searchObj['selectedSpace']='';
    state.searchObj['selectedCity']=[];
    state.searchObj['selectedActivity']='';
    state.searchObj['selectedPeople']='';
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
