<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header_site.jsp"></jsp:include>
<body>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="content_left.jsp"></jsp:include>
<div class="content main">
<a href="testRequest.jsp?val=传中文">这是测试超链接传值的。</a><br>
<a href="showCookie.jsp">测试cookie</a><br>

<%
	Cookie[] ck = request.getCookies();
	
	String ckName="";
	for(int i=0;i<ck.length;i++){
		ckName+=i;
		ckName+="<br>";
		ckName+=ck[i].getName();
		ckName+="<br>";
		ckName+=ck[i].getValue();
		ckName+="<br>";
	}
%>
<%=ckName %>
<form action="showCookie.jsp" method="post">
<table>
<tr>
<td>课程：<select name="course">
<option  value="AnalogCircuit" >模电</option>
<option  value="DigitalCircuit" >数电</option>
<option  value="ComputerArchitecture" >计算机组成</option>
<option  value="HardwareDesign" >硬件综合设计</option>
<option  value="MCU" >单片机</option>
<option  value="Embed" >嵌入式</option>
</select></td>
<tr><td><button type="submit">submit</button></td><td><button type="reset">reset</button></td></tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>