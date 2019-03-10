package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.MiddleSpaceService;
import cn.com.clt.yizu.model.MiddleSpace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ccj
 * @description
 * @time 2018-03-24-10:40
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class MiddleSpaceController {
    @Autowired
    private MiddleSpaceService middleSpaceService;

    @RequestMapping(value = "/getMiddleSpace")
    public Map<String, Object> getMiddleSpaceList(@RequestBody  MiddleSpace middleSpace) {
        List<MiddleSpace> list = middleSpaceService.getAll(middleSpace);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }
}
