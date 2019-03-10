import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

import getters from './getters'
import actions from './actions'
import header from './modules/header'
import footer from './modules/footer'
import user from './modules/user'
import partner from './modules/partner'
import conditions from './modules/conditions'
import demand from './modules/demand'
import publicPlaces from './modules/publicPlaces'
import spaces from './modules/spaces'
import cases from './modules/cases'

export default new Vuex.Store({
  getters,
  actions,
  modules:{
    header,
    footer,
    user,
    partner,
    conditions,
    demand,
    publicPlaces,
    spaces,
    cases
  }
})
