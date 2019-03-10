package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.MiniSpaceMapper;
import cn.com.clt.yizu.model.MiniSpace;
import cn.com.clt.yizu.model.MiniSpaceDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取MiniSpace
 * @time 2018-03-23-15:52
 */
@Service
public class MiniSpaceService {
    @Autowired
    private MiniSpaceMapper miniSpaceMapper;

    public List<MiniSpace> getAll(MiniSpace miniSpace){
        return miniSpaceMapper.select(miniSpace);
    }

    public List<MiniSpace> getSearchAll(MiniSpaceDTO miniSpaceDTO){
        return miniSpaceMapper.getSearchAll(miniSpaceDTO);
    }
}
