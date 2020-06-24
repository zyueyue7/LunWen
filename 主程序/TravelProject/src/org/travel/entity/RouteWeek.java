package org.travel.entity;

public class RouteWeek {
	private int id;
	private String routew_name;
	private String routew_img1;
	private String routew_img2;
	private String routew_img3;
	private String routew_img4;
	private String routew_img5;
	private int routew_price;
	private String routew_route;

	public RouteWeek() {

	}

	public RouteWeek(String routew_name, String routew_img1,
			String routew_img2, String routew_img3, String routew_img4,
			String routew_img5, int routew_price, String routew_route) {
		super();
		this.routew_name = routew_name;
		this.routew_img1 = routew_img1;
		this.routew_img2 = routew_img2;
		this.routew_img3 = routew_img3;
		this.routew_img4 = routew_img4;
		this.routew_img5 = routew_img5;
		this.routew_price = routew_price;
		this.routew_route = routew_route;
	}

	public RouteWeek(int id, String routew_name, String routew_img1,
			String routew_img2, String routew_img3, String routew_img4,
			String routew_img5, int routew_price, String routew_route) {
		super();
		this.id = id;
		this.routew_name = routew_name;
		this.routew_img1 = routew_img1;
		this.routew_img2 = routew_img2;
		this.routew_img3 = routew_img3;
		this.routew_img4 = routew_img4;
		this.routew_img5 = routew_img5;
		this.routew_price = routew_price;
		this.routew_route = routew_route;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRoutew_name() {
		return routew_name;
	}

	public void setRoutew_name(String routew_name) {
		this.routew_name = routew_name;
	}

	public String getRoutew_img1() {
		return routew_img1;
	}

	public void setRoutew_img1(String routew_img1) {
		this.routew_img1 = routew_img1;
	}

	public String getRoutew_img2() {
		return routew_img2;
	}

	public void setRoutew_img2(String routew_img2) {
		this.routew_img2 = routew_img2;
	}

	public String getRoutew_img3() {
		return routew_img3;
	}

	public void setRoutew_img3(String routew_img3) {
		this.routew_img3 = routew_img3;
	}

	public String getRoutew_img4() {
		return routew_img4;
	}

	public void setRoutew_img4(String routew_img4) {
		this.routew_img4 = routew_img4;
	}

	public String getRoutew_img5() {
		return routew_img5;
	}

	public void setRoutew_img5(String routew_img5) {
		this.routew_img5 = routew_img5;
	}

	public int getRoutew_price() {
		return routew_price;
	}

	public void setRoutew_price(int routew_price) {
		this.routew_price = routew_price;
	}

	public String getRoutew_route() {
		return routew_route;
	}

	public void setRoutew_route(String routew_route) {
		this.routew_route = routew_route;
	}

}
