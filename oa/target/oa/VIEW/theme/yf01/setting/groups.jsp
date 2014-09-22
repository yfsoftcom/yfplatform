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
				       <p><i class="icon-question-sign"></i> 用户组的管理，用于进行权限的设置和工作流程配置</p>
				      </div>
				      <table class="table table-striped sortable table-bordered">
				        <thead>
				          <tr>
				            <th>组名</th>
				            <th width="20%">操作</th>
				          </tr>
				        </thead>
				        <tbody>
				        	<c:forEach var="group" items="${grouplist }">
							<tr>
								<td>${group.name }</td>
								<td>
									<div class="btn-group">
										<button class="btn">修改</button>
										<button data-toggle="dropdown" class="btn dropdown-toggle">
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li><a href="#">删除</a> <a href="#">关联用户</a></li>
										</ul>
									</div>
								</td>
							</tr>
							</c:forEach>
				          
				          
				        </tbody>
				      </table>
				      <div class="pagination pagination-centered">
				        <ul>
				          <li class="disabled"><a href="#">&laquo;</a></li>
				          <li class="active"><a href="#">1</a></li>
				          <li><a href="#">2</a></li>
				          <li><a href="#">3</a></li>
				          <li><a href="#">4</a></li>
				          <li><a href="#">5</a></li>
				          <li><a href="#">&raquo;</a></li>
				        </ul>
				      </div>
				   
				</div>
			</div>
		</div>
	</div>
</div>

<jsp:include page="../footer.jsp" />