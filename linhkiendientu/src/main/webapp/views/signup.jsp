<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><dec:title default="Đăng Ký"/></title>
</head>
<body>
	<div class="col-lg-12 well">
            <h1 style="font-family: Arial ; color: blue">Đăng ký</h1>
            <div class="row">
                <div class="col-sm-6 form-group">
                    <label>Nhập Tên Người Dùng</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" name="tenNguoiDung" class="form-control">
                    </div>
                </div>
                <div class="col-sm-6 form-group">
                    <label>Ngày Sinh</label>
                    <div class="input-group">
                        <input style="border-radius: 5px;" name="ngaySinh" type="date" class="form-control">
                    </div>
                </div>



                <div class="col-sm-12 form-group">
                    <label>Tạo Mật khẩu </label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" name="matKhau" class="form-control">
                    </div>
                </div>

                <div class="col-sm-12 form-group">
                    <label>Xác Nhận Mật Khẩu</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" name="xacNhanMatKhau" class="form-control">
                    </div>
                </div>

                <div class="col-sm-12 form-group">
                    <label>Số Điện Thoại</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                        <input type="text" name="sdt" class="form-control">
                    </div>
                </div>

                <div class="col-sm-12 form-group">
                    <label>Địa Chỉ</label>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
                        <input type="text" name="diaChi" class="form-control">
                    </div>
                </div>
                <div class="col-sm-12 form-group"><label>Giới Tính</label>
                    <div class="col-sm-12 form-group  ">
                        <div class="form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="gioiTinh"> NAM
                            </label>
                        </div>
                        <div class="form-check-inline">
                            <label class="form-check-label">
                                <input type="radio" class="form-check-input" name="gioiTinh"> NỮ
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="col-sm-3"></div>
                    <div class="col-sm-6 text-center ">
                        <form action="...">
                            <button type="submit" class="btn btn-block btn-warning">Đăng Kí</button>
                        </form>
                    </div>
                    <div class="col-sm-3"></div>
                </div>
            </div>
        </div>
</body>
</html>