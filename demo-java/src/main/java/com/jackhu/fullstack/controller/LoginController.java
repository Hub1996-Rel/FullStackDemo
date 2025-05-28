package com.jackhu.fullstack.controller;

import com.jackhu.fullstack.dto.LoginDTO;
import com.jackhu.fullstack.result.Result;
import com.jackhu.fullstack.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController()
public class LoginController {
    @Autowired
    LoginService loginService;

    @PostMapping(value = "/api/login")
    public Result login(@RequestBody LoginDTO loginDTO){
      return loginService.login(loginDTO);
    }

    @PostMapping(value = "/api/hello")
    public Result hello(){
        return new Result(200,"hello","world");
    }
}
