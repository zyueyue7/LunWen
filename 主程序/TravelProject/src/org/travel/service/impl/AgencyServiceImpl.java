package org.travel.service.impl;

import java.util.List;

import org.travel.dao.IAgencyDao;
import org.travel.dao.impl.AgencyDaoImpl;
import org.travel.entity.agency;
import org.travel.service.IAgencyService;

public class AgencyServiceImpl implements IAgencyService {

	IAgencyDao agencyDao = new AgencyDaoImpl();

	// 查询所有旅行社
	@Override
	public List<agency> queryAllAgency() {
		return agencyDao.queryAllAgency();
	}

	// 增加一个旅行社 2表示存在，1表示增加成功，0表示增加失败
	@Override
	public int addAgency(agency agency) {
		agency agency2 = agencyDao.queryAgencyByName(agency.getAgencyname());
		if (agency2 != null) {
			System.out.print("旅行社已经存在");
			return 2;
		} else {
			if (agencyDao.addAgency(agency)) {
				System.out.print("旅行社增加成功");
				return 1;
			} else {
				System.out.print("旅行社增加失败");
				return 0;
			}

		}

	}

	// 删除一个旅行社
	@Override
	public boolean deleteAgency(int id) {
		return agencyDao.deleteAgency(id);
	}

}
