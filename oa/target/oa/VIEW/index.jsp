<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%--
此处为系统的入口位置
1.系统会通过此入口加载模板信息
2.输出到模板的位置

--%>
<% request.setAttribute("page", "/VIEW/theme/yf01/login.jsp"); %>
<jsp:include page="${ page }" />