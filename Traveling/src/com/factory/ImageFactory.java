package com.factory;
/**
 * ��������ͼƬ������
 * */
import com.dao.IImageDAO;
import com.daoImpl.ImageImpl;

public class ImageFactory {
	public static IImageDAO getImageFactory() {
		return new ImageImpl();
	}
}
