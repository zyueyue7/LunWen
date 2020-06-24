package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.IRouteWeekDao;
import org.travel.entity.RouteWeek;
import org.travel.util.DBUtil;

public class RouteWeekImpl implements IRouteWeekDao {

	// 查询所有的路线
	@Override
	public List<RouteWeek> queryAllRouteWeek() {
		List<RouteWeek> routeWeeks = new ArrayList<>();
		ResultSet rs = null;
		RouteWeek routeWeek = null;

		try {
			String sql = "SELECT * FROM tr_routew;";
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("routew_name");
				String img1 = rs.getString("routew_img1");
				String img2 = rs.getString("routew_img2");
				String img3 = rs.getString("routew_img3");
				String img4 = rs.getString("routew_img4");
				String img5 = rs.getString("routew_img5");
				int price = rs.getInt("routew_price");
				String route = rs.getString("routew_route");

				routeWeek = new RouteWeek(id, name, img1, img2, img3, img4,
						img5, price, route);
				routeWeeks.add(routeWeek);
			}
			return routeWeeks;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				DBUtil.closeAll(DBUtil.connection, DBUtil.pstmt, rs);
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	// 增加路线
	@Override
	public boolean addRouteWeek(RouteWeek routeWeek) {
		String sql = "INSERT INTO tr_routew VALUES(?,?,?,? ,?, ?, ?, ?,? )";
		Object[] params = { routeWeek.getId(), routeWeek.getRoutew_name(),
				routeWeek.getRoutew_img1(), routeWeek.getRoutew_img2(),
				routeWeek.getRoutew_img3(), routeWeek.getRoutew_img4(),
				routeWeek.getRoutew_img5(), routeWeek.getRoutew_price(),
				routeWeek.getRoutew_route() };
		return DBUtil.executeUpdate(sql, params);
	}

	// 删除路线
	@Override
	public boolean deleteRouteWeekById(int id) {
		String sql = "DELETE FROM tr_routew WHERE id= ?";
		Object[] params = { id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 更新路线
	@Override
	public boolean updateRouteWeekById(int id, RouteWeek routeWeek) {
		String sql = "UPDATE tr_routew SET routew_name = ?,routew_img1 = ?,routew_img2 = ?,routew_img3 = ?,routew_img4 = ?,routew_img5 = ?,routew_price = ?,routew_route = ?  WHERE id=?";
		Object[] params = { routeWeek.getRoutew_name(),
				routeWeek.getRoutew_img1(), routeWeek.getRoutew_img2(),
				routeWeek.getRoutew_img3(), routeWeek.getRoutew_img4(),
				routeWeek.getRoutew_img5(), routeWeek.getRoutew_price(),
				routeWeek.getRoutew_route(), id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 根据id查询路线
	@Override
	public RouteWeek queryRouteWeekById(int id) {
		ResultSet rs = null;
		RouteWeek routeWeek = null;
		try {
			String sql = "SELECT * FROM tr_routew where id= ?";
			Object[] params = { id };

			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				int no = rs.getInt("id");
				String name = rs.getString("routew_name");
				String img1 = rs.getString("routew_img1");
				String img2 = rs.getString("routew_img2");
				String img3 = rs.getString("routew_img3");
				String img4 = rs.getString("routew_img4");
				String img5 = rs.getString("routew_img5");
				int price = rs.getInt("routew_price");
				String route = rs.getString("routew_route");

				routeWeek = new RouteWeek(no, name, img1, img2, img3, img4,
						img5, price, route);

			}
			return routeWeek;
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

	// 查询该路线是否存咋
	@Override
	public boolean isExist(int id) {
		// TODO Auto-generated method stub
		return queryRouteWeekById(id) == null ? false : true;
	}

}
