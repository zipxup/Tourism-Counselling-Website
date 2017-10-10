package com.dao;

/**
 * 导游信息接口类
 * */
import java.util.List;

public interface IGuideDAO {
	public List select();// 导游全部信息查询

	public List guide(String id);// 导游信息详情查询
}
