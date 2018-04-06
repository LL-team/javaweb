<%@ page language="java" import="java.sql.*" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<%--这是添加教师信息的this page is for adding teacher info --%>
<html>
<jsp:include page="header_site.jsp" />


<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="content_left.jsp" %>

<div class="content main">
当前系统中教师信息如下：<br>
<table>
<tr><td>id</td><td>name</td><td>记载日期</td></tr>
<% 
	int rz=0;
	try{		
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection(
	    	"jdbc:mysql://localhost/lab","root","123987he");
	    Statement st = conn.createStatement();
	    String sql = "select * from teachers;";
	    ResultSet rs = st.executeQuery(sql);
	    String info="";
	    while(rs.next()){
	    	out.print("<tr><td>");
	    	out.print(rs.getInt(2));
	    	out.print("</td><td>");
	    	out.print(rs.getString(3));
	    	out.print("</td><td>");
	    	out.print(rs.getString(4));
	    	out.print("</td></tr>");
	    }
	    conn.close();
	    
	}catch(Exception e){
		e.printStackTrace();
	}  	
%>
</table>
<hr>
<form action="teacher_add.jsp" method="post">
<table>
<tr><td>姓名：</td><td><input type="text" name="nm"></td></tr>
<tr><td>职工号：</td><td><input type="number" name="staffid" min=20060001 ></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>
</form>

</div>
<%@ include file="footer.jsp" %>



</body>
</html>