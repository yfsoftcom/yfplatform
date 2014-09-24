<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath+ "/VIEW/theme/yf01");
	request.setAttribute("rootPath",contextPath);
%>
<jsp:include page="header.jsp" />

<div class="page">
	<div class="page-container">
		<div class="container">
			<div class="row">
				<div class="span12 header">
					<h4>系统提示</h4>
				</div>
				<div class="span12">
					<div class="alert alert-info">
						<strong>Info! </strong>${RESULT }
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />	