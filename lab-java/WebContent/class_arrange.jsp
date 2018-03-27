<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String course = request.getParameter("course");
	String major = request.getParameter("major");
	String grade = request.getParameter("class_grade");
	String num = request.getParameter("students_num");
	String course_time = request.getParameter("jieci");
	String swk = request.getParameter("start_week");
	String ewk = request.getParameter("end_week");

%>
<!DOCTYPE HTML>
<html>
<jsp:include page="header_site.jsp"></jsp:include>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="content_left.jsp"></jsp:include>
<div class="content main">
课程为：<%= course %><br>
专业为：<%= major %><br>
班级为：<%= grade %><br>
人数为：<%= num %>人<br>
课程时间为：<%= course_time %>节<br>
起始为：<%= swk %>周<br>
结束为：<%= ewk %>周<br>

</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>