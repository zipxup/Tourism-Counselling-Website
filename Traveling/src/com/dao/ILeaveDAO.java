package com.dao;
/**
 * 景点留言接口类
 * */
import java.util.List;

import com.vo.Leave;

public interface ILeaveDAO {
	public boolean insert(Leave leave);// 添加景点信息的留言

	public int number(int spots_Id);// 查询当前景点的留言数

	public List select(int i, int j);// 查询当前的5条记录
}
