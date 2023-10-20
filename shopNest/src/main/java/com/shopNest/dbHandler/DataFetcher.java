package com.shopNest.dbHandler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

public class DataFetcher {
	public static String fetchData(String uname) {
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/shopnest";
		String user="root";
		String password="Database@1234";
		String sql="select pass from customers where uname=?";
		String dbpass="";
		try {
			Class.forName(driver);
			
			Connection conn=DriverManager.getConnection(url,user,password);
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, uname);
			
			ResultSet rs=ps.executeQuery();
			rs.next();
			dbpass=rs.getString(1);
			}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Cannot retrieve the data");
			e.printStackTrace();
		}
		finally {
			return dbpass;
		}
	}
	public static List fetchUserInfo() {
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/shopnest";
		String name="root";
		String password="Database@1234";  
		String sql="select uname,mail,gender,address from customers";
		List ulist=new ArrayList();
		try {
			Class.forName(driver);
			
			Connection conn=DriverManager.getConnection(url,name,password);
			
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4);
				ulist.add(temp);
			}
		}
			catch (Exception e) {
				// TODO: handle exception
				System.out.println("Problem in Login...");
			}
			
	
		finally {
		return ulist;
		}
	}
	public static List fetchProductsInfo() {
		List productList=new ArrayList();
		String driver="com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/shopnest";
		String name="root";
		String password="Database@1234";
		String sql="select pid,pname,pdesc,pprice,pimg from products";
		try {
			Class.forName(driver);
			
			Connection conn=DriverManager.getConnection(url,name,password);
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next()) {
				String row=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5);
				productList.add(row);
			}
			}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("problem in retreiving the data...");
			e.printStackTrace();
		}
		finally {
			return productList;
		}
	}
}
