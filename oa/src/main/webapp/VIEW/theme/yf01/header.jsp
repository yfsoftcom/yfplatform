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
		<link rel="stylesheet" href="${contextPath }/css/toastr.css" />
		<link rel="stylesheet" href="${contextPath }/css/fullcalendar.css" />
		<script src="${contextPath }/js/jquery-1.11.0.min.js"></script>
		<script src="${contextPath }/js/bootstrap.js"></script>
		<script src="${contextPath }/js/jquery.knob.js"></script>
		<script src="${contextPath }/js/jquery.sparkline.min.js"></script>
		<script src="${contextPath }/js/jquery.tablesorter.min.js"></script>
		<script src="${contextPath }/js/jquery.peity.min.js"></script>
		<script src="${contextPath }/js/fullcalendar.min.js"></script>
		<script src="${contextPath }/js/gcal.js"></script>
		<script src="${contextPath }/js/setup.js"></script>
		
	</head>
	<body>
		<div id="in-nav">
			<div class="container">
				<div class="row">
					<div class="span12">
						<div class="btn-group pull-right">
							<span>${SESSION_USER.loginName } </span>
							<button class="btn dropdown-toggle" data-toggle="dropdown">
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li>1</li>
								<li>2</li>
								<li>3</li>
							</ul>
						</div>
						<a id="logo" href="index.html">
							<h4>YFOA<strong> Platform</strong></h4>
						</a>
					</div>
				</div>
			</div>
		</div>
		<div id="in-sub-nav">
			<div class="container">
				<div class="row">
					<div class="span12">
						<ul>
							<li>
								<a href="${rootPath }/home/dashboard.do" class="active">
									<i class="batch home"></i><br />工作台
								</a>
							</li>
							<li>
								<span class="label label-important pull-right">08</span>
								<a href="${rootPath }/wf/init.do">
									<i class="batch stream"></i><br />流程办理
								</a>
							</li>
							<li>
								<span class="label label-important pull-right">04</span>
								<a href="${rootPath }/messge/init.do">
									<i class="batch plane"></i><br />消息中心
								</a>
							</li>
							<li>
								<a href="${rootPath }/task/init.do">
									<i class="batch calendar"></i><br />个人事务
								</a>
							</li>
							<li>
								<a href="paragraphs.html">
									<i class="batch quill"></i><br />DEMO
								</a>
							</li>
							<li>
								<a href="faq.html">
									<i class="batch forms"></i><br />FAQ
								</a>
							</li>
							<li>
								<a href="${rootPath }/setting/user.do">
									<i class="batch users"></i><br />用户
								</a>
							</li>
							<li>
								<a href="${rootPath }/setting/init.do">
									<i class="batch settings"></i><br />设置
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>