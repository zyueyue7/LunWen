package org.travel.service.impl;

import java.util.List;

import org.travel.dao.IWtLinkDao;
import org.travel.dao.impl.WtLinkDaoImpl;
import org.travel.entity.WtLink;
import org.travel.service.IWtLinkService;

public class WtLinkServiceImpl implements IWtLinkService {

	IWtLinkDao iWtLinkDao = new WtLinkDaoImpl();

	// 查询所有链接
	@Override
	public List<WtLink> queryAllLinks() {
		List<WtLink> wtLinks = iWtLinkDao.queryAllLinks();
		return wtLinks;
	}

	// 删除链接
	@Override
	public boolean deletelink(String linkname) {
		return iWtLinkDao.deletelink(linkname);
	}

	// 增加链接 2表示链接存在 1表示增加成功 0表示增加失败
	@Override
	public int addlink(WtLink wtLink) {
		WtLink wtLink2 = iWtLinkDao.querylink(wtLink.getLinkname());
		if (wtLink2 != null) {
			return 2;
		} else {
			if (iWtLinkDao.addlink(wtLink)) {
				return 1;
			} else {
				return 0;
			}
		}

	}
}
