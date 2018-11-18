package com.nit.pang.model.cache;

import com.nit.pang.model.entity.User;

/**
 * @author Wei
 * @data 2018/11/10 15:37
 */
public interface EhcacheRepository {

    /**
     *  用户登录
     * @param user
     * @return
     */
    User login(User user);

    /**
     *  查询用户
     * @param uid
     * @return
     */
    User selectById(Integer uid);


    /**
     *  更新用户
     * @param user
     * @return
     */
    User updateById(User user);

    /**
     *  删除用户
     * @param id
     * @return
     */
    String deleteById(Integer id);

}

