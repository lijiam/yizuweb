package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.CityMapper;
import cn.com.clt.yizu.mapper.DemandMapper;
import cn.com.clt.yizu.model.City;
import cn.com.clt.yizu.model.Demand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description
 * @time 2018-03-28-10:30
 */
@Service
public class DemandService {
    @Autowired
    private DemandMapper demandMapper;
    @Autowired
    private CityMapper cityMapper;

    public City getCityOne(City city) {
        return cityMapper.selectOne(city);
    }

    public void save(Demand demand) {
        demandMapper.insert(demand);
    }

    public List<Demand> getAll(Demand demand) {
        return demandMapper.select(demand);
    }

    public void delete(int id) {
        demandMapper.deleteByPrimaryKey(id);
    }

}
