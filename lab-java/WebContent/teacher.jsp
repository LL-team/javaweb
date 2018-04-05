<%@ page language="java" import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<%--这是添加教师信息的this page is for adding teacher info --%>
<html>
<jsp:include page="header_site.jsp" />
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="content_left.jsp" %>
<jsp:include page="connectSQL.jsp"></jsp:include>
<div class="content main">
<form action="teacher_add.jsp" method="post">
<table>
<tr><td>姓名：<input type="text" name="nm"></td></tr>
<tr><td>职工号：<input type="number" name="staffid" min=20060001 ></td></tr>
<tr><td><input type="submit"></td><td><input type="reset"></td></tr>
</table>
</form>
</div>
<%@ include file="footer.jsp" %>



</body>
</html>