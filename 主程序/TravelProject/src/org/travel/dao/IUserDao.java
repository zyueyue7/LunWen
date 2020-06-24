package org.travel.dao;

import java.util.List;

import org.travel.entity.User;

public interface IUserDao {
	// 登录功能
	public boolean Login(User user);

	// 修改登录状态
	public boolean loginstatus(String name);

	// 注册功能
	public boolean Register(User user);

	// 修改密码的功能
	public boolean Update(String uname, String pwd);

	// 查询该用户是否存在
	public boolean isExist(User user);

	// 根据用户名查询该用户
	public User queryUserByName(String uname);

	// 查询全部的用户
	public List<User> queryUsers();

}
