package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.SpaceMapper;
import cn.com.clt.yizu.model.MiniSpaceDTO;
import cn.com.clt.yizu.model.Space;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description
 * @time 2018-03-30-20:24
 */
@Service
public class SpaceService {
    @Autowired
    private SpaceMapper spaceMapper;

    public List<Space> getAll(Space space){
        return spaceMapper.select(space);
    }
    public List<Space> getSearchAll(MiniSpaceDTO miniSpaceDTO){
        return spaceMapper.getSearchAll(miniSpaceDTO);
    }
    public Space getOne(String id){
        return spaceMapper.selectByPrimaryKey(id);
    }
}
