package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.ISceneryDao;
import org.travel.entity.Scenery;
import org.travel.util.DBUtil;

public class SceneryDaoImpl implements ISceneryDao {

	/* 查询所有的风景 */
	public List<Scenery> queryAllScenery() {
		List<Scenery> sceneries = new ArrayList<>();
		ResultSet rs = null;
		Scenery scenery = null;

		try {
			String sql = "SELECT * FROM tr_scenery";
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				int id = rs.getInt("id");
				String img = rs.getString("scenery_img");
				String name = rs.getString("scenery_name");
				String rank = rs.getString("scenery_rank");
				String address = rs.getString("scenery_address");
				String time = rs.getString("scenery_time");
				String desc = rs.getString("scenery_desc");
				scenery = new Scenery(id, img, name, rank, address, time, desc);
				sceneries.add(scenery);
			}
			return sceneries;
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

	/* 增加景点 */
	@Override
	public boolean addScenery(Scenery scenery) {
		String sql = "INSERT INTO tr_scenery VALUES(?,?,?,?,?,?,?)";
		Object[] params = { scenery.getId(), scenery.getScenery_img(),
				scenery.getScenery_name(), scenery.getScenery_rank(),
				scenery.getScenery_address(), scenery.getScenery_time(),
				scenery.getScenery_desc() };
		return DBUtil.executeUpdate(sql, params);
	}

	/* 删除景点 */
	@Override
	public boolean deleteSceneryById(int id) {
		String sql = "DELETE FROM tr_scenery WHERE id= ?";
		Object[] params = { id };
		return DBUtil.executeUpdate(sql, params);
	}

	/* 更新景点 */
	@Override
	public boolean updateSceneryById(int id, Scenery scenery) {
		String sql = "UPDATE tr_scenery SET scenery_img = ? ,scenery_name = ? ,scenery_rank = ?,  scenery_address= ?,scenery_time = ?, scenery_desc =? WHERE id=?";
		Object[] params = { scenery.getScenery_img(),
				scenery.getScenery_name(), scenery.getScenery_rank(),
				scenery.getScenery_address(), scenery.getScenery_time(),
				scenery.getScenery_desc(), id };
		return DBUtil.executeUpdate(sql, params);
	}

	/* 根据id查询景点 */
	@Override
	public Scenery querySceneryById(int id) {
		ResultSet rs = null;
		Scenery scenery = null;
		try {
			String sql = "SELECT * FROM tr_scenery where id= ?";
			Object[] params = { id };

			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				int no = rs.getInt("id");
				String img = rs.getString("scenery_img");
				String name = rs.getString("scenery_name");
				String rank = rs.getString("scenery_rank");
				String address = rs.getString("scenery_address");
				String time = rs.getString("scenery_time");
				String desc = rs.getString("scenery_desc");
				scenery = new Scenery(no, img, name, rank, address, time, desc);
			}
			return scenery;
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

	/* 判断该景点是否存在 */
	@Override
	public boolean isExist(int id) {
		// TODO Auto-generated method stub
		return querySceneryById(id) == null ? false : true;
	}

}
