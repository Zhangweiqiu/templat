package com.nit.pang.services.impl;

import com.nit.pang.model.cache.EhcacheRepository;
import com.nit.pang.model.entity.User;
import com.nit.pang.model.repository.UserMapper;
import com.nit.pang.services.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Wei
 * @data 2018/11/10 12:15
 */

@Service("UserService")
public class UserServiceImpl implements UserService {

    @Resource
    UserMapper userMapper;

    @Resource
    EhcacheRepository ehcacheRepository;

    @Override
    public List<User> findUser() {
        return userMapper.findUser();
    }

    @Override
    public User findOne() {
        if (userMapper.findUser().size() != 0){
            return ehcacheRepository.login(userMapper.findUser().get(0));
        }
        return null;
    }

    @Override
    public User findOneById(Integer uid) {
        return ehcacheRepository.selectById(uid);
    }
}
