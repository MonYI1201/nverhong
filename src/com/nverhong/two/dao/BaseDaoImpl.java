package com.nverhong.two.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.apache.log4j.Logger;


public abstract class BaseDaoImpl implements IBaseDao{
	protected Connection connection;
	
	protected PreparedStatement pstm;
	
	
	static Logger logger = Logger.getLogger(BaseDaoImpl.class);


	public BaseDaoImpl(Connection connection) {
		this.connection = connection;
	}
	
	
	
	public ResultSet executeQuery(String sql,Object[] params) {
		ResultSet rs = null;
		
		try {
			pstm = connection.prepareStatement(sql);
			for(int i=0; i<params.length; i++) {
				pstm.setObject(i+1, params[i]);
			}
			rs = pstm.executeQuery();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return rs;
	}
	
	
	public int executeUpdate(String sql,Object[] params) {
		int updateRows = 0;
		try {
			pstm = connection.prepareStatement(sql);
			for(int i=0; i<params.length; i++) {
				pstm.setObject(i+1, params[i]);
			}
			updateRows = pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
			updateRows = -1;
		}
		return updateRows;
	}
	
	
	public int executeInsert(String sql,Object[] params) {
		Long id = 0L;
		try {
			pstm = connection.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			for(int i=0; i<params.length; i++) {
				pstm.setObject(i+1, params[i]);
			}
			pstm.executeUpdate();
			ResultSet rs = pstm.getGeneratedKeys();
			if(rs.next()) {
				id = rs.getLong(1);
				logger.debug("����������" + id);
			}
		}catch(Exception e) {
			e.printStackTrace();
			id = null;
		}
		return id.intValue();
	}
	
	
	public boolean closeResource() {
		if(pstm != null) {
			try {
				pstm.close();
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	
	public boolean closeResource(ResultSet reSet) {
		if(reSet != null) {
			try {
				reSet.close();
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	
	
	public abstract Object tableToClass(ResultSet rs)throws Exception;






	
	
}