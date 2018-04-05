<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
    <%
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection(
    			"jdbc:mysql://localhost/lab","root","123987he");
    	
    	/* Statement st = conn.createStatement();
    	ResultSet rs = st.executeQuery("show databases;");
    	int column = rs.getMetaData().getColumnCount();
    	System.out.println(column);
    	while(rs.next()){
    		String str = rs.getString(1);
    		System.out.println(str);
    	} */
    	//conn.close();
    }catch(Exception e){
    	System.out.println("出现错误，具体内容如下：");
    	e.printStackTrace();
    }
    %>