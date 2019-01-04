package com.java.Utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class DataSourceUtils {
	private static DataSource ds=new ComboPooledDataSource();
	
	//鑾峰彇杩炴帴姹�
	public static DataSource getDataSource(){
		return ds;
	}
	
	//鑾峰彇杩炴帴
	public static Connection getConnection() throws SQLException{
		return ds.getConnection();
	}
}
