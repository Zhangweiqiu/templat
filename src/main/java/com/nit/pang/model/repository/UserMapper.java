package com.nit.pang.model.repository;

import com.nit.pang.model.entity.User;

import java.util.List;

/**
 * @author Wei
 * @data 2018/11/10 12:17
 */
public interface UserMapper {


    List<User> findUser();
}
