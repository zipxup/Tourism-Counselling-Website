package com.factory;
/**
 * 景点详情图片工厂类
 * */
import com.dao.IImageDAO;
import com.daoImpl.ImageImpl;

public class ImageFactory {
	public static IImageDAO getImageFactory() {
		return new ImageImpl();
	}
}
