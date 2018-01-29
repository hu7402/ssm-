<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>

</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<form id="applyForm" name="applyForm">
		<input type="hidden" name="u.id" value="26" /> <input type="hidden"
			name="u.sex" value="2" id="u_sex" /> <input type="hidden"
			name="u.supper" value="0" id="u_supper" />
		<div class="main">
			<div class="global-width">


				<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
				<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
</head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="nav" id="nav">
		<div class="t"></div>
		<jsp:include page="left.jsp"></jsp:include>
	</div>
</body>
				</html>

				<div class="action">
					<div class="t">申请休假</div>
					<div class="pages">
						
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							
							<tr>
								<td align="right" width="30%">姓名：</td>
								<td align="left"><input type="text" name="applyer" value="${holidays.applyer}"
									 id="applyer" readonly="readonly"/></td>
							</tr>
							<tr>
								<td align="right" width="30%">开始时间：</td>
								<td align="left"><input type="text" name="beginTime"
									 id="beginTime" value="${holidays.beginTime}" readonly="readonly"/><span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">结束时间：</td>
								<td align="left"><input type="text" name="endTime"
									 id="endTime" value="${holidays.endTime}" readonly="readonly"/><span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">请假天数：</td>
								<td align="left"><input type="text" name="days"
									 id="days" value="${holidays.days}" readonly="readonly"/><span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">请假原因：</td>
								<td align="left"><textarea rows="15" cols="50"
										name="leaveReason" readonly="readonly">${holidays.leaveReason}</textarea></td>
							</tr>
							<tr>
								<td align="right" width="30%">审核人：</td>
								<td align="left"><input type="text" name="auditor"
									 id="auditor" value="${holidays.auditor}" readonly="readonly"/>
								</td>
							</tr>
							 <tr >
								<td align=center colspan="2"><br />
								<a href="${pageContext.request.contextPath}/user/updateHolidayPass/${holidays.id}"> <input type="button" name="pass" value="审核通过" /></a>
								 <a href="${pageContext.request.contextPath}/user/updateHolidayNoPass/${holidays.id}"> <input type="button" name="nopass" value="审核不通过" /></a></td>
							</tr>  
							 <%-- <tr >
								<td align=center colspan="2"><br />
								<input type="button" name="pass" value="审核通过" onclick="pass(${holidays.id},${sessionUser.username})"/>
								<input type="button" name="nopass" value="审核不通过" onclick="nopass(${holidays.id},${sessionUser.username})"/></td>
							</tr>  --%>
						</table>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="copyright">Copyright &nbsp; &copy; &nbsp;</div>

</body>
 <!--  <script type="text/javascript">
			
			function pass(id,username){
				//提交Ajax
				$.ajax({
							dataType : "text",
							type : "post",
							url : "${pageContext.request.contextPath}/user/updateHolidayPass/"+id,
							success : function() {
									location.href = "${pageContext.request.contextPath}/user/sendHoliday/"+username;
							}
						});
			}
			function nopass(id,username){
				//提交Ajax
				$.ajax({
							dataType : "text",
							type : "post",
							url : "${pageContext.request.contextPath}/user/updateHolidayNoPass/"+id,
							success : function() {
									location.href = "${pageContext.request.contextPath}/user/sendHoliday/"+username;
							}
						});
			}
		</script>   -->
</html>