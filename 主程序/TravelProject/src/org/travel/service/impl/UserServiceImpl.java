package org.travel.service.impl;

import java.util.List;

import org.travel.dao.IUserDao;
import org.travel.dao.impl.UserDaoImpl;
import org.travel.entity.User;
import org.travel.service.IUserService;

public class UserServiceImpl implements IUserService {
	IUserDao userDao = new UserDaoImpl();

	// 登录功能
	public boolean Login(User user) {
		boolean str1 = userDao.Login(user);
		boolean str2 = userDao.loginstatus(user.getUname());
		if (str1 && str2) {
			return true;
		} else {
			return false;
		}
	}

	// 修改用户状态
	@Override
	public boolean loginstatus(String name) {
		return userDao.loginstatus(name);

	}

	// 注册功能
	@Override
	public int Register(User user) { // -1用户存在 0注册失败 1注册成功
		if (userDao.isExist(user)) {
			System.out.println("用户存在");
			return -1;
		} else {
			if (userDao.Register(user)) {
				System.out.println("注册成功");
				return 1;
			} else {
				System.out.println("注册失败");
				return 0;
			}
		}
	}

	// 更新密码
	@Override
	public int Update(String uname, String pwd1, String pwd2) {
		User user = userDao.queryUserByName(uname);
		if (!(user.getUpwd().equals(pwd1))) {
			System.out.println("旧密码填写错误");
			return -1;// 旧密码填写错误
		} else {
			if (userDao.Update(uname, pwd2)) {
				System.out.println("更新成功");
				return 1;
			} else {
				System.out.println("更新失败");
				return 0;
			}

		}
	}

	// 查询用户信息
	@Override
	public List<User> queryUsers() {
		return userDao.queryUsers();
	}

	// 管理员修改用户信息
	@Override
	public boolean UpdateUser(User user) {
		return userDao.Update(user.getUname(), user.getUpwd());
	}

}
