package com.dao;

/**
 * 景点信息的借口
 * */
import java.util.List;

public interface IViewpointDAO {
	public List selManager(int spots_Id);// 景点信息查询的四条值

	public List xiangxi(int spots_Id);// 详细信息查询
	
	public String name(String spots_Id);//电子邮件景点名称查询

}
