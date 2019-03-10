import types from '../types'
import axios from 'axios'

const state = {
  publicPlaces: {
    total: 0,
    data: [
      // {
      //   id: '/spaces/detail/001',
      //   imgUrl: '../../static/imgs/spaces/public_space_01.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:1
      // },
      // {
      //   id: '/spaces/detail/002',
      //   imgUrl: '../../static/imgs/spaces/public_space_02.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:1
      // },
      // {
      //   id: '/spaces/detail/003',
      //   imgUrl: '../../static/imgs/spaces/public_space_03.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:1
      // },
      // {
      //   id: '/spaces/detail/004',
      //   imgUrl: '../../static/imgs/spaces/public_space_04.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:1
      // },
      // {
      //   id: '/spaces/detail/005',
      //   imgUrl: '../../static/imgs/spaces/public_space_05.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:2
      // },
      // {
      //   id: '/spaces/detail/006',
      //   imgUrl: '../../static/imgs/spaces/public_space_06.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:2
      // },
      // {
      //   id: '/spaces/detail/007',
      //   imgUrl: '../../static/imgs/spaces/public_space_04.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:2
      // },
      // {
      //   id: '/spaces/detail/008',
      //   imgUrl: '../../static/imgs/spaces/public_space_05.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:2
      // },
      // {
      //   id: '/spaces/detail/009',
      //   imgUrl: '../../static/imgs/spaces/public_space_06.jpg',
      //   titleName: '浙江外国语学院体育场',
      //   currentPage:3
      // }
    ]
  }
};

const getters = {
  publicPlaces: state => state.publicPlaces
};

const actions = {
  getPublicPlaces({commit}, requestObj) {
    //获取公益场地的请求
    if (requestObj === undefined) {
      requestObj = {}
    }
    // console.log("请求对象");
    // console.log(requestObj);
    axios.post('/api/school-wgy-yizuweb/getPublicPlaces', requestObj).then(resp => {
      // console.log("获取公益场地getPublicPlaces:");
      // console.log(resp);
      if (resp.status === 200) {
        commit(types.GET_PUBLIC_PLACES, resp.data.data);
      }
    }).catch(err => {
      console.log(err);
    })
  }
};

const mutations = {
  [types.GET_PUBLIC_PLACES](state, data) {
    state.publicPlaces = {
      total:data.length,
      data:[]
    };
    for (let i = 0; i < data.length; i++) {
      let place_tmp = {};
      place_tmp.id = '/spaces/detail/'+data[i].id;
      place_tmp.imgUrl = data[i].imgUrl;
      place_tmp.titleName = data[i].titleName;
      place_tmp.currentPage = Math.ceil((i+1)/4);
      state.publicPlaces.data.push(place_tmp);
    }
  }
};

export default {
  state,
  getters,
  actions,
  mutations
}
