<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/layouts/taglib.jsp" %>
<head>
<title>Thông tin môn học</title>
</head>
<body>
	<div class="col-lg-12 stretch-card">
		<c:if test="${trangThai3=='true'}">
			<div class="alert alert-success alert-dismissible"
				style="width: 100%; height: 55px" >
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Xoá thành công!</strong> Môn học ${tenMonHoc}
			</div>
		</c:if>
		<c:if test="${trangThai3=='false'}">
			<div class="alert alert-danger alert-dismissible" style="width: 100%;height: 55px ">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Xoá thất bại!</strong>
				action.
			</div>
		</c:if>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Thông tin môn học</h4>
				<p class="card-description">
				<a href="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc/them-mon-hoc">
					<button class="btn btn-success" type="button">Thêm môn học</button>
					</a>
				</p>
				<div class="table-responsive pt-3">
					<table class="table table-hover" id = "tableMonHoc">
						<thead>
							<tr>
								<th>Mã môn học</th>
								<th>Tên môn học</th>
								<th>Số tín chỉ</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="i" items="${tableMonHoc}">
								<tr>
									<td>${i.maMH}</td>
									<td>${i.tenMH}</td>
									<td>${i.soTinChi}</td>
									<td>
										<div class="btn-group" role="group" aria-label="Basic example">
										<a href="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc/sua-mon-hoc/${i.maMH}">
											<button type="button" class="btn btn-inverse-info btn-fw">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
												Sửa
											</button></a>
											<a href="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc/xoa/${i.maMH}">
											<button onclick="return alertFn()" type="button" class="btn btn-inverse-danger btn-fw">
												<i class="fa fa-times" aria-hidden="true"></i>
											Xoá
											</button></a>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
