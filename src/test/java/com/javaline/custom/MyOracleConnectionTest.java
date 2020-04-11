package com.javaline.custom;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class MyOracleConnectionTest {
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver"; 
	private static final String URL = "jdbc:oracle:thin:@speedcampus.czou5k4vfvzy.ap-northeast-2.rds.amazonaws.com:1521/SPCAMPUS"; 
	private static final String ID = "admin"; 
	private static final String PASS = "dnjstkd12!";

	@Test
	public void testConnection()throws Exception{ 
		Class.forName(DRIVER);
		try(Connection conn = DriverManager.getConnection(URL, ID, PASS)){ 
			System.out.println(conn); 
			}catch(Exception e){
				e.printStackTrace(); 
	}
	}
}
