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

    @Resource
    UserService userService;

    @RequestMapping("/login")
    public User login(){
        return  userService.findOne();
    }


    @RequestMapping("/getUser")
    public User getUserInfo(Integer uid){
        return userService.findOneById(uid);
    }

    @RequestMapping("/selectAllUser")
    public void selectAllUser(Integer page, Integer limit,String keyword){

        System.out.println(keyword);
        System.out.println(page);
        System.out.println(limit);

    }
}
