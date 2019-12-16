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
@WebServlet("/transparent/delete.do")
@MultipartConfig
public class DeleteProcess extends HttpServlet {
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
		
		String identity=request.getParameter("identity");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn;
	
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
			
			
			PreparedStatement ps=cn.prepareStatement("delete from internet where identity=?"
				    );
			ps.setString(1,identity);
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
