<%@ page language="java" import="java.sql.*" import="java.util.*"
import="cs.Db"
contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%--这是添加教师信息的this page is for adding teacher info --%>

<% 
	request.setCharacterEncoding("utf-8");
	String teacher_name = request.getParameter("nm");
	//System.out.println("the name is:"+teacher_name);
	int teacher_id = Integer.parseInt(request.getParameter("staffid"));
	Calendar c = Calendar.getInstance();
	String d = c.get(Calendar.YEAR)+"-"+
		(c.get(Calendar.MONTH)+1)+"-"+
		c.get(Calendar.DATE)+" "+
		c.get(Calendar.HOUR_OF_DAY)+":"+
		c.get(Calendar.MINUTE)+":"+
		c.get(Calendar.SECOND);
	String sql = "insert into teachers (id,name,logDate) values(?,?,?)";
	int rz=0;
	try{
		Db db = new Db();
		Connection conn = db.getConnection();
	    PreparedStatement prep = conn.prepareStatement(sql);
	    prep.setInt(1, teacher_id);
	    prep.setString(2,teacher_name);
	    prep.setString(3, d);
	    rz = prep.executeUpdate();
	    System.out.println(rz);
	    conn.close();
	    if(rz==1){	
	    	response.sendRedirect("teacher.jsp");
	    }
	}catch(Exception e){
		e.printStackTrace();
	}  	
%>
