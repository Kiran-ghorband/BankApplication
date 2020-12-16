package com.bank.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/CreateAccount")
public class CreateAccount extends HttpServlet
{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateAccount() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException
	
	{
		response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String accountNo = request.getParameter("accountNo");
        
        int no=Integer.parseInt(accountNo);
        
        String firstName  = request.getParameter("firstName ");
        String lastName  = request.getParameter("lastName ");
        String userName = request.getParameter("UserName");
        String password = request.getParameter("Password");
        String address   = request.getParameter("Address ");
        String phone = request.getParameter("Phone");
        

        try {
        
            // loading drivers for mysql
            Class.forName("com.mysql.jdbc.Driver");
            
            //creating connection with the database 
            Connection con = DriverManager.getConnection
                        ("jdbc:mysql://localhost/Bank_Db","root", "root");

            PreparedStatement ps = con.prepareStatement
                        ("insert into Customer (Id,firstName , lastName , UserName , Password , Address , Phone) values(?,?,?,?,?,?)");

            ps.setInt(1, no);
            ps.setString(2, firstName);
            ps.setString(3, lastName);
            ps.setString(4, userName);
            ps.setString(5, password);
            ps.setString(6, address);
            ps.setString(7, phone);
            
            
            int i = ps.executeUpdate();
            
            if(i > 0) {
                out.println("You are sucessfully registered");
                response.sendRedirect("login.html");
            }
        
        }
        catch(Exception se) {
            se.printStackTrace();
        }
	
	}

}
