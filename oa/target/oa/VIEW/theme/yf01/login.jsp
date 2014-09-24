<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath+ "/VIEW/theme/yf01");
	request.setAttribute("rootPath",contextPath);
%>
<!DOCTYPE html>
<html lang="zh">
	<head>
		<meta charset="utf8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
		<meta name="description" content="OA WORKFLOW BPM" />
		<meta name="author" content="YFSOFT DEV TEAM" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>YFOA PLATFORM</title>
		<link rel="stylesheet" href="${contextPath }/css/bootstrap.css" />
		<link rel="stylesheet" href="${contextPath }/css/bootstrap-responsive.css" />
		<link rel="stylesheet" href="${contextPath }/css/styles.css" />
		<script src="${contextPath }/js/jquery-1.11.0.min.js"></script>
		<script src="${contextPath }/js/bootstrap.js"></script>
		
	</head>
	<body>
	<div id="in-nav">
		<div class="container">
			<div class="row">
				<div class="span12">
					<a id="logo" href="#">
						<h4>
							YFOA<b> Platform</b>
						</h4>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="span6 offset2">
				<div class="alert alert-error">
					<button type="button" data-dismiss="alert" class="close">&times;</button>
					<strong>错误! </strong>${ERROR }
				</div>	
				<div class="login">
					<form class="form-horizontal"
						action="${rootPath }/user/login.do" method="POST">
						<div class="control-group">
							<div class="controls">
								<h4>系统登录</h4>
							</div>
						</div>
						<div class="control-group">
							<label for="inputUsername" class="control-label">账户 </label>
							<div class="controls">
								<input id="inputUsername" type="text" placeholder="" name="username" />
							</div>
						</div>
						<div class="control-group">
							<label for="inputPassword" class="control-label">密码 </label>
							<div class="controls">
								<input id="inputPassword" type="password" placeholder="" name="password" />
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn">提交</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp" />