package com.jackhu.fullstack.service;

import com.jackhu.fullstack.dto.LoginDTO;
import com.jackhu.fullstack.result.Result;

public interface LoginService {
    public Result login(LoginDTO loginDTO);
}
