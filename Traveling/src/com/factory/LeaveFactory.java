package com.factory;
/**
 * �������Թ�����
 * */
import com.dao.ILeaveDAO;
import com.daoImpl.LeaveImpl;

public class LeaveFactory {
	public static ILeaveDAO getleLeaveDAO() {
		return new LeaveImpl();
	}
}
