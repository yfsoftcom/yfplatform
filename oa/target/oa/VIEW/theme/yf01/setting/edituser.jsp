<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath+ "/VIEW/theme/yf01");
	request.setAttribute("rootPath",contextPath);
%>
<jsp:include page="../header.jsp" />

<div class="page">
	<div class="page-container">
		<div class="container">
			<div class="row">
				<jsp:include page="settingBanner.jsp" />
				<div class="span10">
					<div class="alert alert-block">
						<p>
							<i class="icon-question-sign"></i>
						</p>
					</div>
					<h4 class="header">添加用户</h4>
					<form class="form-horizontal" action="#" method="POST">
						<div class="control-group">
							<label class="control-label" for="inputLoginname">登录名:</label>
							<div class="controls">
								<input type="text" id="inputLoginname" name="loginname" placeholder="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEmail">邮箱:</label>
							<div class="controls">
								<input type="text" id="inputEmail" name="email" placeholder="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">密码:</label>
							<div class="controls">
								<input type="password" id="inputPassword" name="loginpass" placeholder="">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputConfirmPassword">确认密码:</label>
							<div class="controls">
								<input type="password" id="inputConfirmPassword" name="" placeholder="">
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button type="submit" class="btn"><i class="icon-ok"></i> 提交</button>
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>
</div>


<jsp:include page="../footer.jsp" />