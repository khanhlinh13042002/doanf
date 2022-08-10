<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang Chủ" /></title>

</head>
<body>
	<div id="content">

		<main role="main">
			<!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
			<div class="container mt-4">
				<form class="needs-validation" name="frmthanhtoan" method="get"
					action="/pages/userUI/orderPage.html">
					<input type="hidden" name="kh_tendangnhap" value="dnpcuong">

					<div class="py-5 text-center">
						<i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
						<h2>Thanh toán</h2>
						<p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông
							tin Giỏ hàng trước khi Đặt hàng.</p>
					</div>

					<div class="row info-client">
						<div class="col-md-4 order-md-2 mb-4">
							<h4
								class="d-flex justify-content-between align-items-center mb-3">
								<span class="text-muted">Giỏ hàng</span> <span
									class="badge badge-secondary badge-pill">2</span>
							</h4>
							<ul class="list-group mb-3">

								<c:set var="o" value="${sessionScope.cart }" />
								<c:forEach items="${o.items}" var="i">
									<input type="hidden" name="user" value="">
									<input type="hidden" name="productID"
										value="${i.product.productID}">
									<input type="hidden" name="priceProduct"
										value="${i.quantity*i.price}">
									<input type="hidden" name=quantity value="${i.quantity}">
									<li
										class="list-group-item d-flex justify-content-between lh-condensed">
										<div>
											<h6 class="my-0">${i.product.productName}</h6>
											<small class="text-muted">${i.price} x ${i.quantity}</small>
										</div> <span class="text-muted">${i.quantity*i.price}</span>
									</li>
								</c:forEach>
								<li class="list-group-item d-flex justify-content-between">
									<span>Tổng thành tiền:</span> <strong>${o.totalMoney }</strong>
									<input type="hidden" name="totalMoney" value="${o.totalMoney }">
								</li>
							</ul>


						</div>
						<div class="col-md-8 order-md-1">
							<h4 class="mb-3">Thông tin khách hàng</h4>
							<input type="hidden" name="user" value="">

							<div class="row">
								<div class="col-md-12">
									<label for="kh_ten">Họ tên</label> <input type="text"
										class="form-control" name="kh_ten" id="kh_ten" required
										class="form-control">
								</div>

								<div class="col-md-12">
									<label for="kh_diachi">Địa chỉ</label> <input type="text"
										class="form-control" name="kh_diachi" id="kh_diachi" required
										class="form-control">
								</div>
								<div class="col-md-12">
									<label for="kh_dienthoai">Điện thoại</label> <input type="text"
										class="form-control" name="kh_dienthoai" id="kh_dienthoai"
										required class="form-control">
								</div>



							</div>


							<hr class="mb-4">
							<button id="js-confirm"
								class="btn btn-primary btn-lg btn-block order-name "
								type="submit" name="btnDatHang">Đặt hàng</button>
						</div>
					</div>
				</form>
			</div>
			<!-- End block content -->
	</div>
	</main>

</body>
</html>