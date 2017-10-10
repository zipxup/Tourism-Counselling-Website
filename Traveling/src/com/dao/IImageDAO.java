package com.dao;

/**
 * 景点图片详情接口类
 */
import java.util.List;

import com.vo.Image;

public interface IImageDAO {
	public List<Image> images(String spots_Id);// 景点信息详情
}
