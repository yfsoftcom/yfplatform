<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%
	String contextPath = request.getContextPath();
	request.setAttribute("contextPath", contextPath+ "/VIEW/theme/yf01");
	request.setAttribute("rootPath",contextPath);
%>

<div class="span2">
	<h4>系统设置</h4>
	<div class="sidebar">
		<ul class="col-nav span2">
			<li>
				<a href="#user-setting" data-toggle="collapse" class="accordion-toggle">
					<i class="icon-chevron-down pull-right"></i> 用户管理</a>
			</li>
			<li id="user-setting" class="in collapse">
				<ul>
					<li>
						<a href="#"> <i class="icon-plus"></i> 添加用户</a>
						<a href="#"> <i class="icon-search"></i> 查询用户</a>
						<a href="${rootPath }/group/list.do"> <i class="icon-groups"></i> 用户组管理</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#obs-setting" data-toggle="collapse" class="accordion-toggle"> 
					<i class="icon-chevron-down pull-right"></i> 组织架构管理</a>
			</li>
			<li id="obs-setting" class="collapse">
				<ul>
					<li>
						<a href="${rootPath }/obs/list.do"> <i class="icon-signal"></i> 添加OBS</a>
						<a href="#"> <i class="icon-fire"></i> 查询OBS</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#">权限管理 </a>
			</li>
			<li>
				<a href="#">模型管理 </a>
			</li>
			<li>
				<a href="#">自定义表单</a>
			</li>
			<li>
				<a href="#wf-setting" data-toggle="collapse" class="accordion-toggle">
				<i class="icon-chevron-down pull-right"></i> 流程管理</a>
			</li>
			<li id="wf-setting" class="collapse">
				<ul>
					<li>
						<a href="#"><i class="icon-chevron-right"></i> 新建流程</a>
						<a href="#"><i class="icon-chevron-right"></i> 流程配置</a>
					</li>
				</ul>
			</li>
		</ul>
	</div>
</div>

