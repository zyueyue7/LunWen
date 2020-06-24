package org.travel.service;

import java.util.List;

import org.travel.entity.agency;

public interface IAgencyService {
	// 查询所有的旅行社
	public List<agency> queryAllAgency();

	// 增加一个旅行社
	public int addAgency(agency agency);

	// 删除一个旅行社
	public boolean deleteAgency(int id);

}
