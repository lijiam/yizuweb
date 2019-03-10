package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.CityMapper;
import cn.com.clt.yizu.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取城市数据
 * @time 2018-03-23-14:57
 */
@Service
public class CityService {
    @Autowired
    private CityMapper cityMapper;

    public List<City> getAll(City city) {
        return cityMapper.select(city);
    }
    public City getCityOne(City city){
        return cityMapper.selectOne(city);
    }
}
