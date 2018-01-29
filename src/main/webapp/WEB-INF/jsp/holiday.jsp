<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>办公自动化管理系统</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" type="text/css" />

</head>

<body>
	<div class="top">
		<div class="global-width">
			<img src="${pageContext.request.contextPath}/Images/logo.gif"
				class="logo" />
		</div>
	</div>
	<div class="status">
		<div class="global-width">
			${sessionUser.username }你好！欢迎访问办公管理系统！&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="#" onclick="location.href='${pageContext.request.contextPath}/user/loginOut'">注销</a>
		</div>
	</div>
	<form id="myForm" name="myForm"
		action="${pageContext.request.contextPath }/user/sendMail"
		method="post">
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/WdatePicker.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/messages_zh.js"></script>
<style type="text/css">
label {
	clear: left;
	color: red;
	margin-top: 13px;
	width: 60px;
	font: 600 10px 宋体;
}
</style>
</head>

<body>
    <div class="nav" id="nav">
					<div class="t"></div>
					<jsp:include page="left.jsp"></jsp:include>
				</div>
  </body>
				</html>

				<div class="action">
					<div class="t">休假信息列表</div>
					<div class="pages">
						<c:if test="${sessionUser.isadmin==1}">
							<table width="90%" border="0" cellspacing="0" cellpadding="0">
								<input type="hidden" name="auditor"
									value="${sessionUser.username }">
								<tr>
									<td>申请人</td>
									<td>开始时间</td>
									<td>结束时间</td>
									<td>天数</td>
									<td>审核状态</td>
									<td>原因</td>
									<td>操作</td>

								</tr>

								<c:forEach items="${holidays}" var="holiday2">
									<tr onmouseout="mouseOut(this)" onmouseover="mouseOver(this)">
										<td>${holiday2.applyer}</td>
										<td>${holiday2.beginTime}</td>
										<td>${holiday2.endTime}</td>
										<td>${holiday2.days}</td>
										<td><c:if test="${holiday2.checks==0}">
							未审批
							</c:if> <c:if test="${holiday2.checks==1}">
							<font style="color: blue">已审批</font>
							</c:if> <c:if test="${holiday2.checks==2}">
												<font style="color: red">审批拒接</font>
											</c:if></td>
										<td>${holiday2.leaveReason}</td>
											
										<td><c:if test="${holiday2.checks==0}"><a href="${pageContext.request.contextPath}/user/checkHoliday/${holiday2.id}">[审核]</a></c:if></td>
									</tr>
								</c:forEach>
								<tr>
									<td align="left" colspan="2"><br /> <input type="button"
										value="申请休假" onclick="submitHoliday()" /></td>

								</tr>
							</table>
						</c:if>



						<c:if test="${sessionUser.isadmin==0}">
							<table width="90%" border="0" cellspacing="0" cellpadding="0">
								<input type="hidden" name="applyer"
									value="${sessionUser.username }">
								<tr>
									<td>申请人</td>
									<td>开始时间</td>
									<td>结束时间</td>
									<td>天数</td>
									<td>审核状态</td>
									<td>原因</td>

								</tr>

								<c:forEach items="${holidays}" var="holiday">
									<tr onmouseout="mouseOut(this)" onmouseover="mouseOver(this)">
										<td>${holiday.applyer}</td>
										<td>${holiday.beginTime}</td>
										<td>${holiday.endTime}</td>
										<td>${holiday.days}</td>
										<td>
										<c:if test="${holiday.checks==0}">
											未审批
										</c:if>
										<c:if test="${holiday.checks==1}">
											已审批
										</c:if>
										<c:if test="${holiday.checks==2}">
											审批拒接
										</c:if>
										</td>
										<td>${holiday.leaveReason}</td>



										</td>
									</tr>
								</c:forEach>
								<tr>
									<td align="left" colspan="2"><br /> <input type="button"
										value="申请休假" onclick="submitHoliday()" /></td>

								</tr>
							</table>
						</c:if>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="copyright">Copyright &nbsp; &copy; &nbsp;</div>

</body>
<script type="text/javascript">
		function submitHoliday(){
			location.href="${pageContext.request.contextPath}/user/submitHoliday/"
		}	
			
			
		</script>
</html>