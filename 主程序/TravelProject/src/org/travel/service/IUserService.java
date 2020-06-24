package org.travel.service;

import java.util.List;

import org.travel.entity.User;

public interface IUserService {
	// 登录功能
	public boolean Login(User user);

	// 修改用户状态
	public boolean loginstatus(String name);

	// 注册功能
	public int Register(User user);

	// 修改密码
	public int Update(String uname, String pwd1, String pwd2);

	// 查询用户信息
	public List<User> queryUsers();

	// 管理员修改用户信息
	public boolean UpdateUser(User user);
}
