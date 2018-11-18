package com.nit.pang.services;

import com.nit.pang.model.entity.User;

import java.util.List;

/**
 * @author Wei
 * @data 2018/11/10 12:15
 */
public interface UserService {

    List<User> findUser();

    User findOne();

    User findOneById(Integer uid);
}
