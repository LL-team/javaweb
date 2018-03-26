<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<jsp:include page="header_site.jsp"></jsp:include>
<body>
<datalist id="course_lst">
<option label="模电" value="AnalogCircuit" />
<option label="数电" value="DigitalCircuit" />
<option label="计算机组成原理" value="ComputerArchitecture" />
<option label="硬件综合实训" value="HardwareDesign" />
</datalist>
<datalist id="major_lst">
<option label="计科" value="cs" />
<option label="数媒" value="dm" />
<option label="软件" value="sw" />
<option label="信息" value="is" />
<option label="网络" value="ne" />
<option label="空数" value="st" />

</datalist>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="content_left.jsp"></jsp:include>
<div class="content main">
<form action="class_arrange.jsp" method="post">
<table>
<tr>
<td>课程：<input type="text" name="course" list="course_lst"></td><td>专业：<input type="text" name="class" list="major_lst"></td>
<td>学生数：<input type="number" name="students_num" min="1" max="120"></td>
</tr>
<tr>
<td>节次：<input type="text" name="dijijie"></td><td>起始周：<input type="number" name="start_week" min="1" max="20"></td>
<td>结束周：<input type="number" name="end_week" min="1" max="20"></td>
</tr>
<tr><td><button type="submit">submit</button></td><td><button type="reset">reset</button></td></tr>
</table>
</form>
</div>
</body>
</html>