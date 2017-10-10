package com.dao;
/**
 * 查询所有记录的总数接口
 * */
import java.util.List;
public interface INumberDAO {
	public int number();// 查询景点信息的记录总数
	
	public List select(String i);//条形柱状图的查询值
	
	public List shanxing();//扇形图的查询值
}
