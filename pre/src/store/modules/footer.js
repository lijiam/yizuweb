import types from '../types'
import axios from 'axios'

const state = {
  footer:{
    disclaimerDialog:false,
    address: '浙江省杭州市西湖区留和路299号浙江外国语学院',
    email: 'ezonegongyi@163.com',
    copyright: 'Copyright © 2018 浙ICP备 18003857号-1 版权所有 益租公益 技术支持 CLTeam',
    aboutUsUrl: '/aboutUs',
    demandUrl: '/demand',
    disclaimers:[
      {
        key:'0',
        title:'总则',
        content:'用户在接受益租提供的服务之前，请务必仔细阅读本条款并同意本声明。\n' +
        '用户直接或通过各类方式间接使用益租服务和数据的行为，都将被视作已无条件接受本声明所涉全部内容；若用户对本声明的任何条款有异议，请停止使用益租所提供的全部服务。'
      },
      {
        key:'1',
        title:'第一条',
        content:'用户以各种方式使用益租服务和数据（包括但不限于发表、宣传介绍、转载、浏览及利用益租或益租场地用户发布内容）的过程中，不得以任何方式利用益租网站直接或间接从事违反中国法律、以及社会公德的行为，且用户应当恪守下述承诺：\n' +
        '\n' +
        '1. 发布、转载或提供的内容符合中国法律、社会公德；\n' +
        '2. 不得干扰、损害和侵犯益租的各种合法权利与利益；\n' +
        '3. 不得利用本站原创数据内容从事任何商业领域的用途；\n' +
        '4. 遵守益租以及与之相关的网络服务的协议、指导原则、管理细则等；\n' +
        '益租有权对违反上述承诺的内容予以删除。'
      },
      {
        key:'2',
        title:'第二条',
        content:'1. 用户在益租发表的内容（包含但不限于场地内容、亮点内容等）仅表明其个人的立场和观点，并不代表益租的承诺。作为内容的发表者，需自行对所发表内容负责，因所发表内容引发的一切纠纷，由该内容的发表者承担全部法律及连带责任。益租不承担任何法律及连带责任。\n' +
        '2. 用户在益租发布侵犯他人知识产权或其他合法权益的内容，益租有权予以删除，并保留移交司法机关处理的权利。\n' +
        '3. 个人或单位如认为益租网站上存在侵犯自身合法权益的内容，应准备好具有法律效应的证明材料，及时与我们取得联系，以便益租迅速做出处理。\n'
      },
      {
        key:'3',
        title:'附则',
        content:'对免责声明的解释、修改及更新权均属于益租所有,\n' +
        '联系我们请直接Email至：ezonegongyi@163.com。\n'
      }
    ]
  }
};

const getters = {
  footer:state=>state.footer
};

const actions = {

};

const mutations = {

};

export default{
  state,
  getters,
  actions,
  mutations
}
