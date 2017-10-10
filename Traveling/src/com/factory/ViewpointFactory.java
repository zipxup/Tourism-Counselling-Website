package com.factory;
/**
 * ������Ϣ������
 * */
import com.dao.IViewpointDAO;
import com.daoImpl.ViewpointImpl;

public class ViewpointFactory {
	public static IViewpointDAO getViewpointFactory() {
		return new ViewpointImpl();
	}
}
