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
		>
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
					<div class="t">邮件信息详情</div>
					<div class="pages">
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<input type="hidden" name="receiver" value="${sessionUser.username }">
							<tr>
							<td>邮件标题</td>
							<td>内容</td>
							<td>是否已读</td>
							<td>时间</td>
							<td>操作</td>
							</tr>
							<c:forEach items="${mail2}" var="mail">
							<tr onmouseout="mouseOut(this)" onmouseover="mouseOver(this)">
							<td><a href="${pageContext.request.contextPath}/user/mailDetail/${mail.id}">${mail.subject}</a></td>
							<td>${mail.content}</td>
							<td>
							<c:if test="${mail.isread==0}">
							未读
							</c:if>
							<c:if test="${mail.isread==1}">
							<font style="color: blue">已读</font>
							</c:if> 
							</td>
							<td>${mail.sendtime}</td>
							<td><a onclick="removeMail(${mail.id})">删除</a></td>
							</tr>
							</c:forEach>
							
						</table>

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
			function removeMail(id){
				if(window.confirm("确定执行此操作？")){
					$.ajax({
						dataType : "text",
						type : "post",
						url :"${pageContext.request.contextPath}/user/removeMail/"+id,
						success : function(){
							location.reload();
						}
					});
				}
			}
			
			
		</script>
</html>