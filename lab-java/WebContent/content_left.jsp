<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*" pageEncoding="UTF-8"%>
<div class="content left">
<%	
	String user="";
	Enumeration<String> enu = session.getAttributeNames();
	
	while(enu.hasMoreElements()){
		String attr = enu.nextElement();
		if(attr.equals("user")){
			user = (String)session.getAttribute("user");
			out.print("你好，"+user+"。");
			out.print("<a href='logout.jsp'>注销</a>");
			break;
		}
	}
	
		
	if(user.equals("")){
		out.print("<form action=\"login.jsp\" method=\"post\">");
		out.print("ID:<input type=\"number\" min=20060001 name=\"id\">");
		out.print("<input type=\"submit\" value=\"login\"></form>");
	}
%>
<ul>
<li><a href="class_apply.jsp">申请排课</a></li>
<li><a href="test.jsp">测试</a></li>
<li><a href="teacher.jsp">教师信息</a></li>
<li><a href="#">开放实验项目</a></li>
<li><a href="download.jsp">资料下载</a></li>
</ul>

</div>