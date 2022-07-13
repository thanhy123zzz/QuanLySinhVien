<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file ="/WEB-INF/views/layouts/taglib.jsp" %>
<head >
<title>Thêm sinh viên</title>
</head>
	<div class="col-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Thêm sinh viên</h4>
				<form:form class="forms-sample" method="POST" modelAttribute="sinhVien" action="them-sinh-vien" accept-charset="character_set">
				<c:if test="${trangThai==true}">
					<p class="text-success display-4">Thêm thành công!</p>
				</c:if>
				<c:if test="${trangThai==false}">
					<p class="text-danger display-4">Thêm thất bại!</p>
				</c:if>
					<div class="form-group">
						<label for="exampleInputName1">Mã số sinh viên</label>
							<form:input path="maSinhVien" type="text" class="form-control" id="exampleInputName1"
							placeholder="Mã số"/>
							<form:errors path="maSinhVien" class="text-danger" style="font-size: 12px"></form:errors>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail3">Họ</label>
							<form:input path="ho" type="text"
							class="form-control" id="exampleInputEmail3" placeholder="Họ" />
							<form:errors path="ho" class="text-danger" style="font-size: 12px"></form:errors>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4">Tên</label>
							<form:input path="ten" type="text" class="form-control" id="exampleInputPassword4"
							placeholder="Tên"/>
							<form:errors path="ten" class="text-danger" style="font-size: 12px"></form:errors>
					</div>  
					<div class="form-group">
						<label for="exampleSelectGender">Ngày Sinh</label>
							<form:input path="ngaySinh" id="datepicker" width="100%" placeholder="MM/dd/yyy"/>
							<form:errors path="ngaySinh" class="text-danger" style="font-size: 12px"></form:errors>
					</div>
					<div class="form-group">
						<label for="exampleSelectGender">Giới tính</label>
						<form:select path="gioiTinh" class="form-control" id="exampleSelectGender">
							<option>M</option>
							<option>F</option>
						</form:select>
					</div>
					<div class="form-group">
						<label for="exampleInputCity1">Mã lớp</label>
							<form:input path="maLop" type="text"
							class="form-control" id="exampleInputCity1"
							placeholder="Mã lớp" />
							<form:errors path="maLop" class="text-danger" style="font-size: 12px"></form:errors>
					</div>
					<div> 
							<button class="btn btn-success btn-icon-text" type="submit" style="position: right;width: 100%;margin-bottom: 20px;height: 7%">Thêm</button>
						<a href="/QuanLySinhVien/trang-chu/sinh-vien">
							<button class="btn btn-danger btn-icon-text" type="button" style="position: right;width: 100%;height: 7%">Huỷ</button>
						</a>
				</div>
				</form:form>
			</div>
		</div>
	</div>
		<script>
		$('#datepicker').datepicker({
			uiLibrary : 'bootstrap4'
		});
	</script>

