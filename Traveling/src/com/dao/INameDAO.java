package com.dao;
/**
 * 景点已报名人数查询
 * */
import java.util.List;

import com.vo.Name;

public interface INameDAO {
	public List<Name> select(String spots_Id);//景点的已报名人数查询
}
