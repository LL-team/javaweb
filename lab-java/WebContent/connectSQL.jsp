<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
    <%
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mysql?user=root&password=");
    	
    	
    	conn.close();
    }catch(Exception e){
    	System.out.println("加载数据库驱动失败，具体内容如下：");
    	e.printStackTrace();
    }
    %>