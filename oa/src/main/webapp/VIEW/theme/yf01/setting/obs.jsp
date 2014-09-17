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
				    	<p><i class="icon-question-sign"></i> 管理公司的组织架构信息</p>
				    </div>
				    <hr/>
				    <blockquote>
					    <ul id="obs-tree"class="treeview">
							<li>
								<div class="hitarea expandable-hitarea"></div>
								<span>YF Team</span>
								<ul>
									<li>
										<div class="hitarea expandable-hitarea"></div>
										<span>项目部</span>
										<ul id="folder21">
											<li>
												<div class="hitarea expandable-hitarea"></div>
												<span>开发部</span>
											</li>
											<li>
												<div class="hitarea expandable-hitarea"></div>
												<span>运维部</span>
											</li>
										</ul>
									</li>
								</ul>
							</li>
							<li><span class="file">管理员</span></li>
						</ul>
					
					</blockquote>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$("#obs-tree").treeview();
</script>

<jsp:include page="../footer.jsp" />