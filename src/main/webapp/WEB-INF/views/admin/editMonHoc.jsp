<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Sửa môn học</title>
</head>
<div class="col-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h4 class="card-title">Sửa môn học</h4>
			<form:form class="forms-sample" method="POST" modelAttribute="monHoc"
				action="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc/sua-mon-hoc/${maMH}" accept-charset="character_set">
				<c:if test="${trangThai2==true}">
					<p class="text-success display-4">Sửa thành công!</p>
				</c:if>
				<c:if test="${trangThai2==false}">
					<p class="text-danger display-4">Sửa thất bại!</p>
				</c:if>
				<div class="form-group">
					<label for="exampleInputName1">Mã môn học</label>
					<form:input path="maMH" type="text" class="form-control"
						id="exampleInputName1" placeholder="Mã môn học" readonly="true"/>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail3">Tên môn học</label>
					<form:input path="tenMH" type="text" class="form-control"
						id="exampleInputEmail3" placeholder="Tên môn học" />
					<form:errors path="tenMH" class="text-danger"
						style="font-size: 12px"></form:errors>
				</div>
				<div class="form-group">
					<label for="exampleSelectGender">Số tín chỉ</label>
					<form:select path="soTinChi" class="form-control"
						id="exampleSelectGender">
						<c:if test="${tinChi==1}">
						<option selected>1</option>
						<option>2</option>
						<option>3</option>
						</c:if>
						<c:if test="${tinChi==2}">
						<option >1</option>
						<option selected>2</option>
						<option>3</option>
						</c:if>
						<c:if test="${tinChi==3}">
						<option >1</option>
						<option>2</option>
						<option selected>3</option>
						</c:if>
					</form:select>
				</div>
				<div>
					<button onclick="return alertFn()" class="btn btn-success btn-icon-text" type="submit"
						style="position: right; width: 100%; margin-bottom: 20px; height: 7%">Sửa</button>
					<a href="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc">
						<button class="btn btn-danger btn-icon-text" type="button"
							style="position: right; width: 100%; height: 7%">Huỷ</button>
					</a>
				</div>
			</form:form>
		</div>
	</div>
</div>
