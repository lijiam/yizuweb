package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.ActivityTypeService;
import cn.com.clt.yizu.Service.DemandService;
import cn.com.clt.yizu.Service.SpaceTypeService;
import cn.com.clt.yizu.model.ActivityType;
import cn.com.clt.yizu.model.City;
import cn.com.clt.yizu.model.Demand;
import cn.com.clt.yizu.model.SpaceType;
import cn.com.clt.yizu.util.CreateDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ccj
 * @description
 * @time 2018-03-28-10:33
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class DemandController {
    @Autowired
    private DemandService demandService;
    @Autowired
    private SpaceTypeService spaceTypeService;
    @Autowired
    private ActivityTypeService activityTypeService;
    private CreateDate createDate = new CreateDate();

    @PostMapping(value = "/demand/submitDemand")
    public Map<String, Object> demandSave(@RequestBody Demand demand) {
        String insertTime = createDate.getDate();
        City city = new City();
        city.setCityId(demand.getCityId());
        city.setProvinceId(demand.getProvinceId());
        City demandCity = demandService.getCityOne(city);
        SpaceType spaceType = spaceTypeService.getOne(demand.getSpace());
        ActivityType activityType = activityTypeService.getOne(demand.getActivity());
       
        demand.setSpace(spaceType.getSpaceName());
        demand.setActivity(activityType.getActivityName());
        demand.setCity(demandCity.getCity());
        demand.setProvince(demandCity.getProvince());
        demand.setInsertTime(insertTime);
        demandService.save(demand);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        return map;
    }

    @PostMapping(value = "/user/userCenter/getMyDemand/{phone}")
    public Map<String, Object> getDemandList(@PathVariable String phone) {
        Demand demand = new Demand();
        demand.setPhone(phone);
        List<Demand> list = demandService.getAll(demand);
        Map<String, Object> map = new HashMap<String, Object>();
        if (list.size() > 0) {
            map.put("code", 0);
            map.put("message", "success");
            map.put("data", list);
            return map;
        } else {
            map.put("code", -1);
            map.put("message", "fail");
            map.put("data", "数据未查询到");
            return map;
        }
    }

    @PostMapping(value = "/user/userCenter/deleteMyDemand/{id}")
    public Map<String, Object> deleteDemand(@PathVariable int id) {

        demandService.delete(id);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", "删除成功");
        return map;
    }
}