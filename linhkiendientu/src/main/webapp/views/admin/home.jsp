<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Dashboard - Home" /></title>
</head>
<body class="app sidebar-mini">
	<main class="app-content">
		<div class="app-title">
			<div>
				<h1>
					<i class="fa fa-th-list"></i> CHI TIẾT ĐƠN HÀNG
				</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="tile">
					<div class="tile-body">
						<div class="table-responsive">
							<table class="table table-hover table-bordered" id="sampleTable">
								<thead>
									<tr>
										<th>STT</th>
										<th>ID Đơn Hàng</th>
										<th>ID Linh Kiện</th>
										<th>Tên Linh Kiện</th>
										<th>Số Lượng</th>
										<th>Đơn Giá</th>
										<th>Khuyến Mãi</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>2</td>
										<td>2</td>
										<td>Tên Linh Kiện</td>
										<td>3</td>
										<td>140.000</td>
										<td>10</td>
										<td><a href="#">XÓA</a></td>
									</tr>
									<tr>
										<td>2</td>
										<td>3</td>
										<td>4</td>
										<td>Tên Linh Kiện</td>
										<td>3</td>
										<td>140.000</td>
										<td>10</td>
										<td><a href="#">XÓA</a></td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>