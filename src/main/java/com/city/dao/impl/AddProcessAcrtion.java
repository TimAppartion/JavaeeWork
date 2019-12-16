package com.city.dao.impl;
import java.io.IOException;
import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.city.controller.EmployeeToMainAction;





/**
 * Servlet implementation class ProductAddProcessAction
 */
@WebServlet("/transparent/add.do")
@MultipartConfig
public class AddProcessAcrtion extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String sex=request.getParameter("sex");
		String identity=request.getParameter("identity");
		String pwd= request.getParameter("pwd");
		String home=request.getParameter("home");
		String phone=request.getParameter("phone");
		String money=request.getParameter("money");
		Part part = request.getPart("photo");
		String online=request.getParameter("online");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn;
	
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
			
			
			PreparedStatement ps=cn.prepareStatement(
				    "insert into internet (name,sex,identity,pwd,home,phone,money,photo,online)"
				    + " values(?,?,?,?,?,?,?,?,?)");
			java.io.InputStream in=part.getInputStream();
			
			ps.setString(1,name);
			ps.setString(2,sex);
			ps.setString(3,identity);
			ps.setString(4,pwd);
			ps.setString(5,home);
			ps.setString(6,phone);
			ps.setString(7,money);
			ps.setBinaryStream(8,in, in.available());//照片
			ps.setString(9,online);
			
			ps.executeUpdate();
			ps.close();
			cn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/transparent/tomain").forward(request, response);
//		response.sendRedirect("main.jsp");
	
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
