package com.daoImpl;
/**
 * 实现景点图片详情接口类
 * */
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.List;

import com.dao.IImageDAO;
import com.vo.Image;
import common.DatabaseManager;

public class ImageImpl implements IImageDAO {
	DatabaseManager db = new DatabaseManager();
	List<Image> list = new ArrayList<Image>();
	Image image = new Image();

	public List<Image> images(String spots_Id) {// 景点信息详情
		String sql = "select image1,image2,image3,image4,image5,scenic_spots_information.spots_name,image.spots_Id from image,scenic_spots_information where scenic_spots_information.spots_Id=image.spots_Id and scenic_spots_information.spots_Id='"
				+ spots_Id + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				image.setImage1(rs.getString("image1"));
				image.setImage2(rs.getString("image2"));
				image.setImage3(rs.getString("image3"));
				image.setImage4(rs.getString("image4"));
				image.setImage5(rs.getString("image5"));
				image.setSpots_Id(rs.getString("spots_Id"));
				image.setName(rs.getString("spots_name"));
				list.add(image);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}
}
