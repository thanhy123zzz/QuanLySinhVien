<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>
<head>
<title>Sửa sinh viên</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
</head>
<div class="col-lg-12 stretch-card">
		<c:if test="${trangThai1=='true'}">
			<div class="alert alert-success alert-dismissible"
				style="width: 100%; height: 55px" >
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Sửa thành công!</strong>
			</div>
		</c:if>
		<c:if test="${trangThai1=='false'}">
			<div class="alert alert-danger alert-dismissible" style="width: 100%;height: 55px ">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Sửa thất bại!</strong> có lỗi
			</div>
		</c:if>
	</div>
<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Chỉnh sửa thông tin chi tiết sinh viên</h4>
				<form:form method="POST"
				action="/QuanLySinhVien/trang-chu/sinh-vien/${sinhVien.maSinhVien}/sua-thong-tin"
				modelAttribute="sinhVien" acceptCharset="UTF-8">
				<div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Họ</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="ho"/>
                            <form:errors path="ho" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Tên</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="ten"/>
                            <form:errors path="ten" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                   <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Lớp</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="maLop"/>
                            <form:errors path="maLop" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Niên khoá</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="nienKhoa"/>
                            <form:errors path="nienKhoa" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Giới tính</label>
                          <div class="col-sm-9">
                            <form:select path="gioiTinh" class="form-control" id="exampleSelectGender">
								<option>M</option>
								<option>F</option>
							</form:select>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Ngày sinh</label>
                          <div class="col-sm-9">
                            <form:input path="ngaySinh" id="datepicker" width="100%" placeholder="MM/dd/yyy"/>
                            <form:errors path="ngaySinh" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Email cá nhân</label>
                          <div class="col-sm-9">
                           <form:input type="text" class="form-control" path ="email"/>
                            <form:errors path="email" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Địa chỉ</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="diaChi"/>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Số điện thoại</label>
                          <div class="col-sm-9">
                           <form:input type="text" class="form-control" path ="soDienThoai"/>
                           <form:errors path="soDienThoai" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Số CMND/CCCD</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="CMND"/>
                            <form:errors path="CMND" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Chuyên ngành</label>
                          <div class="col-sm-9">
                           <form:input type="text" class="form-control" path ="chuyenNganh"/>
                           <form:errors path="chuyenNganh" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Ngành</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="nganh"/>
                            <form:errors path="nganh" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                   <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Quốc tịch</label>
                          <div class="col-sm-9">
                           <form:input type="text" class="form-control" path ="quocTich"/>
                           <form:errors path="quocTich" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Dân tộc</label>
                          <div class="col-sm-9">
                            <form:input type="text" class="form-control" path ="danToc"/>
                            <form:errors path="danToc" class="text-danger" style="font-size: 12px"></form:errors>
                          </div>
                        </div>
                      </div>
                  </div>
                  <button onclick="return alertFn()" class="btn btn-success btn-icon-text" type="submit" style="position: right;width: 100%;margin-bottom: 20px;height: 7%">Sửa</button>
						<a href="/QuanLySinhVien/trang-chu/sinh-vien">
							<button class="btn btn-danger btn-icon-text" type="button" style="position: right;width: 100%;height: 7%">Huỷ</button>
						</a>
				</form:form>
			</div>
		</div>
	</div>
	<script>
		$('#datepicker').datepicker({
			uiLibrary : 'bootstrap4'
		});
	</script>