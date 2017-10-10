package com.factory;
/**
 * 导游信息工厂类
 * */
import com.dao.IGuideDAO;
import com.daoImpl.GuideImpl;

public class GuideFactory {
	public static IGuideDAO getGuideFactory() {
		return new GuideImpl();
	}
}
