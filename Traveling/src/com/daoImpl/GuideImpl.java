package com.daoImpl;

/**
 * 实现导游信息接口类
 * */
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.dao.IGuideDAO;
import com.vo.Guide;
import common.DatabaseManager;

public class GuideImpl implements IGuideDAO {
	DatabaseManager db = new DatabaseManager();
	List<Guide> list = new ArrayList<Guide>();

	public List<Guide> select() {// 全部导游信息
		String sql = "select Id,name,image,tel,jianjie,QQ from guide";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			while (rs.next()) {
				Guide guide = new Guide();
				guide.setId(rs.getString("Id"));
				guide.setName(rs.getString("name"));
				guide.setImage(rs.getString("image"));
				guide.setTel(rs.getString("tel"));
				guide.setJianjie(rs.getString("jianjie"));
				guide.setQQ(rs.getString("QQ"));
				list.add(guide);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

	public List<Guide> guide(String id) {// 单个导游信息
		String sql = "select Id,name,image,sex,tel,email,jianjie,QQ from guide where Id='"
				+ id + "'";
		ResultSet rs;
		try {
			rs = db.executeQuery(sql);
			if (rs.next()) {
				Guide guide = new Guide();
				guide.setId(rs.getString("Id"));
				guide.setName(rs.getString("name"));
				guide.setImage(rs.getString("image"));
				guide.setSex(rs.getString("sex"));
				guide.setTel(rs.getString("tel"));
				guide.setEmail(rs.getString("email"));
				guide.setJianjie(rs.getString("jianjie"));
				guide.setQQ(rs.getString("QQ"));
				list.add(guide);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close();
		}
		return list;
	}

}
