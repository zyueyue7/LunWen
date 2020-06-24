package org.travel.service.impl;

import java.util.List;

import org.travel.dao.ISceneryDao;
import org.travel.dao.impl.SceneryDaoImpl;
import org.travel.entity.Scenery;
import org.travel.service.ISceneryService;

public class SceneryServiceImpl implements ISceneryService {

	ISceneryDao sceneryDao = new SceneryDaoImpl();

	/* 查询全部的景点 */
	@Override
	public List<Scenery> queryAllScenery() {
		return sceneryDao.queryAllScenery();
	}

	/* 增加景点 */
	@Override
	public boolean addScenery(Scenery scenery) {
		if (!sceneryDao.isExist(scenery.getId())) {
			sceneryDao.addScenery(scenery);
			System.out.print("不存在，增加成功！");
			return true;
		} else {
			System.out.print("存在，增加失败！");
			return false;
		}
	}

	/* 删除景点 */
	@Override
	public boolean deleteSceneryById(int id) {
		if (sceneryDao.isExist(id)) {
			sceneryDao.deleteSceneryById(id);
			return true;
		} else {
			return false;
		}
	}

	/* 更新景点 */
	@Override
	public boolean updateSceneryById(int id, Scenery scenery) {
		if (sceneryDao.isExist(id)) {
			sceneryDao.updateSceneryById(id, scenery);
			return true;
		} else {
			return false;
		}
	}

	/* 根据景点的id查询景点 */
	@Override
	public Scenery querySceneryById(int id) {
		return sceneryDao.querySceneryById(id);
	}

}
