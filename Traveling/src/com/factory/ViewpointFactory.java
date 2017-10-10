package com.factory;
/**
 * 景点信息工厂类
 * */
import com.dao.IViewpointDAO;
import com.daoImpl.ViewpointImpl;

public class ViewpointFactory {
	public static IViewpointDAO getViewpointFactory() {
		return new ViewpointImpl();
	}
}
