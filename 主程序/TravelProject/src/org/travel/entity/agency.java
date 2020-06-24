package org.travel.entity;

public class agency {
	private int id;
	private String agencyimg;
	private String agencyname;
	private String agencyaddress;
	private String agencyphone;

	public agency() {
	}

	public agency(String agencyimg, String agencyname, String agencyaddress,
			String agencyphone) {
		super();
		this.agencyimg = agencyimg;
		this.agencyname = agencyname;
		this.agencyaddress = agencyaddress;
		this.agencyphone = agencyphone;
	}

	public agency(int id, String agencyimg, String agencyname,
			String agencyaddress, String agencyphone) {
		super();
		this.id = id;
		this.agencyimg = agencyimg;
		this.agencyname = agencyname;
		this.agencyaddress = agencyaddress;
		this.agencyphone = agencyphone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAgencyimg() {
		return agencyimg;
	}

	public void setAgencyimg(String agencyimg) {
		this.agencyimg = agencyimg;
	}

	public String getAgencyname() {
		return agencyname;
	}

	public void setAgencyname(String agencyname) {
		this.agencyname = agencyname;
	}

	public String getAgencyaddress() {
		return agencyaddress;
	}

	public void setAgencyaddress(String agencyaddress) {
		this.agencyaddress = agencyaddress;
	}

	public String getAgencyphone() {
		return agencyphone;
	}

	public void setAgencyphone(String agencyphone) {
		this.agencyphone = agencyphone;
	}

}
