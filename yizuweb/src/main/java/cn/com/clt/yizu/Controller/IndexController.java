package cn.com.clt.yizu.Controller;

import cn.com.clt.yizu.Service.*;
import cn.com.clt.yizu.model.*;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ccj
 * @description 主页路由设置
 * @time 2018-03-22-16:15
 */
@RestController
@RequestMapping(value = "/api/school-wgy-yizuweb")
public class IndexController {
    @Autowired
    private ProvinceService provinceService;
    @Autowired
    private CityService cityService;
    @Autowired
    private ActivityTypeService activityTypeService;
    @Autowired
    private SpaceTypeService spaceTypeService;
    @Autowired
    private PersonCountService personCountService;
    @Autowired
    private MiniSpaceService miniSpaceService;
    @Autowired
    private UniversityService universityService;
    @Autowired
    private SpaceService spaceService;


    @PostMapping(value = "/getProvince")
    public Map<String, Object> getProvinceList(@RequestBody Province province) {
        List<Province> list = provinceService.getAll(province);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/getCities")
    public Map<String, Object> getCityList(@RequestBody City city) {
        List<City> list = cityService.getAll(city);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/getSchools")
    public Map<String, Object> getUniversityList(@RequestBody University university) {
        List<University> list = universityService.getAll(university);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/getActivities")
    public Map<String, Object> getActivityTypeList(@RequestBody ActivityType activityType) {

        List<ActivityType> list = activityTypeService.getAll(activityType);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/getSpaces")
    public Map<String, Object> getSpaceTypeList(@RequestBody SpaceType spaceType) {
        List<SpaceType> list = spaceTypeService.getAll(spaceType);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/getPeoples")
    public Map<String, Object> getPersonCountList(@RequestBody PersonCount personCount) {
        List<PersonCount> list = personCountService.getAll(personCount);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }
  /*  @PostMapping(value = "/getPublicPlaces")
    public Map<String,Object> getSpaceList(Space space){
        space.setSpaceType("体育场馆");
        List<Space> list = spaceService.getAll(space);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }*/

    @PostMapping(value = "/getPublicPlaces")
    public Map<String, Object> getMiniSpaceSearchList(@RequestBody MiniSpaceDTO miniSpaceDTO) {
        System.out.println(miniSpaceDTO.toString());
        if (miniSpaceDTO.getSelectedCity()!=null&&miniSpaceDTO.getSelectedCity().length!=0) {
            String[] cityId = miniSpaceDTO.getSelectedCity();
            City city = new City();
            city.setCityId(Integer.valueOf(cityId[1]));
            city.setProvinceId(Integer.valueOf(cityId[0]));
            City demandCity = cityService.getCityOne(city);
            miniSpaceDTO.setProvince(demandCity.getProvince());
            miniSpaceDTO.setCity(demandCity.getCity());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedSpace())) {
            SpaceType spaceType = spaceTypeService.getOne(miniSpaceDTO.getSelectedSpace());
            miniSpaceDTO.setSelectedSpace(spaceType.getSpaceName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedActivity())) {
            ActivityType activityType = activityTypeService.getOne(miniSpaceDTO.getSelectedActivity());
            miniSpaceDTO.setSelectedActivity(activityType.getActivityName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedSchool())) {
            University university = universityService.getOne(miniSpaceDTO.getSelectedSchool());
            miniSpaceDTO.setSelectedSchool(university.getSchoolName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedPeople())) {
            PersonCount personCount = personCountService.getOne(miniSpaceDTO.getSelectedPeople());
            miniSpaceDTO.setSelectedPeople(personCount.getPeopleCount());
        }
        miniSpaceDTO.setSelectedSpace("体育场馆");
        List<Space> list = spaceService.getSearchAll(miniSpaceDTO);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }

    @PostMapping(value = "/doSearchSpaces")
    public Map<String, Object> getSpaceSearchList(@RequestBody MiniSpaceDTO miniSpaceDTO) {
        System.out.println(miniSpaceDTO.toString());
        if (miniSpaceDTO.getSelectedCity()!=null&&miniSpaceDTO.getSelectedCity().length!=0) {
            String[] cityId = miniSpaceDTO.getSelectedCity();
            City city = new City();
            city.setCityId(Integer.valueOf(cityId[1]));
            city.setProvinceId(Integer.valueOf(cityId[0]));
            City demandCity = cityService.getCityOne(city);
            miniSpaceDTO.setProvince(demandCity.getProvince());
            miniSpaceDTO.setCity(demandCity.getCity());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedSpace())) {
            SpaceType spaceType = spaceTypeService.getOne(miniSpaceDTO.getSelectedSpace());
            miniSpaceDTO.setSelectedSpace(spaceType.getSpaceName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedActivity())) {
            ActivityType activityType = activityTypeService.getOne(miniSpaceDTO.getSelectedActivity());
            miniSpaceDTO.setSelectedActivity(activityType.getActivityName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedSchool())) {
            University university = universityService.getOne(miniSpaceDTO.getSelectedSchool());
            miniSpaceDTO.setSelectedSchool(university.getSchoolName());
        }
        if (StringUtils.isNotBlank(miniSpaceDTO.getSelectedPeople())) {
            PersonCount personCount = personCountService.getOne(miniSpaceDTO.getSelectedPeople());
            miniSpaceDTO.setSelectedPeople(personCount.getPeopleCount());
        }
        List<Space> list = spaceService.getSearchAll(miniSpaceDTO);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data", list);
        return map;
    }
    @PostMapping(value = "/spaces/detail/{id}")
    public Map<String,Object> getSpaceDetail(@PathVariable String id){
        Space space = spaceService.getOne(id);
        System.out.println(space.toString());
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("message", "success");
        map.put("data",space);
        return  map;
    }

}
