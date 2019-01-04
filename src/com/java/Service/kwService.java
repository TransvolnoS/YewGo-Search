package com.java.Service;

import java.sql.SQLException;
import java.util.List;

import com.java.Dao.kwDao;

public class kwService {

	public List<Object> findAuto(String kw) throws SQLException {
		// TODO Auto-generated method stub
		kwDao kd = new kwDao();
		return kd.findAuto(kw);
	}

}
