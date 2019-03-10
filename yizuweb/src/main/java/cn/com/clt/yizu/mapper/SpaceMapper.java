package cn.com.clt.yizu.mapper;

import cn.com.clt.yizu.model.MiniSpaceDTO;
import cn.com.clt.yizu.model.Space;
import cn.com.clt.yizu.util.MyMapper;

import java.util.List;

public interface SpaceMapper extends MyMapper<Space> {
    List<Space> getSearchAll(MiniSpaceDTO miniSpaceDTO);
}