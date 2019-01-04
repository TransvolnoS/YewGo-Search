package com.java.Dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.ColumnListHandler;

import com.java.Utils.DataSourceUtils;

public class kwDao {

	public List<Object> findAuto(String kw) throws SQLException {
		// TODO Auto-generated method stub
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql="select kwname from kw where kwname like ? limit 0,4";
		List<Object> list = qr.query(sql, new ColumnListHandler() , "%"+kw+"%");
		return list;
	}

}
