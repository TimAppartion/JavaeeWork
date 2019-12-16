package com.city.login;
import java.io.IOException;
import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet("/transparent/login.do")
@MultipartConfig
public class LoginAction extends HttpServlet {
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
		
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		
		
		
		
		if(userid!=null&&password!=null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection cn;
		
				cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
				
				
				PreparedStatement ps=cn.prepareStatement(
					    "select * from login where userid=? "
					    );
				
				
				ps.setString(1,userid);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					if(rs.getString("password").equals(password)) {
						response.sendRedirect("tomain");
						rs.close();
						ps.close();
						return;
					}
				}
				
				response.sendRedirect("login.jsp");
				
			} catch (Exception e) {
				System.out.println(1);
				
				
			} 
			
		
		}
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
