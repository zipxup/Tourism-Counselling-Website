package com.dao;

/**
 * ����ͼƬ����ӿ���
 */
import java.util.List;

import com.vo.Image;

public interface IImageDAO {
	public List<Image> images(String spots_Id);// ������Ϣ����
}
