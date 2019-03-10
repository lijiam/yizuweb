package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.CaseMapper;
import cn.com.clt.yizu.model.Case;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description
 * @time 2018-03-29-11:47
 */

@Service
public class CaseService {
    @Autowired
    private CaseMapper caseMapper;

    public List<Case> getAll(Case caselist) {
        return caseMapper.select(caselist);
    }

    public Case getOne(String id){
        return  caseMapper.selectByPrimaryKey(id);
    }
}