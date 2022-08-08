<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf-8"%>
<%@include file = "/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <dec:title default="DON HANG" /></title>
</head>
<body class="app sidebar-mini">
  <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> ĐƠN HÀNG</h1>
        </div>
        <!-- <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-plus-square-o fa-lg"></i></li>
            <li class="breadcrumb-item active"><a href="#">Thêm Linh Kiện</a></li>
          </ul> -->
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
                      <th>ID Khách Hàng</th>
                      <th>Tên Khách Hàng</th>
                      <th>Ngày Mua </th>
                      <th>Tổng Tiền</th>
                      <th></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td><a href="#">2</a></td>
                      <td>2</td>
                      <td>Linh</td>
                      <td>07/07/2022</td>
                      <td>100.000</td>
                      <td> <a href="#">XÓA</a></td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td><a href="#">3</a></td>
                      <td>4</td>
                      <td>Phúc</td>
                      <td>01/07/2022</td>
                      <td>105.000</td>
                      <td> <a href="#">XÓA</a> </td>
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