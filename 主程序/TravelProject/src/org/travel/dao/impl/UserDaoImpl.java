package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.IUserDao;
import org.travel.entity.User;
import org.travel.util.DBUtil;

public class UserDaoImpl implements IUserDao {
	ResultSet rs = null;

	// 登录功能
	public boolean Login(User user) {

		try {
			String sql = "select * from tr_user where username=? and password=? and class=?";
			Object[] params = { user.getUname(), user.getUpwd(),
					user.getUserclass() };

			rs = DBUtil.executeQuery(sql, params);

			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	// 修改登录状态
	@Override
	public boolean loginstatus(String name) {

		User user = queryUserByName(name);
		if (user == null) {
			return false;
		} else {
			int status = user.getStatus();
			if (status == 1) {
				Object[] params1 = { 0, name };
				String sql1 = "UPDATE tr_user SET status = ? where username = ?";
				return DBUtil.executeUpdate(sql1, params1);
			} else {
				Object[] params1 = { 1, name };
				String sql1 = "UPDATE tr_user SET status = ? where username = ?";
				return DBUtil.executeUpdate(sql1, params1);
			}

		}

	}

	// 注册功能
	@Override
	public boolean Register(User user) {
		String sql = "INSERT INTO tr_user(username,password,phone,email,class)VALUES(?,?,?,?,?)";
		Object[] params = { user.getUname(), user.getUpwd(), user.getPhone(),
				user.getEmail(), "2" };
		return DBUtil.executeUpdate(sql, params);
	}

	// 更新密码
	@Override
	public boolean Update(String uname, String pwd) {
		String sql = "UPDATE tr_user SET  password = ?  WHERE username = ?";
		Object[] params = { pwd, uname };
		return DBUtil.executeUpdate(sql, params);
	}

	// 用户是否存在
	@Override
	public boolean isExist(User user) {
		return queryUserByName(user.getUname()) == null ? false : true;
	}

	// 根据用户名查询用户
	@Override
	public User queryUserByName(String uname) {
		User user = null;
		try {
			String sql = "SELECT * FROM tr_user where username= ?";
			Object[] params = { uname };
			rs = DBUtil.executeQuery(sql, params);

			if (rs.next()) {

				String name = rs.getString("username");
				String pwd = rs.getString("password");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				int status = rs.getInt("status");

				user = new User(name, pwd, phone, email, status);
			}
			return user;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// 查询全部的用户信息
	@Override
	public List<User> queryUsers() {
		List<User> users = new ArrayList<>();
		User user = null;

		try {
			String sql = "SELECT * FROM tr_user ";
			rs = DBUtil.executeQuery(sql, null);

			while (rs.next()) {
				String name = rs.getString("username");
				String pwd = rs.getString("password");
				String phone = rs.getString("phone");
				String email = rs.getString("email");
				String userclass = rs.getString("class");

				user = new User(name, pwd, phone, email, userclass);
				users.add(user);
			}
			return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
