package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.DemandService;
import cn.com.clt.yizu.Service.MiniSpaceService;
import cn.com.clt.yizu.Service.UserService;
import cn.com.clt.yizu.model.Demand;
import cn.com.clt.yizu.model.MiniSpace;
import cn.com.clt.yizu.model.MiniSpaceDTO;
import cn.com.clt.yizu.model.User;
import cn.com.clt.yizu.util.CreateDate;
import cn.com.clt.yizu.util.MD5;
import cn.com.clt.yizu.util.RandomCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ccj
 * @description 测试类
 * @time 2018-03-29-14:04
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class TextController {
    @Autowired
    private UserService userService;
    @Autowired
    private DemandService demandService;
    private MD5 md5 = new MD5();


}
