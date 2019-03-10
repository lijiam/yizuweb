package cn.com.clt.yizu.Service;

import cn.com.clt.yizu.mapper.UserMapper;
import cn.com.clt.yizu.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ccj
 * @description
 * @time 2018-03-24-12:34
 */
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;

    public void save(User user) {
        userMapper.insert(user);
    }

    public User getOne(User user) {
        return userMapper.selectOne(user);
    }

    public User getOneUser(String phone){
        return userMapper.selectByPrimaryKey(phone);
    }

    public void update(User user){
        userMapper.updateByPrimaryKeySelective(user);
    }
}
