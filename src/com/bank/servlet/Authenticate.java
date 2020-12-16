
package com.bank.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.mysql.cj.jdbc.*;

@WebServlet("/Authenticate")
public class Authenticate extends HttpServlet 
{
	
	Connection connection;
	PreparedStatement psSelect;
	PreparedStatement psSelect1;
	private static final long serialVersionUID = 1L;

	
	@Override
	public void init(ServletConfig config) throws ServletException 
	{
		
		super.init(config);
       try 
        {
//    	   String driverClass=config.getInitParameter("driverClass");
//    	   String dbUrl=config.getInitParameter("dbUrl");
//			String dbUser=config.getInitParameter("dbUser");
//			String pwd=config.getInitParameter("dbPassword");
//			
			
    	   Class.forName("com.mysql.jdbc.Driver");
    	   connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Bank_Db","root", "root");
		 
        } 
       
        catch (ClassNotFoundException  | SQLException e) 
        {
			
			e.printStackTrace();
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	       {
		    try
		    
		    {
		    	 boolean flag=false;
		    	psSelect=connection.prepareStatement("select * from  Customer where username=? and password=?");
		    	
	         String username=request.getParameter("username");
			 String password=request.getParameter("password");
			
			 
			 psSelect.setString(1, username.trim());
			 psSelect.setString(2, password.trim());
			
			 try(ResultSet result=psSelect.executeQuery())
			 {		
			 PrintWriter out=response.getWriter();
			 
				 if(result.next())
				 { 
					 HttpSession session=request.getSession();
					 session.setAttribute("username", username);
					 response.sendRedirect("SavingAccount");
				 
				 
				 }						 
				 else
				 {
					 response.sendRedirect("login.html");
				 }
				 
			 }
			 
			 catch(SQLException e)
			 {
				 e.printStackTrace();
			 }
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
	   
		
	}


	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		try {
			
			if(psSelect!=null)
			   psSelect.close();
			if(connection!=null)
	    		connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	

}
