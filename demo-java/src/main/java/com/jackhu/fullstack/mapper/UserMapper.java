package com.jackhu.fullstack.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jackhu.fullstack.entity.User;

public interface UserMapper extends BaseMapper<User> {
    IPage<User> selectUserPage(Page<User> page, String keyword);
}
