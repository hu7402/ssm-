<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<dl>
							<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">信息管理 
						</dt>
						<dd>
							<a href="${pageContext.request.contextPath}/user/toindex.do"
					target="_self">个人信息</a>
						</dd>
					</dl>
					<dl>
						<dt
							onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
							邮件管理
						</dt>
						<dd>
							<a href="${pageContext.request.contextPath}/user/tosendMail"  target="_self">写邮件</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/user/receiverMail"  target="_self">收邮件</a>
						</dd>
						<dd>
							<a href="${pageContext.request.contextPath}/user/rubMail" target="_self">垃圾邮件</a>
						</dd>
					</dl>
					<dl>
						<dt
							onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
							考勤管理
						</dt>
						<dd>
							<a href="${pageContext.request.contextPath}/user/sendHoliday" target="_self">休假</a><%-- /${sessionUser.username} --%>
						</dd>
					</dl>
					
					<dl >
					
						<dt
							onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">
							权限管理
						</dt>
						<dd>
							<a href="${pageContext.request.contextPath}/user/userAccount" >个人账户</a>
						</dd>
						<c:if test="${sessionUser.isadmin==1}">
						<dd>
							<a href="${pageContext.request.contextPath}/user/manageUser" target="_self">管理账户</a>
						</dd>
						</c:if>
					</dl>
</body>
</html>