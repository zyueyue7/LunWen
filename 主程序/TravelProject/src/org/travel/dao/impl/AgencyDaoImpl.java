package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.IAgencyDao;
import org.travel.entity.agency;
import org.travel.util.DBUtil;

public class AgencyDaoImpl implements IAgencyDao {

	// 查询所有的旅行社
	@Override
	public List<agency> queryAllAgency() {
		ResultSet rs = null;
		List<agency> agencies = new ArrayList<>();
		agency agency = null;
		try {
			String sql = "SELECT * FROM tr_agency";
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				int id = rs.getInt("id");
				String agencyimg = rs.getString("agencyimg");
				String agencyname = rs.getString("agencyname");
				String agencyaddress = rs.getString("agencyaddress");
				String agencyphone = rs.getString("agencyphone");
				agency = new agency(id, agencyimg, agencyname, agencyaddress,
						agencyphone);
				agencies.add(agency);
			}
			return agencies;
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

	// 增加一个旅行社
	@Override
	public boolean addAgency(agency agency) {
		String sql = "INSERT INTO tr_agency(agencyimg,agencyname,agencyaddress,agencyphone) VALUES(?,?,?,?)";
		Object[] params = { agency.getAgencyimg(), agency.getAgencyname(),
				agency.getAgencyaddress(), agency.getAgencyphone() };
		return DBUtil.executeUpdate(sql, params);
	}

	// 删除一个旅行社
	@Override
	public boolean deleteAgency(int id) {
		String sql = "DELETE FROM tr_agency WHERE id = ?";
		Object[] params = { id };
		return DBUtil.executeUpdate(sql, params);
	}

	// 根据id查询旅行社
	@Override
	public agency queryAgencyById(int id) {
		ResultSet rs = null;
		agency agency = null;
		try {
			String sql = "SELECT * from tr_agency WHERE id =?";
			Object[] params = { id };
			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				int no = rs.getInt("id");
				String agencyimg = rs.getString("agencyimg");
				String agencyname = rs.getString("agencyname");
				String agencyphone = rs.getString("agencyphone");
				String agencyaddress = rs.getString("agencaddress");
				agency = new agency(no, agencyimg, agencyname, agencyaddress,
						agencyphone);
			}
			return agency;
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

	@Override
	public agency queryAgencyByName(String name) {
		ResultSet rs = null;
		agency agency = null;
		try {
			String sql = "SELECT *  from tr_agency WHERE agencyname = ?";
			Object[] params = { name };
			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				int id = rs.getInt("id");
				String agencyimg = rs.getString("agencyimg");
				String agencyname = rs.getString("agencyname");
				String agencyphone = rs.getString("agencyphone");
				String agencyaddress = rs.getString("agencyaddress");
				agency = new agency(id, agencyimg, agencyname, agencyaddress,
						agencyphone);
			}
			return agency;
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

}
