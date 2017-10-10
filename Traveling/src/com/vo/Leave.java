package com.vo;
/**
 * 景点留言实体类
 * */
public class Leave {
	private String spots_id;
	private String name;
	private String content;
	private String time;

	public String getSpots_id() {
		return spots_id;
	}

	public void setSpots_id(String spots_id) {
		this.spots_id = spots_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
}
