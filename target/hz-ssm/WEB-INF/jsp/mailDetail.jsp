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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/messages_zh.js"></script>


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
	<form id="myForm" name="myForm" action="${pageContext.request.contextPath}/user/mailDownload" 
		
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
					<div class="t">邮件信息列表</div>
					<div class="pages">
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<!-- <tr>
							<td><input type="hidden" name="id" value=""></td>
							</tr> -->
							<tr>
								<td align="right" width="30%">邮件标题：</td>
								<td align="left"><input type="text" name="subject" value="${mail3.subject}"
									 id="subject" readonly="readonly"/></td>
							</tr>
							<tr>
								<td align="right" width="30%">邮件内容：</td>
								<td align="left"><textarea rows="15" cols="50"
										name="content" readonly="readonly">${mail3.content}</textarea></td>
							</tr>
							<tr>
								<td align="right" width="30%">发送时间：</td>
								<td align="left"><input type="text" name="sendtime" value="${mail3.sendtime}" readonly="readonly"/></td>
							</tr>
							<tr>
								<td align="right" width="30%">来自：</td>
								<td align="left"><input type="text" name="sender"  value="${mail3.sender}" readonly="readonly"/></td>
							</tr>
							<!-- <tr>
								<td align="right" width="30%">文件：</td>
								<td align="left"><input type="button" name="mailfile" value="下载"/></td>
							</tr> -->
							<tr>
								<td align="right" width="30%">
								附件：</td>
								<td align="left">
								<c:if test="${mail3.mailfile==null}">
									<input type="button" value="无附件">
								</c:if>
								<c:if test="${mail3.mailfile!=null}">
									<input type="submit" value="文件下载">
									
								</c:if>
							</tr>
							<tr>
									<td align="right" width="30%"></td><td  align="left"><input type="hidden" name="filePath" value="${mail3.mailfile}" /></td>
							</tr>
							<tr>
							<tr>
								<td align="center" colspan="2"><br />
							<a href="${pageContext.request.contextPath}/user/updateIsread/${mail3.id}">	<input type="button" id="back" value="返回" onclick="goback()"/></a> </td>
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
	function goback(){
		document.location.href="${pageContext.request.contextPath}/user/receiveMail/";
	}
	
</script>
</html>