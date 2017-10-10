package com.factory;
/**
 * 景点留言工厂类
 * */
import com.dao.ILeaveDAO;
import com.daoImpl.LeaveImpl;

public class LeaveFactory {
	public static ILeaveDAO getleLeaveDAO() {
		return new LeaveImpl();
	}
}
