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
		action="${pageContext.request.contextPath }/user/sendMail"
		method="post" enctype="multipart/form-data">
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
					<div class="t">写邮件</div>
					<div class="pages">
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								
								<td ><input type="hidden" name="sender" value="${sessionUser.username}"
									 id=""sender"" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">收件人：</td>
								<td align="left">
								<select name="receiver" >
										<option>选择收件人</option>
										<c:forEach  items="${userlist }" var="user">
											<option value="${user.username}">${user.username}</option>
										 </c:forEach>
								 </select><span style="color: red;">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">邮件标题：</td>
								<td align="left"><input type="text" name="subject"
									 id="subject" /><span style="color: red;">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">邮件内容：</td>
								<td align="left"><textarea rows="15" cols="50"
										name="content"></textarea></td>
							</tr>
							<tr>
								<td align="right" width="30%">上传附件：</td>
								<td align="left"><input type="file" id="mailfile" name="mailfile" /><span style="color: red;">*</span>(上传附件不能超过9M)</td>
							</tr>
							<tr>
							<tr>
								<td align="center" colspan="2"><br />
								<input type="submit" id="send" value="发送邮件" /></td>
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
var max_size = 9437184;
	//表单校验
	$(function() {
		$("#myForm").validate({
			rules : {
				receiver:"required",
				subject : "required",
				mailfile: "required",
			},
			messages : {
				receiver:"请选择接收者",
				subject : "标题不能为空",
				mailfile: "文件不能为空",
			},
		});
	$("#mailfile").change(function(evt) {
		var finput = $(this);
		var files = evt.target.files;
		var output = [];
		for (var i = 0, f; f = files[i]; i++) {
			if (f.size > max_size) {
				$("#filetip").html("* 上传文件不能超过9M");
				$(this).val('');
			}else{
				$("#filetip").html("");
			}
		}
	});
	})
	
	

</script>
</html>