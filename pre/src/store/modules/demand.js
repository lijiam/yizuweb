import types from '../types'
import axios from 'axios'

const state = {
  demandForm: {
    city: [],
    people: 0,
    space: '',
    activity: '',
    budget: 0,
    time: [],
    demand: '',
    name: '',
    phone: '',
    email: ''
  },
  isSuccess:false,
  submitMessage:''
};

const getters = {
  demandForm:state=>state.demandForm,
  isSuccess:state=>state.isSuccess,
  submitMessage:state=>state.submitMessage
};

const actions = {
  submitDemand({commit,state}){
    // console.log(state.demandForm);
    let form = state.demandForm;
    form.provinceId = form.city[0];
    form.cityId = form.city[1];
    form.startTime = form.time[0].toString();
    form.endTime = form.time[1].toString();
    delete form.city;
    delete form.time;
    return new Promise((resolve,reject)=>{
      axios.post('/api/school-wgy-yizuweb/demand/submitDemand',form).then(resp=>{
        if(resp.status === 200){
          commit(types.SUBMIT_DEMAND,resp.data);
          resolve(resp.data)
        }
      }).catch(err=>{
        console.log(err);
      });
    })
  }
};

const mutations = {
  [types.SUBMIT_DEMAND](state,data){
    state.isSuccess = true;
    state.submitMessage = data.message;
  },
  [types.RESET_DEMAND_FORM](state){
    state.demandForm = {
      city: [],
      people: 0,
      space: '',
      activity: '',
      budget: 0,
      time: [],
      demand: '',
      name: '',
      phone: '',
      email: ''
    }
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
