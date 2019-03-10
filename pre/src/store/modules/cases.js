import types from '../types'
import axios from 'axios'

const state = {
  casesList: [
    // {
    //   caseId:'001',
    //   caseImg:'../../static/imgs/cases/case01_01.png',
    //   caseTitle:'2018"青年之家"举办会议',
    //   caseIntroduce:'（最多190个字）2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
    // },
    // {
    //   caseId:'002',
    //   caseImg:'../../static/imgs/cases/case01_01.png',
    //   caseTitle:'2018"青年之家"举办会议',
    //   caseIntroduce:'（最多190个字）2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
    // },
    // {
    //   caseId:'003',
    //   caseImg:'../../static/imgs/cases/case01_01.png',
    //   caseTitle:'2018"青年之家"举办会议',
    //   caseIntroduce:'（最多190个字）2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
    // },
    // {
    //   caseId:'004',
    //   caseImg:'../../static/imgs/cases/case01_01.png',
    //   caseTitle:'2018"青年之家"举办会议',
    //   caseIntroduce:'（最多190个字）2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
    // },
    // {
    //   caseId:'005',
    //   caseImg:'../../static/imgs/cases/case01_01.png',
    //   caseTitle:'2018"青年之家"举办会议',
    //   caseIntroduce:'（最多190个字）2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
    // }
  ],
  // caseDetail:{
  //   caseId:'001',
  //   imgUrls:['../../static/imgs/cases/case01_01.png','../../static/imgs/cases/case01_02.png'],
  //   caseTitle:'2018"青年之家"举办会议',
  //   caseContent:'2018年，“青年之家”会议室里，几只校外技术创业团队在此进行项目讨论。益租负责场地的灯光、桌椅等设备服务，并由益租校园大使带领该团队至会议场地，一路上为其介绍高校环境，讲解高校文化。周到而细致的服务保证了活动的顺利进行。'
  // },
  caseDetail: {
    caseId: '',
    imgUrls: [],
    caseTitle: '',
    caseContent: ''
  }
};

const getters = {
  casesList: state => state.casesList,
  caseDetail: state => state.caseDetail
};

const actions = {
  getCasesList({commit}) {
    //获取案例精选的接口
    axios.post('/api/school-wgy-yizuweb/cases/getCasesList', {}).then(resp => {
      // console.log("这是获取案例精选列表的数据:");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.GET_CASES_LIST, resp.data.data);
      }
    }).catch(err => {
      console.log(err);
    })
  },
  getCaseDetail({commit}, data) {
    //获取案例精选详情界面的接口
    axios.post('/api/school-wgy-yizuweb/cases/getCaseDetail/' + data, {}).then(resp => {
      // console.log("这是获取案例精选详情信息的数据:");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.GET_CASE_DETAIL, resp.data.data);
      }
    }).catch(err => {
      console.log(err);
    })
  }
};

const mutations = {
  [types.GET_CASES_LIST](state, data) {
    state.casesList = [];
    for (let i = 0; i < data.length; i++) {
      let case_tmp = {};
      case_tmp.caseId = data[i].caseId;
      case_tmp.caseImg = data[i].imgUrls.split(",")[0];
      case_tmp.caseTitle = data[i].caseTitle;
      case_tmp.caseIntroduce = data[i].caseIntroduce;
      state.casesList.push(case_tmp);
    }
  },
  [types.GET_CASE_DETAIL](state, data) {
    state.caseDetail['caseId'] = data.caseId;
    state.caseDetail['imgUrls'] = data.imgUrls.split(",");
    state.caseDetail['caseTitle'] = data.caseTitle;
    state.caseDetail['caseContent'] = data.caseContent;
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
