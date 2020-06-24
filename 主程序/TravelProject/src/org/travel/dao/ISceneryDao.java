package org.travel.dao;

import java.util.List;

import org.travel.entity.Scenery;

public interface ISceneryDao {
	// 查询所有的景点
	public List<Scenery> queryAllScenery();

	// 增加景点
	public boolean addScenery(Scenery scenery);

	// 删除景点
	public boolean deleteSceneryById(int id);

	// 修改景点
	public boolean updateSceneryById(int id, Scenery scenery);

	// 根据id查询景点
	public Scenery querySceneryById(int id);

	// 查询该景点是否存在
	public boolean isExist(int id);
}
