<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>

<jsp:include page="header.jsp" />

<div class="page">
	<div class="page-container">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="table-panel">
						<h4><i class="icon-list-alt"></i>公司新闻</h4>
						<div class="widget">
							<table class="table table-striped sortable">
								<thead>
									<tr>
										<th>标题</th>
										<th>发布时间</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><a href="">某某某干了什么</a></td>
										<td>2014-05-01 19:00:00</td>
									</tr>
									<tr>
										<td><a href="">某某某干了什么</a></td>
										<td>2014-05-01 19:00:00</td>
									</tr>
									<tr>
										<td><a href="">某某某干了什么</a></td>
										<td>2014-05-01 19:00:00</td>
									</tr>
									<tr>
										<td><a href="">某某某干了什么</a></td>
										<td>2014-05-01 19:00:00</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<hr>
					
					<div class="row-fluid">
						<div class="span6">
							<h5><i class="icon-bell"></i>公告</h5>
							<div class="widget">
								<ol>
									<li>公告</li>
									<li>公告</li>
									<li>公告</li>
									<li>公告</li>
								</ol>
							</div>
						</div>
						<div class="span6">
							<h5><i class="icon-volume-down"></i>通知</h5>
							<div class="widget">
								<ol>
									<li>通知</li>
									<li>通知</li>
									<li>通知</li>
									<li>通知</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div id="events" class="span4">
					<h4>Upcoming</h4>
					<div class="event">
						<div class="date success">
							<h1>14</h1>
							<h4>NOV</h4>
						</div>
						<h4>Sprint 4</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date danger">
							<h1>11</h1>
							<h4>NOV</h4>
						</div>
						<h4>Meetup Group</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date warning">
							<h1>03</h1>
							<h4>NOV</h4>
						</div>
						<h4>Dinner Party</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date">
							<h1>27</h1>
							<h4>OCT</h4>
						</div>
						<h4>Sprint 3</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date">
							<h1>20</h1>
							<h4>OCT</h4>
						</div>
						<h4>Birthday Party</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date success">
							<h1>14</h1>
							<h4>OCT</h4>
						</div>
						<h4>Sprint 4</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date danger">
							<h1>11</h1>
							<h4>OCT</h4>
						</div>
						<h4>Meetup Group</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date warning">
							<h1>03</h1>
							<h4>OCT</h4>
						</div>
						<h4>Dinner Party</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date">
							<h1>27</h1>
							<h4>SEP</h4>
						</div>
						<h4>Sprint 3</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<div class="event">
						<div class="date">
							<h1>20</h1>
							<h4>SEP</h4>
						</div>
						<h4>Birthday Party</h4>
						<p>
							2pm @ Convention Center<br />122 Meyran Ave, Pittsburgh PA
						</p>
					</div>
					<p class="load-more">
						<a href="">Load More</a>
					</p>
				</div>
				<div class="span8">
					<div id="calendar"></div>
				</div>
			</div>

		</div>
	</div>
</div>

<jsp:include page="footer.jsp" />