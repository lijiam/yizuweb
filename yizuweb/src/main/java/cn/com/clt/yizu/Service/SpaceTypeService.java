package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.SpaceTypeMapper;
import cn.com.clt.yizu.model.SpaceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取场地类型
 * @time 2018-03-23-15:29
 */
@Service
public class SpaceTypeService {
    @Autowired
    private SpaceTypeMapper spaceTypeMapper;

    public List<SpaceType> getAll(SpaceType spaceType) {
        return spaceTypeMapper.select(spaceType);
    }
    public SpaceType getOne(String id){
        return spaceTypeMapper.selectByPrimaryKey(id);
    }
}
