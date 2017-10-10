package com.factory;
/**
 * ������Ϣ������
 * */
import com.dao.IGuideDAO;
import com.daoImpl.GuideImpl;

public class GuideFactory {
	public static IGuideDAO getGuideFactory() {
		return new GuideImpl();
	}
}
