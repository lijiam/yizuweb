package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.ProvinceMapper;
import cn.com.clt.yizu.model.Province;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取省份数据
 * @time 2018-03-23-10:11
 */

@Service
public class ProvinceService {
    @Autowired
    private ProvinceMapper provinceMapper;

    public List<Province> getAll(Province province) {
        return provinceMapper.select(province);
    }

}
