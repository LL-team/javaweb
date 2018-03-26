<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<jsp:include page="header_site.jsp" />
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="content_left.jsp" %>
<div class="content main">
<%
	String content = new java.util.Date().toString();
	content+="<br>";
	content+="这里的课程信息需要后期从数据库里查询。";

%>


<jsp:forward page="test.jsp">
	<jsp:param name="val" value="forward"/>
	</jsp:forward>>
 
 <%=content %>
</div>
<%@ include file="footer.jsp" %>



</body>
</html>