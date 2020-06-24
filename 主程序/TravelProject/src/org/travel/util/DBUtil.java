package org.travel.util;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

//通用的数据操作方法
public class DBUtil {

	private static final String URL = "jdbc:mysql://localhost:3306/travel";
	private static final String USERNAEM = "root";
	private static final String PASSWORD = "123456";

	public static Connection connection = null;
	public static PreparedStatement pstmt = null;
	public static ResultSet rs = null;

	// 得到pstmt
	public static PreparedStatement creatpPreparedStatement(String sql,
			Object[] params) throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = (Connection) DriverManager.getConnection(URL, USERNAEM,
				PASSWORD);

		pstmt = (PreparedStatement) connection.prepareStatement(sql);
		if (params != null) {
			for (int i = 0; i < params.length; i++) {
				pstmt.setObject(i + 1, params[i]);
			}
		}
		return pstmt;
	}

	// 关闭连接
	public static void closeAll(Connection connection, Statement statement,
			ResultSet rs) throws SQLException {
		if (rs != null)
			rs.close();
		if (statement != null)
			statement.close();
		if (connection != null)
			connection.close();
	}

	// 通用的查：返回值是一个集合（Student,List<Student>,null）
	public static ResultSet executeQuery(String sql, Object[] params) {
		try {
			rs = creatpPreparedStatement(sql, params).executeQuery();
			return rs;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 增删改
	public static boolean executeUpdate(String sql, Object[] params) {

		try {
			pstmt = creatpPreparedStatement(sql, params);

			int count = pstmt.executeUpdate();
			if (count > 0)
				return true;
			else {
				return false;
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				closeAll(connection, pstmt, rs);
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}
	}

	// 查询总数
	public static int getTotalCount(String sql) {
		int count = -1;
		try {
			pstmt = creatpPreparedStatement(sql, null);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				closeAll(connection, pstmt, rs);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return count;
	}

}
