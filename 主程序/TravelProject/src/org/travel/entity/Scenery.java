package org.travel.entity;

public class Scenery {
	private int id;
	private String scenery_img;
	private String scenery_name;
	private String scenery_rank;
	private String scenery_address;
	private String scenery_time;
	private String scenery_desc;

	public Scenery() {
	}

	public Scenery(String scenery_img, String scenery_name,
			String scenery_rank, String scenery_address, String scenery_time,
			String scenery_desc) {
		super();
		this.scenery_img = scenery_img;
		this.scenery_name = scenery_name;
		this.scenery_rank = scenery_rank;
		this.scenery_address = scenery_address;
		this.scenery_time = scenery_time;
		this.scenery_desc = scenery_desc;
	}

	public Scenery(int id, String scenery_img, String scenery_name,
			String scenery_rank, String scenery_address, String scenery_time,
			String scenery_desc) {
		super();
		this.id = id;
		this.scenery_img = scenery_img;
		this.scenery_name = scenery_name;
		this.scenery_rank = scenery_rank;
		this.scenery_address = scenery_address;
		this.scenery_time = scenery_time;
		this.scenery_desc = scenery_desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getScenery_img() {
		return scenery_img;
	}

	public void setScenery_img(String scenery_img) {
		this.scenery_img = scenery_img;
	}

	public String getScenery_name() {
		return scenery_name;
	}

	public void setScenery_name(String scenery_name) {
		this.scenery_name = scenery_name;
	}

	public String getScenery_rank() {
		return scenery_rank;
	}

	public void setScenery_rank(String scenery_rank) {
		this.scenery_rank = scenery_rank;
	}

	public String getScenery_address() {
		return scenery_address;
	}

	public void setScenery_address(String scenery_address) {
		this.scenery_address = scenery_address;
	}

	public String getScenery_time() {
		return scenery_time;
	}

	public void setScenery_time(String scenery_time) {
		this.scenery_time = scenery_time;
	}

	public String getScenery_desc() {
		return scenery_desc;
	}

	public void setScenery_desc(String scenery_desc) {
		this.scenery_desc = scenery_desc;
	}

}
