package com.factory;
/**
 * 首页随机显示信息工厂类
 * */
import com.dao.IIndexSelectDAO;
import com.daoImpl.IndexSelectImpl;

public class Index_selectFactory {
	public static IIndexSelectDAO getViewpointFactory() {
		return new IndexSelectImpl();
	}
}
