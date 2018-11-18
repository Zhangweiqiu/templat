package com.nit.pang.controller;

import com.nit.pang.model.entity.User;
import com.nit.pang.services.UserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author Wei
 * @data 2018/11/10 12:14
 */
@RestController
public class UserController {

//    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Resource
    UserService userService;

//    @RequestMapping("/login")
//    public User login(){
////        logger.info("测试 log info");
////        logger.error("测试 log info");
////        logger.debug("测试 log info");
//
//        return  userService.findOne();
//    }

//
//    @RequestMapping("/getUser")
//    private User getUserInfo(Integer uid){
//        return userService.findOneById(uid);
//    }
}
