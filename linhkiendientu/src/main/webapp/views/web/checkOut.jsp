<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Trang Chủ"/></title>

</head>
<body>
	 <div id="content">

        <main role="main">
            <!-- Block content - Đục lỗ trên giao diện bố cục chung, đặt tên là `content` -->
            <div class="container mt-4">
                <form class="needs-validation" name="frmthanhtoan" method="get" action="/pages/userUI/orderPage.html">
                    <input type="hidden" name="kh_tendangnhap" value="dnpcuong">

                    <div class="py-5 text-center">
                        <i class="fa fa-credit-card fa-4x" aria-hidden="true"></i>
                        <h2>Thanh toán</h2>
                        <p class="lead">Vui lòng kiểm tra thông tin Khách hàng, thông tin Giỏ hàng trước khi Đặt hàng.
                        </p>
                    </div>

                    <div class="row info-client">
                        <div class="col-md-4 order-md-2 mb-4">
                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                <span class="text-muted">Giỏ hàng</span>
                                <span class="badge badge-secondary badge-pill">2</span>
                            </h4>
                            <ul class="list-group mb-3">
                                <input type="hidden" name="sanphamgiohang[1][sp_ma]" value="2">
                                <input type="hidden" name="sanphamgiohang[1][gia]" value="11800000.00">
                                <input type="hidden" name="sanphamgiohang[1][soluong]" value="2">

                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <h6 class="my-0">Apple Ipad 4 Wifi 16GB</h6>
                                        <small class="text-muted">11800000.00 x 2</small>
                                    </div>
                                    <span class="text-muted">23600000</span>
                                </li>
                                <input type="hidden" name="sanphamgiohang[2][sp_ma]" value="4">
                                <input type="hidden" name="sanphamgiohang[2][gia]" value="14990000.00">
                                <input type="hidden" name="sanphamgiohang[2][soluong]" value="8">

                                <li class="list-group-item d-flex justify-content-between lh-condensed">
                                    <div>
                                        <h6 class="my-0">Apple iPhone 5 16GB White</h6>
                                        <small class="text-muted">14990000.00 x 8</small>
                                    </div>
                                    <span class="text-muted">119920000</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between">
                                    <span>Tổng thành tiền</span>
                                    <strong>143520000</strong>
                                </li>
                            </ul>


                        </div>
                        <div class="col-md-8 order-md-1">
                            <h4 class="mb-3">Thông tin khách hàng</h4>

                            <div class="row">
                                <div class="col-md-12">
                                    <label for="kh_ten">Họ tên</label>
                                    <input type="text" class="form-control" name="kh_ten" id="kh_ten" required class="form-control">
                                </div>
                                <div class="col-md-12">
                                    <label for="kh_gioitinh">Giới tính</label>
                                    <input type="text" class="form-control" name="kh_gioitinh" id="kh_gioitinh">
                                </div>
                                <div class="col-md-12">
                                    <label for="kh_diachi">Địa chỉ</label>
                                    <input type="text" class="form-control" name="kh_diachi" id="kh_diachi" required class="form-control">
                                </div>
                                <div class="col-md-12">
                                    <label for="kh_dienthoai">Điện thoại</label>
                                    <input type="text" class="form-control" name="kh_dienthoai" id="kh_dienthoai" required class="form-control">
                                </div>
                                
                                <div class="col-md-12">
                                    <label for="kh_ngaysinh">Ngày sinh</label>
                                    <input type="text" class="form-control" name="kh_ngaysinh" id="kh_ngaysinh">
                                </div>
                               
                            </div>


                            <hr class="mb-4">
                            <button id="js-confirm" class="btn btn-primary btn-lg btn-block order-name " type="submit" name="btnDatHang"   >
                                Đặt hàng
                            </button>

                                    <!-- <div id="myModal" class="modal fade js-modal">
                                        <div class="modal-dialog modal-confirm">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="icon-box">
                                                        <i class="material-icons">&#xE876;</i>
                                                    </div>
                                                    <h4 class="modal-title w-100">Awesome!</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p class="text-center">Your booking has been confirmed. Check your email for detials.</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div> -->
                        </div>
                    </div>
                </form>
            </div>
            <!-- End block content -->
            
            
        </div>
    </main>
        
</body>
</html>