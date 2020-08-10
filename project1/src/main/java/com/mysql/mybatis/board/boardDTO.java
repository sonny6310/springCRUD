package com.mysql.mybatis.board;

public class boardDTO {
	private int id;
	private String title;
	private String content;
	private String reg_date;
	private String mod_date;

	public boardDTO(int id, String title, String content, String reg_date, String mod_date) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.mod_date = mod_date;
	}

	public boardDTO() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getMod_date() {
		return mod_date;
	}

	public void setMod_date(String mod_date) {
		this.mod_date = mod_date;
	}

	@Override
	public String toString() {
		return "boardDTO [id=" + id + ", title=" + title + ", content=" + content + ", reg_date=" + reg_date
				+ ", mod_date=" + mod_date + "]";
	}
}
