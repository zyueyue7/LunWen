package org.travel.entity;

public class WtLink {
	private String linkname;
	private String linkaddress;

	public WtLink() {
	}

	public WtLink(String linkname, String linkaddress) {
		super();
		this.linkname = linkname;
		this.linkaddress = linkaddress;
	}

	public String getLinkname() {
		return linkname;
	}

	public void setLinkname(String linkname) {
		this.linkname = linkname;
	}

	public String getLinkaddress() {
		return linkaddress;
	}

	public void setLinkaddress(String linkaddress) {
		this.linkaddress = linkaddress;
	}

}
