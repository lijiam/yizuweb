package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.PersonCountMapper;
import cn.com.clt.yizu.model.PersonCount;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取活动人数
 * @time 2018-03-23-15:38
 */
@Service
public class PersonCountService {
    @Autowired
    private PersonCountMapper personCountMapper;

    public List<PersonCount> getAll(PersonCount personCount) {
        return personCountMapper.select(personCount);
    }
    public PersonCount getOne(String id){
        return personCountMapper.selectByPrimaryKey(id);
    }

}
