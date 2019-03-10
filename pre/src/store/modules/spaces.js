import types from '../types'
import axios from 'axios'

const state = {
  spacesArr: {
    total: 0,
    data: [
      // {
      //   id: '001',
      //   spaceImg: '../../static/imgs/spaces/public_space_01.jpg',
      //   spaceName: '中国计量大学下沙校区天健体育馆',
      //   currentPage: 1
      // },
      // {
      //   id: '002',
      //   spaceImg: '../../static/imgs/spaces/public_space_02.jpg',
      //   spaceName: '浙江理工大学下沙校区篮球场',
      //   currentPage: 1
      // },
      // {
      //   id: '003',
      //   spaceImg: '../../static/imgs/spaces/public_space_03.jpg',
      //   spaceName: '浙江理工大学下沙校区田径场',
      //   currentPage: 1
      // },
      // {
      //   id: '004',
      //   spaceImg: '../../static/imgs/spaces/public_space_04.jpg',
      //   spaceName: '浙江理工大学下沙校区体育馆',
      //   currentPage: 1
      // },
      // {
      //   id: '005',
      //   spaceImg: '../../static/imgs/spaces/public_space_05.jpg',
      //   spaceName: '浙江理工大学下沙校区万人体育场',
      //   currentPage: 1
      // },
      // {
      //   id: '006',
      //   spaceImg: '../../static/imgs/spaces/public_space_06.jpg',
      //   spaceName: '浙江大学紫金港校区体育馆',
      //   currentPage: 1
      // },
      // {
      //   id: '007',
      //   spaceImg: '../../static/imgs/spaces/public_space_07.jpg',
      //   spaceName: '杭州科技职业技术学院田径场',
      //   currentPage: 1
      // },
      // {
      //   id: '008',
      //   spaceImg: '../../static/imgs/spaces/public_space_08.jpg',
      //   spaceName: '杭州科技职业技术学院体育馆',
      //   currentPage: 1
      // },
      // {
      //   id: '009',
      //   spaceImg: '../../static/imgs/spaces/public_space_09.png',
      //   spaceName: '杭州科技职业技术学院体育馆',
      //   currentPage: 2
      // }
    ]
  },
  // spaceDetail: {
  //   spaceName:'中国计量大学下沙校区天健体育馆',
  //   spaceImg:'../../static/imgs/spaces/public_space_02.png',
  //   price: ['￥100.00', '￥200.00', '￥300.00', '￥400.00'],
  //   timeTag: ['上午(5:30-12:00)', '下午(12:00-18:00)', '晚上(18:00-21:30)'],
  //   spaceType: '会议室',
  //   spaceArea: '50m²',
  //   activityType: '会议、研讨、座谈会',
  //   spaceFacilities: '灯光、电脑、显示屏',
  //   people: '1000人',
  //   address: '浙江。。。。。。。',
  //   route: 'B支7',
  //   timeCheckList: ['上午(5:30-12:00)'],
  //   spaceIntroduce:'杭州电子科技大学是一所电子信息特色突出，经管学科优势明显，工、理、经、管、文、法、教、艺等多学科相互渗透的教学研究型大学。2000年被浙江省列为重点建设的教学研究型大学。2007年12月25日，学校成为浙江省与国防科工委共建高校，是浙江省唯一一所与国防科工委共建的高校，也是国防科工委共建高校中第一所信息技术类高校。2011年，浙江省与国防科技工业局签署协议，明确在“十二五”期间继续共建杭州电子科技大学。学校建有下沙、文一、东岳和下沙东四个校区，占地面积2000余亩，现有普通全日制在校生28000余人，教职员工2200余人。\n' +
  //   '\n' +
  //   '杭州电子科技大学下沙校区东篮球场共有标准篮球场地9片，适合举办篮球比赛和商业路演。'
  // },
  spaceDetail: {
    spaceName: '',
    spaceImg: '',
    price: [],
    spaceType: '',
    spaceArea: '',
    activityType: '',
    spaceFacilities: '',
    people: '',
    address: '',
    route: '',
    timeCheckList: [],
    spaceIntroduce: ''
  }
};

const getters = {
  spacesArr: state => state.spacesArr,
  spaceDetail: state => state.spaceDetail
};

const actions = {
  doSearchSpaces({commit}, obj) {
    //这是搜索的请求接口
    if (obj === undefined) {
      obj = {}
    }
    // console.log("打印搜索请求参数对象：");
    // console.log(obj);
    axios.post('/api/school-wgy-yizuweb/doSearchSpaces', obj).then(resp => {
      // console.log("搜索获取到的数据：");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.DO_SEARCH_SPACES, resp.data.data)
      }
    }).catch(err => {
      console.log(err);
    })
  },
  getSpaceDetail({commit}, data) {
    //这里是获取场地的详细信息
    axios.post('/api/school-wgy-yizuweb/spaces/detail/' + data, {}).then(resp => {
      // console.log("获取场地详情的数据：");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.GET_SPACE_DETAIL, resp.data.data)
      }
    }).catch(err => {
      console.log(err)
    })
  }
};

const mutations = {
  [types.DO_SEARCH_SPACES](state, data) {
    state.spacesArr = {
      total: data.length,
      data: []
    };
    for (let i = 0; i < data.length; i++) {
      let place_tmp = {};
      place_tmp.id = data[i].id;
      place_tmp.spaceImg = data[i].imgUrl;
      place_tmp.spaceName = data[i].titleName;
      place_tmp.currentPage = Math.ceil((i + 1) / 8);
      state.spacesArr.data.push(place_tmp);
    }
  },
  [types.GET_SPACE_DETAIL](state, data) {
    state.spaceDetail.spaceName = data.titleName;
    state.spaceDetail.spaceImg = data.imgUrl;
    state.spaceDetail.price[0] = data.defaultPrice;
    state.spaceDetail.price[1] = data.morningPrice;
    state.spaceDetail.price[2] = data.noonPrice;
    state.spaceDetail.price[3] = data.eveningPrice;
    state.spaceDetail.spaceType = data.spaceType;
    state.spaceDetail.spaceArea = data.size;
    state.spaceDetail.activityType = data.activityType;
    state.spaceDetail.spaceFacilities = data.equipment;
    state.spaceDetail.people = data.peopleCount;
    state.spaceDetail.address = data.address;
    state.spaceDetail.route = data.route;
    state.spaceDetail.timeCheckList = data.openTime.split(",");
    state.spaceDetail.spaceIntroduce = data.spaceIntroduce;
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
