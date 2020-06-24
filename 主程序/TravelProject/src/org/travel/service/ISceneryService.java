package org.travel.service;

import java.util.List;

import org.travel.entity.Scenery;

public interface ISceneryService {
	// 查询全部的景点
	public List<Scenery> queryAllScenery();

	// 增加景点
	public boolean addScenery(Scenery scenery);

	// 删除景点
	public boolean deleteSceneryById(int id);

	// 更新景点
	public boolean updateSceneryById(int id, Scenery scenery);

	// 根据id查询景点
	public Scenery querySceneryById(int id);

}
