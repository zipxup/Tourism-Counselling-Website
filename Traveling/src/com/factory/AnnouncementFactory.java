package com.factory;

/**
 * 公告信息工厂类
 * */
import com.dao.IAnnouncementDAO;
import com.daoImpl.AnnouncementImpl;

public class AnnouncementFactory {
	public static IAnnouncementDAO getaAnnouncementFactory() {
		return new AnnouncementImpl();
	}
}
