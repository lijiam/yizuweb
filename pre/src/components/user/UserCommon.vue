<template>
  <div id="userCommon">
    <div class="login_style" v-if="loginShow">
      <clt-login></clt-login>
    </div>
    <div class="register_style" v-else-if="registerShow">
      <clt-register></clt-register>
    </div>
    <div class="password_style" v-else-if="passwordShow">
      <clt-password></clt-password>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import types from '../../store/types'
  import Login from './Login'
  import Register from './Register'
  import Password from './Password'

  export default {
    components:{
      'clt-login':Login,
      'clt-register':Register,
      'clt-password':Password
    },
    computed:{
      ...mapGetters([
        'loginShow',
        'registerShow',
        'passwordShow'
      ])
    },
    created(){
      this.$store.commit(types.RESET_USER_COMMON_SHOW)
    }
  }
</script>

<style lang="less" scoped>
  #userCommon{
    .login_style,.register_style,.password_style{
      width: 80%;
      margin: 0 auto;
    }
  }
</style>
