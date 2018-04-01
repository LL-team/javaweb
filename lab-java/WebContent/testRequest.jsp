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
<ul>
<li>客户端的请求参数为：<%=request.getParameter("val") %>(这个值是超链接传过来的。)
<li>客户端http请求中的header信息：<%= request.getHeader("user-agent") %>（本条信息以及以下这些值是通过request这个对象获取的。）
<li>客户端使用的协议：<%= request.getProtocol() %>
<li>客户端提交数据的方法：<%= request.getMethod() %>
<li>客户端请求的URI：<%= request.getRequestURI() %>
<li>客户端请求的URL：<%= request.getRequestURL() %>
<li>客户端请求脚本文件的文件路径：<%= request.getServletPath() %>
<li>客户端请求的服务器名字：<%= request.getServerName() %>
<li>客户端请求的服务器端口号：<%= request.getServerPort() %>
<li>客户端IP：<%=request.getRemoteAddr() %>
<li>客户端主机名：<%= request.getRemoteHost() %>


</ul>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>