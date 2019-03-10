package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.UserService;
import cn.com.clt.yizu.model.User;
import cn.com.clt.yizu.util.MD5;
import cn.com.clt.yizu.util.RandomCode;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Map;

/**
 * @author ccj
 * @description
 * @time 2018-03-24-11:06
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class UserController {
    @Autowired
    private UserService userService;
    private MD5 md5 = new MD5();
    private RandomCode randomCode = new RandomCode();

    @PostMapping(value = "/user/getPhoneCode/{phone}")
    public Map<String, Object> userCode(@PathVariable String phone) throws Exception {
        String phoneCode = randomCode.getRandomCode();
        System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
        System.setProperty("sun.net.client.defaultReadTimeout", "10000");
//初始化ascClient需要的几个参数
        final String product = "Dysmsapi";//短信API产品名称（短信产品名固定，无需修改）
        final String domain = "dysmsapi.aliyuncs.com";//短信API产品域名（接口地址固定，无需修改）
//替换成你的AK
        final String accessKeyId = "LTAIk0AgR5EAP2jB";//你的accessKeyId,参考本文档步骤2
        final String accessKeySecret = "zFnMocrx6g8r4P2Cxqx4AbPuiGDAiN";//你的accessKeySecret，参考本文档步骤2
//初始化ascClient,暂时不支持多region（请勿修改）
        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", accessKeyId,
                accessKeySecret);
        DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", product, domain);
        IAcsClient acsClient = new DefaultAcsClient(profile);
        //组装请求对象
        SendSmsRequest request = new SendSmsRequest();
        //使用post提交
        request.setMethod(MethodType.POST);
        //必填:待发送手机号。支持以逗号分隔的形式进行批量调用，批量上限为1000个手机号码,批量调用相对于单条调用及时性稍有延迟,验证码类型的短信推荐使用单条调用的方式
        request.setPhoneNumbers(phone);
        //必填:短信签名-可在短信控制台中找到
        request.setSignName("益租公益");
        //必填:短信模板-可在短信控制台中找到
        request.setTemplateCode("SMS_129005077");
        //可选:模板中的变量替换JSON串,如模板内容为"亲爱的${name},您的验证码为${code}"时,此处的值为
        //友情提示:如果JSON中需要带换行符,请参照标准的JSON协议对换行符的要求,比如短信内容中包含\r\n的情况在JSON中需要表示成\\r\\n,否则会导致JSON在服务端解析失败
        request.setTemplateParam("{ \"code\":\"" + phoneCode + "\"}");
        //request.setTemplateParam("{\"name\":\"Tom\", \"code\":\"123\"}");
        //可选-上行短信扩展码(扩展码字段控制在7位或以下，无特殊需求用户请忽略此字段)
        //request.setSmsUpExtendCode("90997");
        //可选:outId为提供给业务方扩展字段,最终在短信回执消息中将此值带回给调用者
        //request.setOutId("yourOutId");
//请求失败这里会抛ClientException异常
        SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);
        Map<String, Object> map = new HashMap<String, Object>();
        if (sendSmsResponse.getCode() != null && sendSmsResponse.getCode().equals("OK")) {
//请求成功
            map.put("code", 0);
            map.put("message", "success");
            map.put("phoneCode", phoneCode);
            map.put("phoneCodeInfo", sendSmsResponse.getMessage());
            return map;
        } else {
            map.put("code", -1);
            map.put("message", "fail");
            map.put("phoneCode", -1);
            map.put("phoneCodeInfo", sendSmsResponse.getMessage());
            return map;
        }
    }

    @PostMapping(value = "/user/toRegister")
    public Map<String, Object> userSave(@RequestBody User user) {
        String password = user.getPassword();
        user.setPassword(null);
        Map<String, Object> map = new HashMap<String, Object>();
        if (userService.getOne(user) != null) {
            map.put("code", -1);
            map.put("message", "fail");
            map.put("data", "该手机号已被注册");
            return map;
        } else {
            password = md5.MD5(password);
            user.setPassword(password);
            user.setUserTag("0");
            userService.save(user);
            map.put("code", 0);
            map.put("message", "success");
            map.put("data", "注册成功");
            return map;
        }
    }

    @PostMapping(value = "/user/toLogin")
    public Map<String, Object> userLogin(@RequestBody User user) {
        Map<String, Object> map = new HashMap<String, Object>();
        String password = md5.MD5(user.getPassword());
        user.setPassword(password);
        user.setUserTag(null);
        User userOne = userService.getOne(user);
        if (userOne != null) {
            map.put("code", 0);
            map.put("message", "success");
            map.put("data", userOne);
            return map;
        } else {
            map.put("code", -1);
            map.put("message", "fail");
            map.put("data", "手机号未注册或密码错误");
            return map;
        }
    }

    @PostMapping(value = "/user/changePassword")
    public Map<String, Object> userChangePassword(@RequestBody User user) {
        Map<String, Object> map = new HashMap<String, Object>();
        String password = user.getPassword();
        user.setPassword(null);
        if (userService.getOneUser(user.getPhone()) != null) {
            user.setPassword(md5.MD5(password));
            userService.update(user);
            map.put("code", 0);
            map.put("message", "success");
            map.put("data", "修改成功");
            return map;
        } else {
            map.put("code", -1);
            map.put("message", "fail");
            map.put("data", "手机号未注册");
            return map;
        }
    }

    @PostMapping(value = "/user/getMyInfo/{phone}")
    public Map<String, Object> getMyInfo(@PathVariable String phone) {
        User user = userService.getOneUser(phone);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", user);
        return map;
    }

    @PostMapping(value = "/user/updateMyInfo")
    public Map<String,Object> updateMyInfo(@RequestBody User user){
        userService.update(user);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", user);
        return map;
    }

}
