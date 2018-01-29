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
<!-- <script>
	function saveinfo() {
		location.href = "${pageContext.request.contextPath}/user/saveinfo.do/${sessionUser.id}"

	}
</script> -->
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
	<form id="infoForm" name="infoForm"
		action="${pageContext.request.contextPath}/user/saveinfo.do"
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
</head>

<body>
    <div class="nav" id="nav">
					<div class="t"></div>
					<jsp:include page="left.jsp"></jsp:include>
				</div>
  </body>
				</html>

				<div class="action">
					<div class="t">个人信息</div>
					<div class="pages">

						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right" width="30%"></td>
								<td align="left"><input type="hidden" name="id"
									value="${sessionUser.id }" id="id" /></td>
							</tr>

							<tr>
								<td align="right" width="30%">昵称：</td>
								<td align="left"><input type="text" name="nickname"
									value="${sessionUser.nickname }" id="nickname" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">年龄：</td>
								<td align="left"><input type="text" name="age"
									value="${sessionUser.age }" id="age" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">性别：</td>
								<td align="left">
								<c:if test="${sessionUser.sex==0}">
										<select name="sex">
											<option value="0">女
												<option value="1">男
							
										</select>

								</c:if> <c:if test="${sessionUser.sex==1}">
										<select name="sex">
											<option value="1">男
								
											<option value="0">女
								
							
										</select>
						</c:if>

									</td>
					
													</tr>

							<tr>
								<td align="right" width="30%">手机：</td>
								<td align="left"><input type="text" name="mobile"
									value="${sessionUser.mobile }" id="mobile" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">地址：</td>
								<td align="left"><input type="text" name="address"
									value="${sessionUser.address }" id="address" /></td>
							</tr>
							<tr>
								<td align="center" colspan="2"><br /> <input type="submit"
									id="saveit" value="保存数据" /> <input type="button" id="back"
									value="返回" onclick="javaScript:history.back()" /></td>
							</tr>

						</table>

					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="copyright">Copyright &nbsp; &copy; &nbsp;</div>

</body>
<script type="text/javascript">
	//表单校验
	$(function() {
		$("#infoForm").validate({
			rules : {
				nickname : "required",
				mobile : "required"
			},
			messages : {
				nickname : "昵称不能为空",
				mobile : "号码不能为空"
			},
		});
	})
</script>

</html>