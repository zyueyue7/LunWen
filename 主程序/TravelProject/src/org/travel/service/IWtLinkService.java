package org.travel.service;

import java.util.List;

import org.travel.entity.WtLink;

public interface IWtLinkService {
	// 查询所有链接名
	public List<WtLink> queryAllLinks();

	// 删除链接
	public boolean deletelink(String linkname);

	// 增加链接
	public int addlink(WtLink wtLink);
}
