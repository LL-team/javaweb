<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="cs.Db" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	Db db = new Db();
	Connection conn = db.getConnection();
	String sql = "select name from teachers where id=?";
	PreparedStatement pst = conn.prepareStatement(sql);
	pst.setInt(1, id);
	ResultSet rs = pst.executeQuery();
	if(rs.first()){
		session.setAttribute("id", id);
		session.setAttribute("user", rs.getString("name"));
		
	}else{
		System.out.println("Wrong!");
		out.print("<p>login gets an error! Please check your id!");
		
	}
	conn.close();

	response.sendRedirect("index.jsp");
	
%>