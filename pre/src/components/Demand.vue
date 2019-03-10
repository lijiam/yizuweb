<template>
  <div id="demand">
    <div class="demand_title">场地需求</div>
    <div class="demand_form">
      <el-form :model="demandForm" :rules="demandRules" ref="demandForm" label-width="200px" status-icon>
        <el-form-item label="城市" prop="city">
          <el-cascader :options="cities" v-model="demandForm.city" :clearable="true"
                       expand-trigger="hover" placeholder="请选择所在城市" size="mini">
          </el-cascader>
        </el-form-item>
        <el-form-item label="场地类型" prop="space">
          <el-select v-model="demandForm.space" placeholder="请选择场地类型" size="mini" :clearable="true">
            <el-option v-for="space in spaces" :key="space.value" :label="space.label"
                       :value="space.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="活动类型" prop="activity">
          <el-select v-model="demandForm.activity" placeholder="请选择活动类型" size="mini" :clearable="true">
            <el-option v-for="activity in activities" :key="activity.value" :label="activity.label"
                       :value="activity.value"></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="活动人数" prop="people">
          <el-input-number size="mini" v-model="demandForm.people" :step="10" :min="0" :max="100000"></el-input-number>
          人
        </el-form-item>
        <el-form-item label="预算" prop="budget">
          <el-input-number size="mini" v-model="demandForm.budget" :step="100" :min="0"
                           :max="1000000"></el-input-number>
          元
        </el-form-item>
        <el-form-item label="时间" prop="time">
          <el-date-picker v-model="demandForm.time" type="datetimerange" :picker-options="pickerOptions"
                          range-separator="至" start-placeholder="开始日期" end-placeholder="结束日期" size="mini"
                          value-format="yyyy-MM-dd HH:mm:ss">
          </el-date-picker>
        </el-form-item>
        <el-form-item label="具体要求" prop="demand">
          <el-input type="textarea" :autosize="{minRows: 1, maxRows: 30}" placeholder="请输入您的具体要求(最多输入30行或5000个字符)"
                    v-model="demandForm.demand" :clearable="true" size="mini">
          </el-input>
        </el-form-item>
        <div style="border-bottom: solid #919399 1px;"></div>
        <div class="demand_title" style="margin: 30px auto;">联系信息</div>
        <el-form-item label="您的姓名" prop="name">
          <el-input placeholder="请输入您的姓名" v-model="demandForm.name" :clearable="true"
                    size="mini" :minlength="1" :maxlength="20"></el-input>
        </el-form-item>
        <el-form-item label="您的手机号" prop="phone">
          <el-input placeholder="请输入您的手机号" v-model="demandForm.phone" :clearable="true"
                    size="mini" :minlength="1" :maxlength="11"></el-input>
        </el-form-item>
        <el-form-item label="您的邮箱" prop="email">
          <el-input placeholder="请输入您的邮箱" v-model="demandForm.email" :clearable="true"
                    size="mini" :minlength="1" :maxlength="200"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="submitForm('demandForm')" size="mini">提交</el-button>
          <el-button @click="resetForm('demandForm')" size="mini">重置</el-button>
        </el-form-item>
      </el-form>
    </div>
  </div>
</template>

<script>
  import {mapGetters} from 'vuex'
  import types from '../store/types'

  export default {
    computed: {
      ...mapGetters([
        'cities',
        'spaces',
        'activities',
        'demandForm',
        'headerUrl'
      ])
    },
    created() {
      this.$store.commit(types.RESET_DEMAND_FORM);
      this.$store.dispatch('getCities');
      this.$store.dispatch('getSpaces');
      this.$store.dispatch('getActivities');
      this.headerUrl.activeIndex = '/demand';
      this.demandForm.demand = this.$route.params.space_name
    },
    data() {
      // 验证手机号
      let validatePhone = (rule, value, callback) => {
        let checkPhone = /^1[3578]\d{9}$/;
        if (checkPhone.test(value)) {
          callback();
        } else {
          callback(new Error('请输入正确格式的手机号'));
        }
      };
      return {
        demandRules: {
          city: [
            {required: true, message: '城市不能为空', trigger: 'blur,change'}
          ],
          space: [
            {required: true, message: '场地类型不能为空', trigger: 'blur,change'}
          ],
          activity: [
            {required: true, message: '活动类型不能为空', trigger: 'blur,change'}
          ],
          people: [
            {required: true, message: '活动人数不能为空', trigger: 'blur,change'}
          ],
          budget: [
            {required: true, message: '预算不能为空', trigger: 'blur,change'}
          ],
          time: [
            {required: true, message: '时间不能为空', trigger: 'blur,change'}
          ],
          demand: [
            {min: 0, max: 5000, message: '不能超过10行', trigger: 'blur,change'}
          ],
          name: [
            {required: true, message: '姓名不能为空', trigger: 'blur,change'}
          ],
          phone: [
            {required: true, message: '手机号不能为空', trigger: 'blur,change'},
            {validator: validatePhone, trigger: 'blur,change'}
          ],
          email: [
            {type: 'email', message: '请输入正确格式的邮箱地址', trigger: 'blur,change'}
          ]
        },
        pickerOptions: {
          shortcuts: [{
            text: '最近一天',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近一周',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 7);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近一个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 30);
              picker.$emit('pick', [start, end]);
            }
          }, {
            text: '最近三个月',
            onClick(picker) {
              const end = new Date();
              const start = new Date();
              start.setTime(start.getTime() - 3600 * 1000 * 24 * 90);
              picker.$emit('pick', [start, end]);
            }
          }]
        }
      };
    },
    methods: {
      submitForm(formName) {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            this.$store.dispatch('submitDemand').then((value)=>{
              if(value.code === 0){
                alert('提交成功，请用登记手机号登录查看信息。');
                this.resetForm('demandForm')
              }
            }).catch(err=>{
              alert('系统异常')
            })
          } else {
            alert('error submit!');
            return false;
          }
        });
      },
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }
  }
</script>

<style lang="less" scoped>
  #demand {
    width: 80%;
    margin: 30px auto;
    .demand_title {
      font-size: 28px;
      color: #606266;
    }
    .demand_form {
      margin-top: 30px;
    }
    .el-input-number--mini {
      width: 18.2%;
    }
  }
</style>
