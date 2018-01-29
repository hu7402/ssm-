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
	<form id="holidayForm" name="holidayForm"
		action="${pageContext.request.contextPath }/user/holidayDetail"
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
					<div class="t">申请休假</div>
					<div class="pages">
						
						<table width="90%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td align="right" width="30%"></td>
								<td align="left"><input type="hidden" name="id"
									 id="id" /></td>
							</tr>
							<tr>
								<td align="right" width="30%">姓名：</td>
								<td align="left"><input type="text" name="applyer" value="${sessionUser.username}"
									 id="applyer" readonly="readonly"/></td>
							</tr>
							<tr>
								<td align="right" width="30%">开始时间：</td>
								<td align="left"><input type="text" name="beginTime"
									 id="beginTime" style="width: 171px;" class="Wdate" onClick="WdatePicker()" value="年/月/日/"
									 onblur="Apply_Days()"/><span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">结束时间：</td>
								<td align="left"><input type="text" name="endTime"
									 id="endTime"  style="width: 171px;" class="Wdate" value="年/月/日/" onClick="WdatePicker()"  onblur="Apply_Days()" />
									 <span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">请假天数：</td>
								<td align="left"><input type="text" name="days"
									 id="applydays" readonly="readonly"/><span style="color: red">*</span></td>
							</tr>
							<tr>
								<td align="right" width="30%">请假原因：</td>
								<td align="left"><textarea rows="15" cols="50"
										name="leaveReason"></textarea></td>
							</tr>
							<tr>
								<td align="right" width="30%">审核人：</td>
								<td align="left">
								<select name="auditor">
										<option>选择审核人</option>
										<c:forEach  items="${userlist }" var="user">
											<option value="${user.username}">${user.username}</option>
										 </c:forEach>
								 </select></td>
							</tr>
							
						<tr>
								<td align="center" colspan="2"><br />
								<input type="submit" id="submit" value="提交申请" /><%-- onclick="goback(${sessionUser.username})" --%>
								<input type="button"  value="返回" onclick="goback()"/></td>
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
	 function goback(u){
		location.href="${pageContext.request.contextPath}/user/sendHoliday/";
	} 
	//表单校验
	$(function() {
		$("#holidayForm").validate({
			rules : {
				beginTime : "required",
				endTime : "required",
				days : "required",
				
			},
			messages : {
				beginTime : "开始时间不能为空",
				endTime : "结束时间不能为空",
				days : "天数不能为空",
				}
			
		});
	})
	
	function  Apply_Days(){  
		var begin = document.getElementById("beginTime").value;
		var end = document.getElementById("endTime").value;
		if(begin!=null&&begin!=""&&end!=null&&end!=""){
			document.getElementById("applydays").value = DateDiff(begin,end);
		}
	   }  

	   //计算天数差的函数，通用  
	   function  DateDiff(sDate1,  sDate2){    //sDate1和sDate2是2002-12-18格式  
	       var  aDate,  oDate1,  oDate2,  iDays  
	       aDate  =  sDate1.split("-")  
	       oDate1  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])    //转换为12-18-2002格式  
	       aDate  =  sDate2.split("-")  
	       oDate2  =  new  Date(aDate[1]  +  '-'  +  aDate[2]  +  '-'  +  aDate[0])  
	       iDays  =  parseInt(Math.abs(oDate1 - oDate2)/1000/60/60/24)    //把相差的毫秒数转换为天数  
	       return  iDays  
	}
</script>
</html>