<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<jsp:include page="header_site.jsp"></jsp:include>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="content_left.jsp"></jsp:include>
<div class="content main">
<%
String course = request.getParameter("course");
Cookie myCookie = new Cookie("mylabCookie","Mycookiecontentis:"+course);
response.addCookie(myCookie);
%>
<%=course %>
</div>
<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>