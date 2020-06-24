package org.travel.dao;

import java.util.List;

import org.travel.entity.agency;

public interface IAgencyDao {
	// 查询所有的旅行社
	public List<agency> queryAllAgency();

	// 增加一个旅行社
	public boolean addAgency(agency agency);

	// 删除一个旅行社
	public boolean deleteAgency(int id);

	// 根据id查找一个旅行社
	public agency queryAgencyById(int id);

	// 根据名字查询旅行社
	public agency queryAgencyByName(String name);
}
