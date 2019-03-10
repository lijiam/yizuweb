package cn.com.clt.yizu.mapper;

import cn.com.clt.yizu.model.MiniSpace;
import cn.com.clt.yizu.model.MiniSpaceDTO;
import cn.com.clt.yizu.util.MyMapper;

import java.util.List;

public interface MiniSpaceMapper extends MyMapper<MiniSpace> {
    List<MiniSpace> getSearchAll(MiniSpaceDTO miniSpaceDTO);
}