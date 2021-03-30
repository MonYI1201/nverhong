package com.nverhong.two.utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 数据库连接池
 * @author MonYI
 */
public class DataSourceUtil {

	private static String driver;
	private static String url;
	private static String user;
	private static String password;

	static {
		init();
	}

	public static void init() {
		Properties params = new Properties();
		String configFile = "database.properties";
		InputStream is = DataSourceUtil.class.getClassLoader().getResourceAsStream(configFile);
		try {
			params.load(is);
		}catch(IOException e) {
			e.printStackTrace();
		}

		driver = params.getProperty("driver");
		url = params.getProperty("url");
		user = params.getProperty("user");
		password = params.getProperty("password");
	}

	public static Connection  openConnection() throws SQLException{
		Connection connection = null;
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url,user,password);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return connection;
	}

	public static void closeConnection(Connection connection) {
		try {
			if(connection != null) {
				connection.close();
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
