package org.travel.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.travel.dao.IWtLinkDao;
import org.travel.entity.WtLink;
import org.travel.util.DBUtil;

public class WtLinkDaoImpl implements IWtLinkDao {

	// 查询所有链接名
	@Override
	public List<WtLink> queryAllLinks() {
		List<WtLink> wtLinks = new ArrayList<>();
		ResultSet rs = null;
		try {
			String sql = "SELECT * from tr_wtlink;";
			rs = DBUtil.executeQuery(sql, null);
			while (rs.next()) {
				String linkname = rs.getString("linkname");
				String linkaddress = rs.getString("linkadress");
				WtLink wtLink = new WtLink(linkname, linkaddress);
				wtLinks.add(wtLink);
			}
			return wtLinks;
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

	// 根据链接名查询
	@Override
	public WtLink querylink(String linkname) {
		ResultSet rs = null;
		WtLink wtLink = null;
		try {
			String sql = "SELECT * FROM tr_wtlink WHERE linkname=?";
			Object[] params = { linkname };
			rs = DBUtil.executeQuery(sql, params);
			if (rs.next()) {
				String Linkname = rs.getString("Linkname");
				String linkadress = rs.getString("linkadress");
				wtLink = new WtLink(Linkname, linkadress);
			}
			return wtLink;
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

	// 删除链接
	@Override
	public boolean deletelink(String linkname) {
		String sql = "DELETE FROM tr_wtlink WHERE linkname = ?";
		Object[] params = { linkname };
		return DBUtil.executeUpdate(sql, params);
	}

	// 增加链接
	@Override
	public boolean addlink(WtLink wtLink) {
		String sql = "INSERT INTO tr_wtlink VALUES(?,?)";
		Object[] params = { wtLink.getLinkname(), wtLink.getLinkaddress() };
		return DBUtil.executeUpdate(sql, params);
	}

}
