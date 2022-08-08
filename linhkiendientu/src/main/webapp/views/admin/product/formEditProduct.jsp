<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf-8"%>
<%@include file = "/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> <dec:title default="LINH KIEN" /></title>
</head>
<body class="app sidebar-mini">
 <main class="app-content">
        <div class="app-title">
            <div>
              <h1><i class="fa fa-edit"></i>SỬA LINH KIỆN</h1>   
            </div>
            
          </div>
     
        <div class="row">
          <div class="col-md-12">
            <div class="tile">
              <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                  <form>
                    <div>
                        <input type="hidden" name="id" value="1">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName">Tên Linh Kiện</label>
                      <input name="tenLinhKien" class="form-control" id="exampleInputName" type="text"  placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputFile">Hình Ảnh</label>
                        <input name="hinhAnh" class="form-control-file" id="exampleInputFile" type="file" >
                      </div>
                    <div class="form-group">
                        <label for="exampleSelect1">Loại Linh Kiện</label>
                        <select name="loaiLinhKien" class="form-control" id="exampleSelect1">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleSelect2">Hãng Sản Xuất</label>
                      <select name="hangSX" class="form-control" id="exampleSelect2">
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                      </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputAmount">Số Lượng</label>
                        <input name="soLuong" class="form-control" id="exampleInputAmount" type="number" min="0"  placeholder="0">
                      </div>
                    <div class="form-group">
                      <label for="exampleTextarea">Mô Tả</label>
                      <textarea name="moTa" class="form-control" id="exampleTextarea" rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Bảo Hành</label>
                        <textarea name="baoHanh" class="form-control" id="exampleTextarea1" rows="3"></textarea>
                      </div>         
              <div class="col-lg-12  text-center">
                <button class="btn btn-primary" type="submit">Sửa Linh Kiện</button>
              </div>
            </div>
          </div>
        </div>
      </main>

  



</body>
</html>