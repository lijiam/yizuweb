import types from '../types'
import axios from 'axios'

const state = {
  headerUrl:{
    activeIndex:'/'
  }
};

const getters = {
  headerUrl:state=>state.headerUrl
};

const actions = {};

const mutations = {
  [types.SET_ACTIVE_INDEX](state,url){
    state.headerUrl.activeIndex = url;
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
