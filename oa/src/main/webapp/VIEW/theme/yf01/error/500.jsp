<%@ page language="java" contentType="text/html; charset=UTF-8" isErrorPage="true" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%
	response.setStatus(HttpServletResponse.SC_OK);
%>
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
				<div class="span12 header">
					<h4>系统错误提示</h4>
				</div>
				<div class="span12">
					<% if(exception!=null) { %>
					<div class="alert alert-error">
						<strong>Oops! </strong><%= exception %>
					</div>
					<%} %>
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />	