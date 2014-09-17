<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<jsp:include page="setting/settingBanner.jsp" />
				<div class="span9">
					<div class="alert alert-block">
				        <button type="button" data-dismiss="alert" class="close">&times;</button>
				        <h4>Warning</h4>Fusce dapibus, tellus ac cursus commodo, tortor mauris nibh.
				      </div>
				      <div class="alert alert-error">
				        <button type="button" data-dismiss="alert" class="close">&times;</button><strong>Oh snap! </strong>Change a few things up and try submitting again.
				      </div>
				      <div class="alert alert-success">
				        <button type="button" data-dismiss="alert" class="close">&times;</button><strong>Well done! </strong>You successfully read this important alert message.
				      </div>
				      <div class="alert alert-info">
				        <button type="button" data-dismiss="alert" class="close">&times;</button><strong>Heads up! </strong>This alert needs your attention, but it's not super important.
				      </div>
				      <hr/>
				      
				      <blockquote><strong>Blockquote </strong>Quisque suscipit lobortis eros, quis convallis 
				        diam laoreet sit amet. Duis dapibus lacinia ornare. Class aptent taciti sociosqu ad 
				        litora torquent per conubia nostra, per inceptos himenaeos. Lorem ipsum dolor sit amet, 
				        consectetur adipiscing elit. 
				      </blockquote>
				      <blockquote>
				        Sed gravida felis et sapien gravida quis pharetra libero blandit. Integer euismod 
				        nibh commodo elit ultricies euismod. Maecenas ullamcorper erat eu ligula faucibus 
				        quis adipiscing nibh varius.<small>Someone famous in Source Title</small>
				      </blockquote>
				      
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
				</div>
			</div>
		</div>
	</div>
</div>

<script>
$("#obs-tree").treeview();
</script>
<jsp:include page="footer.jsp" />