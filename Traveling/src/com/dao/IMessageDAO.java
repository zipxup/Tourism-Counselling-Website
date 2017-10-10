package com.dao;
/**
 * 用户提交意见接口类
 * */
import com.vo.Message;

public interface IMessageDAO {
	public boolean insert(Message leavemessage);// 意见提交借口
}
