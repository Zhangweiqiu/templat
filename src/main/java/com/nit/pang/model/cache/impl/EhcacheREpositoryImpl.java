package com.nit.pang.model.cache.impl;

import com.nit.pang.model.cache.EhcacheRepository;
import com.nit.pang.model.entity.User;
import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Repository;

/**
 * @author Wei
 * @data 2018/11/10 15:40
 */

@CacheConfig(cacheNames = {"weiCache"})
@Repository
public class EhcacheREpositoryImpl implements EhcacheRepository {

 //   private static final Logger  LOGGER = LoggerFactory.getLogger(EhcacheRepository.class);


    @CachePut(key = "#p0.uid")
    @Override
    public User login(User user) {
 //       LOGGER.info("登录功能，同步到缓存" );
        return user;
    }

    @Cacheable(key = "#p0")
    @Override
    public User selectById(Integer uid) {
   //     LOGGER.info("缓存没找打，返回NULL");
        return null;
    }

    @CachePut(key = "#p0.uid")
    @Override
    public User updateById(User user) {
  //      LOGGER.info("更新缓存");
        return user;
    }

    @CacheEvict(key = "#p0")
    @Override
    public String deleteById(Integer uid) {
 //       LOGGER.error("删除缓存");
        return "删除成功";
    }
}
