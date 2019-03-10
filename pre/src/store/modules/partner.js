import types from '../types'
import axios from 'axios'

const state = {
  partners: [
    {
      name: '阿里巴巴公益基金会',
      value: '../../static/imgs/sponsors/sponsor_05.jpg',
      url: 'http://www.alijijinhui.org'
    },
    {
      name: '创行',
      value: '../../static/imgs/sponsors/sponsor_04.jpg',
      url: 'http://www.enactuschina.cn'
    },
    {
      name: '开心网',
      value: '../../static/imgs/sponsors/sponsor_03.jpg',
      url: 'http://www.kaixin001.com'
    },
    {
      name: '中国大学生体育协会',
      value: '../../static/imgs/sponsors/sponsor_01.jpg',
      url: 'http://www.sports.edu.cn'
    },
    {
      name: '中国教育后勤协会',
      value: '../../static/imgs/sponsors/sponsor_02.jpg',
      url: 'http://www.chinacacm.org'
    }
  ]
};

const getters = {
  partners:state=>state.partners
};

const actions = {

};

const mutations = {

};

export default {
  state,
  getters,
  actions,
  mutations
}
