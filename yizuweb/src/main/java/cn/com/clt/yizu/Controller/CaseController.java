package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.CaseService;
import cn.com.clt.yizu.model.Case;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ccj
 * @description
 * @time 2018-03-29-11:51
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class CaseController {
    @Autowired
    private CaseService caseService;

    @PostMapping( value = "/cases/getCasesList")
    public Map<String,Object> getCaseList(@RequestBody Case caseList){
        List<Case> list = caseService.getAll(caseList);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }
    @PostMapping(value = "/cases/getCaseDetail/{caseId}")
    public Map<String,Object> getCaseMore(@PathVariable String caseId){
        Case caseOne = caseService.getOne(caseId);
        Map<String,Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", caseOne);
        return map;
    }
    
}

