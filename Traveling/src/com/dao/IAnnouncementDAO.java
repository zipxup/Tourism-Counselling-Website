package com.dao;

import java.util.List;

/**
 * 公告信息接口
 * */
public interface IAnnouncementDAO {
	public List select();// 公告信息查询

	public boolean rester(String name,String title,String content);// 添加 公告
}
