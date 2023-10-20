package com.shopNest.dbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.*;

public class DataInjector {
	public static String addCustomers(String uname,String mail,String pass,String gender,String address)
	{
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/shopnest";
		String username="root";
		String password="Database@1234";
		String sql="insert into customers values(?,?,?,?,?)";
		String regStatus="";
		try {
			Class.forName(driver);
			
			Connection conn=DriverManager.getConnection(url,username,password);
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, mail);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, address);
			ps.executeUpdate();
			
			regStatus="success";
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("error in adding the customers");
			e.printStackTrace();
			regStatus="fail";
		}
		finally {
			return regStatus;
		}
	}
	
	public static String addProducts(String pid,String pname,String pdesc,String pprice,String pimg) {
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/shopnest";
		String name="root";
		String password="Database@1234";
		String sql="insert into products values(?,?,?,?,?)";
		String status="";
		try {
			Class.forName(driver);
			
			Connection conn=DriverManager.getConnection(url,name,password);
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.setString(2, pname);
			ps.setString(3, pdesc);
			ps.setString(4, pprice);
			ps.setString(5, pimg);
			ps.executeUpdate();
			status="success";
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Problem in inserting the values");
			status="fail";
		}
		finally {
			return status;
		}
	}
}
