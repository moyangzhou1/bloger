package com.myz.bloger.controller;

import com.myz.bloger.domain.User;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author: mr.mo
 * @description
 * @date: 2018/9/8
 */
@RestController
@RequestMapping(value = "/user")
public class UserController {

   @RequestMapping(value = "/list.do",method = RequestMethod.GET)
    public User userList(){
        User user = new User();
       user.setFlag("1");
       user.setName("SB");
        System.out.println("1+1=2");
        return user;
    }

   /* @RequestMapping(value = "/list.do",method = RequestMethod.GET)
    public ModelAndView userList(){
        System.out.println("1+1=2");
        return new ModelAndView("/index.jsp");
    }*/








}
