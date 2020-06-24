package org.travel.service;

import java.util.List;

import org.travel.entity.RouteWeek;

public interface IRouteWeekService {
	// 查询全部的路线
	public List<RouteWeek> queryAllRouteWeeks();

	// 增加路线
	public boolean addRouteWeek(RouteWeek routeWeek);

	// 删除路线
	public boolean deleteRouteWeekById(int id);

	// 更新路线
	public boolean updateRouteWeekById(int id, RouteWeek routeWeek);

	// 根据id查询路线
	public RouteWeek queryRouteWeekById(int id);

}
