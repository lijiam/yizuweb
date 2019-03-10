package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.UniversityMapper;
import cn.com.clt.yizu.model.University;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取大学数据
 * @time 2018-03-24-10:30
 */
@Service
public class UniversityService {
    @Autowired
    private UniversityMapper universityMapper;

    public List<University> getAll(University university) {
        return universityMapper.select(university);
    }
    public University getOne(String id){
        return universityMapper.selectByPrimaryKey(id);
    }
}
