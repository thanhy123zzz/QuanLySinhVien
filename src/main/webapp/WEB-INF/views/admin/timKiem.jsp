<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm</title>
</head>
<body>
	<c:forEach var="i" items="${sinhViens}">
		<div class="col-md-12 grid-margin stretch-card">
			<div class="card">
				<h5 class="card-header">${i.ho} ${i.ten} - ${i.maSinhVien}</h5>
				<div class="card-body">
					<h5 class="card-title">Thông tin</h5>
					<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Số điện thoại</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.soDienThoai }</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Địa chỉ</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.diaChi }</div>
					</div>
					<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Ngành</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.nganh }</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Chuyên ngành</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.chuyenNganh }</div>
					</div>
										<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Quốc tịch</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.quocTich }</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Dân tộc</h6>
						</div>
						<div class="col-sm-4 text-secondary">${i.danToc }</div>
					</div>
					<hr>
					<a href="/QuanLySinhVien/trang-chu/sinh-vien/${i.maSinhVien}">
						<button type="button" class="btn btn-inverse-success btn-fw">
							<i class="fa fa-eye" aria-hidden="true"></i> Xem
						</button>
					</a> <a
						href="/QuanLySinhVien/trang-chu/sinh-vien/${i.maSinhVien}/sua-thong-tin">
						<button type="button" class="btn btn-inverse-info btn-fw">
							<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sửa
						</button>
					</a>
				</div>
			</div>
		</div>
	</c:forEach>
</body>
</html>