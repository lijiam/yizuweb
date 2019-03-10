package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.MiddleSpaceMapper;
import cn.com.clt.yizu.model.MiddleSpace;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取MiddleSpace
 * @time 2018-03-24-10:57
 */

@Service
public class MiddleSpaceService {
    @Autowired
    private MiddleSpaceMapper middleSpaceMapper;

    public List<MiddleSpace> getAll(MiddleSpace middleSpace) {
        return middleSpaceMapper.select(middleSpace);
    }
}
