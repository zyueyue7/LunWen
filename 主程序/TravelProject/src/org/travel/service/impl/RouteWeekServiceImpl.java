package org.travel.service.impl;

import java.util.List;

import org.travel.dao.IRouteWeekDao;
import org.travel.dao.impl.RouteWeekImpl;
import org.travel.entity.RouteWeek;
import org.travel.service.IRouteWeekService;

public class RouteWeekServiceImpl implements IRouteWeekService {

	IRouteWeekDao routeWeekDao = new RouteWeekImpl();

	// 查询全部的路线
	@Override
	public List<RouteWeek> queryAllRouteWeeks() {
		// TODO Auto-generated method stub
		return routeWeekDao.queryAllRouteWeek();
	}

	// 增加路线
	@Override
	public boolean addRouteWeek(RouteWeek routeWeek) {
		// TODO Auto-generated method stub
		if (!routeWeekDao.isExist(routeWeek.getId())) {
			routeWeekDao.addRouteWeek(routeWeek);
			System.out.print("不存在，增加成功！");
			return true;
		} else {
			System.out.print("存在，增加失败！");
			return false;
		}

	}

	// 删除路线
	@Override
	public boolean deleteRouteWeekById(int id) {
		// TODO Auto-generated method stub
		if (routeWeekDao.isExist(id)) {
			routeWeekDao.deleteRouteWeekById(id);
			System.out.print("存在，删除成功！");
			return true;
		} else {
			System.out.print("不存在，删除失败！");
			return false;
		}
	}

	// 更新路线
	@Override
	public boolean updateRouteWeekById(int id, RouteWeek routeWeek) {
		// TODO Auto-generated method stub
		if (routeWeekDao.isExist(id)) {
			routeWeekDao.updateRouteWeekById(id, routeWeek);
			System.out.print("存在，更新成功！");
			return true;
		} else {
			System.out.print("不存在，更新失败！");
			return false;
		}

	}

	// 根据id查询路线
	@Override
	public RouteWeek queryRouteWeekById(int id) {
		// TODO Auto-generated method stub
		return routeWeekDao.queryRouteWeekById(id);
	}

}
