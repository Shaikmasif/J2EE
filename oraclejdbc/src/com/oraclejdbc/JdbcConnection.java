package com.oraclejdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JdbcConnection {
public static void main(String[] args) throws  Exception {
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="system";
	String pass="system";
	Class.forName(driver);
	Connection con=DriverManager.getConnection(url,user,pass);
	
	
	System.out.println("Connected");
}
}
