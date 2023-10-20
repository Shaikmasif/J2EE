package com.shopNest.admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import java.io.IOException;

import com.shopNest.dbHandler.DataInjector;

import jakarta.servlet.annotation.WebServlet;



@WebServlet("/product")
public class ProductServlet extends HttpServlet{
	public void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
		String pid=req.getParameter("pid");
		String pname=req.getParameter("pname");
		String pdesc=req.getParameter("pdesc");
		String pprice=req.getParameter("pprice");
		String pimg=req.getParameter("pimg");
		String status=DataInjector.addProducts(pid,pname,pdesc,pprice,pimg);
		System.out.println("status "+status);
		resp.sendRedirect("ProductInfo.jsp");
	}

}
