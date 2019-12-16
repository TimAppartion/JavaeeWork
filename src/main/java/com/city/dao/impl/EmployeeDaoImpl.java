package com.city.dao.impl;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.servlet.http.Part;

import com.city.model.EmployeeModel;

public class EmployeeDaoImpl {
public void update(EmployeeModel em,String identity,String pwd,String home,String phone,String money,Part part) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String sql = "UPDATE net " + 
				"SET pwd= ?,home=?,phone=?,money=?,part=?"+ 
				"WHERE identity=?;";
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
		PreparedStatement ps=cn.prepareStatement(sql);
		
		PreparedStatement ptmt=cn.prepareStatement(sql);
		java.io.InputStream in=part.getInputStream();
		
		ptmt.setString(1, pwd);
		ptmt.setString(2, home);
		ptmt.setString(3, phone);
		ptmt.setString(4, money);
		ps.setBinaryStream(5,in, in.available());//照片
		ptmt.executeUpdate();
		cn.close();
	}
	public void insert(EmployeeModel em,String name,String sex,String identity,String pwd,String home,String phone,String money,Part part,String online) 
			throws Exception{
		
		
		
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
			System.out.println(in.available());
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void delete(EmployeeModel em,String identity) throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
		
  		String sql = "delete from net where identity=? ";
  		PreparedStatement ptmt=cn.prepareStatement(sql);
  			
  			 ptmt.setString(1, identity);
  			 
  			 ptmt.executeUpdate();
  			 cn.close();
	
	}
	
	public List<EmployeeModel> selectById(String name) throws Exception{
		List<EmployeeModel> list=new ArrayList<EmployeeModel>();
		String sql="select * from internet ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
		PreparedStatement ps=cn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			if(rs.getString("name").equals(name)) {
				EmployeeModel em=new EmployeeModel();
				em.setName(rs.getString("name"));
				em.setSex(rs.getString("sex"));
				em.setIdentity(rs.getString("identity"));
				em.setPwd(rs.getString("pwd"));
				em.setHome(rs.getString("home"));
				em.setPhone(rs.getString("phone"));
				em.setMoney(rs.getString("money"));
				em.setOnline(rs.getString("online"));
				
				list.add(em);
				rs.close();
				ps.close();
				cn.close();
				return list;
			}
		}
		rs.close();
		ps.close();
		cn.close();
		
		return list;
	}
	public List<EmployeeModel> selectByAll() throws Exception{
		List<EmployeeModel> list=new ArrayList<EmployeeModel>();
		String sql="select * from internet ";
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/net?useUnicode=true&characterEncoding=utf8","root","wh2234040");
		PreparedStatement ps=cn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			EmployeeModel em=new EmployeeModel();
			em.setName(rs.getString("name"));
			em.setSex(rs.getString("sex"));
			em.setIdentity(rs.getString("identity"));
			em.setPwd(rs.getString("pwd"));
			em.setHome(rs.getString("home"));
			em.setPhone(rs.getString("phone"));
			em.setMoney(rs.getString("money"));
			em.setOnline(rs.getString("online"));
			
			
			list.add(em);
		}
		rs.close();
		ps.close();
		cn.close();
		
		return list;
	}
}
