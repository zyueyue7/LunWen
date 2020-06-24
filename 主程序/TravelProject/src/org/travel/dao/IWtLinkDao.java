package org.travel.dao;

import java.util.List;

import org.travel.entity.WtLink;

public interface IWtLinkDao {
	// 查询所有链接名
	public List<WtLink> queryAllLinks();

	// 根据链接名查询
	public WtLink querylink(String linkname);

	// 删除链接
	public boolean deletelink(String linkname);

	// 增加链接
	public boolean addlink(WtLink wtLink);
}
