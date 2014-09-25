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
				       <p><i class="icon-question-sign"></i> 用户组的管理，用于进行权限的设置和工作流程配置，建议使用英文，中文可能出现乱码问题！</p>
				      </div>
				      <h4 class="header">用户组  
				      	<a href="#createGroupModal" data-toggle="modal" class="btn pull-right"><i class="icon-plus"></i> 添加</a>
				      </h4>
				      <table class="table table-striped sortable">
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

<%-- 添加组信息的表单 --%>
<div id="createGroupModal" class="modal hide fade">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		<h3>添加用户组</h3>
	</div>
	<form action="${rootPath }/group/add.do" class="form-horizontal">
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label" for="inputGroupname">组名</label>
				<div class="controls">
					<input type="text" id="inputGroupname" placeholder="建议使用全英文" name="groupname">
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn">关闭</a>
			<button type="submit" class="btn btn-primary">保存</button>
		</div>
	</form>
</div>

<jsp:include page="../footer.jsp" />