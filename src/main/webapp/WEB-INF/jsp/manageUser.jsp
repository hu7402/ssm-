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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/messages_zh.js"></script>

</head>

<body>
    <div class="nav" id="nav">
					<div class="t"></div>
					<jsp:include page="left.jsp"></jsp:include>
				</div>
  </body>
				</html>

				<div class="action">
					<div class="t">账户管理列表</div>
					<div class="pages">
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<input type="hidden" name="id" value="${sessionUser.id }">
							<tr>
							<td>用户名</td>
							<td>昵称</td>
							<td>手机</td>
							<td>地址</td>
							<td>操作</td>
							</tr>
							<c:forEach items="${userlist}" var="user">
							<tr onmouseout="mouseOut(this)" onmouseover="mouseOver(this)">
							<td>${user.username}</td>
							<td>${user.nickname}</td>
							<td>${user.mobile}</td>
							<td>${user.address}</td>
							<c:if test="${user.isadmin==0}">
							<td><a onclick="deleteUser(${user.id})">删除</a></td>
							</c:if>
							<c:if test="${user.isadmin==1}">
							<td>无权限</td>
							</c:if>
							<%-- <td><a href="${pageContext.request.contextPath}/user/deleteUser/${user.id}">删除</a></td> --%>
							</tr>
							</c:forEach>
							
						</table>
						<tr>
							<td align="center" colspan="2"></br>
							<a href="${pageContext.request.contextPath}/user/addUser"><input type="button" id="addUser" value="添加数据"  ></a>
							</td>
							</tr>
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="copyright">Copyright &nbsp; &copy; &nbsp;</div>

</body>
<script type="text/javascript">
			function mouseOut(obj){
				obj.style.backgroundColor = "white";
			}
			function mouseOver(obj){
				obj.style.backgroundColor= "#999";
			}
			function deleteUser(id){
				if(window.confirm("确定删除用户？")){
				
					$.ajax({
						dataType : "text",
						type : "post",
						url :"${pageContext.request.contextPath}/user/deleteUser/"+id,
						success : function(){
							location.reload();
						}
						
					});
					
				}
			}
			
			
		</script>
</html>