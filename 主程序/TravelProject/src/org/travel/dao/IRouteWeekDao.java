package org.travel.dao;

import java.util.List;

import org.travel.entity.RouteWeek;

public interface IRouteWeekDao {
	// 查询所有的路线
	public List<RouteWeek> queryAllRouteWeek();

	// 增加路线
	public boolean addRouteWeek(RouteWeek routeWeek);

	// 删除路线
	public boolean deleteRouteWeekById(int id);

	// 修改路线
	public boolean updateRouteWeekById(int id, RouteWeek routeWeek);

	// 根据id查询路线
	public RouteWeek queryRouteWeekById(int id);

	// 查询该路线是否存在
	public boolean isExist(int id);
}
