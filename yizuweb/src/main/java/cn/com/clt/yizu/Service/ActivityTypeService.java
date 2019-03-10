package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.ActivityTypeMapper;
import cn.com.clt.yizu.model.ActivityType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author ccj
 * @description 获取活动类型
 * @time 2018-03-23-15:18
 */
@Service
public class ActivityTypeService {
    @Autowired
    private ActivityTypeMapper activityTypeMapper;

    public List<ActivityType> getAll(ActivityType activityType) {
        return activityTypeMapper.select(activityType);
    }
    public ActivityType getOne(String id){
        return activityTypeMapper.selectByPrimaryKey(id);
    }

}
