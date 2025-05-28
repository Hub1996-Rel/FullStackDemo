package com.jackhu.fullstack.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jackhu.fullstack.dto.QueryDTO;
import com.jackhu.fullstack.entity.User;
import com.jackhu.fullstack.mapper.UserMapper;
import com.jackhu.fullstack.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public IPage<User> selectUserPage(QueryDTO queryDTO) {
        Page<User> page=new Page<>(queryDTO.getPageNo(),queryDTO.getPageSize());
        return userMapper.selectUserPage(page,queryDTO.getKeyword());
    }

    @Override
    public Integer addUser(User user) {
        return userMapper.insert(user);
    }

    @Override
    public Integer updateUser(User user) {
        return userMapper.updateById(user);
    }

    @Override
    public Integer deleteUser(Integer id) {
        return userMapper.deleteById(id);
    }

    @Override
    public void batchDelete(List<Integer> ids) {
        userMapper.deleteBatchIds(ids);
    }

}
