<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Thông tin: ${sinhVien.maSinhVien }</title>

</head>
<div class="container">

	<div class="row">
		<div class="col-md-4 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<div class="d-flex flex-column align-items-center text-center">
						<%-- <c:if test="${sinhVien.gioiTinh == 'M'}">
							<img src="https://bootdey.com/img/Content/avatar/avatar7.png"
								alt="Admin" class="rounded-circle" width="150">
						</c:if>
						<c:if test="${sinhVien.gioiTinh == 'F'}">
							<img src="https://bootdey.com/img/Content/avatar/avatar3.png"
								alt="Admin" class="rounded-circle" width="150">
						</c:if> --%>

						<form
							action="/QuanLySinhVien/trang-chu/sinh-vien/${sinhVien.maSinhVien}/insert-image"
							method="post" enctype="multipart/form-data">
							<div id='profile-upload'
								style="background-image: url('/QuanLySinhVien/trang-chu/sinh-vien/${sinhVien.maSinhVien}/hinh');">
								<div class="hvr-profile-img">
									<input type="file" id='getval' class="upload w180"
										title="Thêm ảnh" id="imag" oninput="showDiv()"
										name="photo" accept=".png, .jpg, .jpeg">
								</div>
								<i class="fa fa-camera"></i>
							</div>
							<br>
							<center class="btn-group" role="group">
								<button id="welcomeDiv" style="display: none;"
									class="btn btn-info " type="submit">Đồng ý</button>
									<br>
								<button id="welcomeDiv1" style="display: none;"
									class="btn btn-danger " onclick="showDiv()">Hủy</button>
							</center>
						</form>
						<div class="mt-3">
							<h4>${sinhVien.ho}${sinhVien.ten }</h4>
							<p class="text-secondary mb-1">${sinhVien.maSinhVien}</p>
							<p class="text-muted font-size-sm">${sinhVien.maLop }</p>
							<a class="btn btn-info "
								href="/QuanLySinhVien/trang-chu/sinh-vien/${sinhVien.maSinhVien}/sua-thong-tin">Sửa
								thông tin</a> <a href="">
								<button class="btn btn-outline-primary">Liên hệ</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-8 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Họ và tên</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.ho}
							${sinhVien.ten }</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Email cá nhân</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.email}</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Số điện thoại</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.soDienThoai}</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Số CMND/CCCD</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.CMND}</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Địa chỉ</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.diaChi}</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-3">
							<h6 class="mb-0">Ngày Sinh</h6>
						</div>
						<div class="col-sm-9 text-secondary">${sinhVien.ngaySinh}</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Giới tính</h6>
						</div>
						<div class="col-sm-4 text-secondary">
							<c:if test="${sinhVien.gioiTinh == 'M'}">
								Nam
							</c:if>
							<c:if test="${sinhVien.gioiTinh == 'F'}">
								Nữ
							</c:if>
						</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Niên Khoá</h6>
						</div>
						<div class="col-sm-4 text-secondary">${sinhVien.nienKhoa }</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Ngành</h6>
						</div>
						<div class="col-sm-4 text-secondary">${sinhVien.nganh }</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Chuyên ngành</h6>
						</div>
						<div class="col-sm-4 text-secondary">${sinhVien.chuyenNganh }</div>
					</div>
					<hr>
					<div class="row">
						<div class="col-sm-2">
							<h6 class="mb-0">Dân tộc</h6>
						</div>
						<div class="col-sm-4 text-secondary">${sinhVien.danToc }</div>
						<hr>
						<div class="col-sm-2">
							<h6 class="mb-0">Quốc tịch</h6>
						</div>
						<div class="col-sm-4 text-secondary">${sinhVien.quocTich }</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Đăng ký môn học</h4>
					<div class="table-responsive">
						<table class="table table-hover" id="tableDangKyMon">
							<thead>
								<tr>
									<th>Mã môn học</th>
									<th>Đợt học</th>
									<th>Lớp</th>
									<th>Ngày đăng Ký</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="i" items="${tableDangKyMonHoc}">
									<tr onclick="alert('Hello! I am an alert box!')">
										<td>${i.maMonHoc}</td>
										<td>${i.dotHoc}</td>
										<td>${i.lop}</td>
										<td>${i.ngayDangKy}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Điểm các học phần</h4>
					<div class="table-responsive">

						<table class="table table-hover" id="tableDiem">
							<thead>
								<tr>
									<th>Mã môn học</th>
									<th>Đợt học</th>
									<th>Lớp</th>
									<th>Điểm</th>
									<th>Thao tác</th>
								</tr>
							</thead>
							<tbody>
									<c:forEach var="i" items="${tableDiem}">
										<tr>
											<td>${i.maMonHoc}</td>
											<td>${i.dotHoc}</td>
											<td>${i.lop}</td>
											<td>
													<c:if test="${i.diem >10 || i.diem < 0}">
														<label class="badge badge-danger">Rớt</label>
													</c:if>
													<c:if test="${i.diem <=10 && i.diem >= 7.5}">
														<label class="badge badge-success">${i.diem}</label>
													</c:if>
													<c:if test="${i.diem < 7.5 && i.diem >= 4.5}">
														<label class="badge badge-info">${i.diem}</label>
													</c:if>
													<c:if test="${i.diem < 4.5 && i.diem >= 0}">
														<label class="badge badge-warning">${i.diem}</label>
													</c:if>
												</td>
											<td><a class="btn btn-success" href="/QuanLySinhVien/trang-chu/sinh-vien/diem/${i.id}">
													<i class="fa fa-eye" aria-hidden="true"></i>
												</a></td>
										</tr>

									</c:forEach>
							</tbody>
						</table>

					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-6 grid-margin stretch-card">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title">Bản Điểm</h4>
					<canvas id="Chart" style="width: 100%; max-width: 600px"></canvas>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	function duLieu(trang, rui) {
		var xValues = rui;
		var yValues = trang;
		console.log(yValues);
		var barColors = [ "red", "green", "blue", "orange", "brown" ];

		new Chart("Chart", {
			type : "bar",
			data : {
				labels : xValues,
				datasets : [ {
					backgroundColor : "green",
					data : yValues,

				} ]
			},
			options : {
				legend : {
					display : false
				},
				title : {
					display : true,
					text : "Điểm TB các đợt học",
					min_data : 0
				}
			}
		});
	}
	function hienThi(list) {
		var l = list;
		console.log(l);
	}
</script>