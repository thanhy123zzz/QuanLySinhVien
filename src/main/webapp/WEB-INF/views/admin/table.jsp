<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/taglib.jsp"%>
<head>
<title>Thông tin sinh viên</title>
</head>
<body >
	<div class="col-lg-12 stretch-card">
		<c:if test="${status=='true'}">
			<div class="alert alert-success alert-dismissible"
				style="width: 100%; height: 55px" >
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Xoá thành công!</strong> Sinh viên với mã sinh viên: ${maSinhVien} đã được xoá!
			</div>
		</c:if>
		<c:if test="${status=='false'}">
			<div class="alert alert-danger alert-dismissible" style="width: 100%;height: 55px ">
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>Xoá thất bại!</strong> Sinh viên không tồn lại!
				action.
			</div>
		</c:if>
	</div>
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Thông tin sinh viên</h4>
				<p class="card-description">
					<a href="/QuanLySinhVien/trang-chu/sinh-vien/them-sinh-vien">
						<button class="btn btn-success" type="button">Thêm sinh
							viên</button>
					</a>
				</p>
				<div class="table-responsive pt-3">
					<table class="table table-hover" id="tableSinhVien">
						<thead>
							<tr>
								<th>Mã số sinh viên</th>
								<th>Họ</th>
								<th>Tên</th>
								<th>Ngày sinh</th>
								<th>Giới tính</th>
								<th>Mã lớp</th>
								<th>Thao tác</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" items="${tableSinhVien}">
								<tr>
									<td>${i.maSinhVien}</td>
									<td>${i.ho}</td>
									<td>${i.ten}</td>
									<td>${i.ngaySinh}</td>
									<td>${i.gioiTinh}</td>
									<td>${i.maLop}</td>
									<td>
										<div class="btn-group" role="group" aria-label="Basic example">
											<a href="/QuanLySinhVien/trang-chu/sinh-vien/${i.maSinhVien}">
												<button type="button" class="btn btn-inverse-success btn-fw">
													<i class="fa fa-eye" aria-hidden="true"></i> Xem
												</button>
											</a>
											<a href="/QuanLySinhVien/trang-chu/sinh-vien/${i.maSinhVien}/sua-thong-tin">
											<button type="button" class="btn btn-inverse-info btn-fw">
												<i class="fa fa-pencil-square-o" aria-hidden="true"></i> Sửa
											</button>
											</a>
											<a onclick="return alertFn()"
												href="/QuanLySinhVien/xoa-${i.maSinhVien}">
												<button type="button" class="btn btn-inverse-danger btn-fw">
													<i class="fa fa-times" aria-hidden="true"></i> Xoá
												</button>
											</a>
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
	<script>
		
		function dateFormat(inputDate, format) {
			//parse the input date
			const date = new Date(inputDate);

			//extract the parts of the date
			const day = date.getDate();
			const month = date.getMonth() + 1;
			const year = date.getFullYear();

			//replace the month
			format = format.replace("MM", month.toString().padStart(2, "0"));

			//replace the year
			if (format.indexOf("yyyy") > -1) {
				format = format.replace("yyyy", year.toString());
			} else if (format.indexOf("yy") > -1) {
				format = format.replace("yy", year.toString().substr(2, 2));
			}

			//replace the day
			format = format.replace("dd", day.toString().padStart(2, "0"));

			return format;
		}
		var table = document.getElementById('tableSinhVien');
		for (var i = 1; i < table.rows.length; i++) {
			table.rows[i].onclick = function() {
				//rIndex = this.rowIndex;
				document.getElementById("exampleInputName1").value = this.cells[0].innerHTML;
				document.getElementById("exampleInputEmail3").value = this.cells[1].innerHTML;
				document.getElementById("exampleInputPassword4").value = this.cells[2].innerHTML;
				document.getElementById("datepicker").value = dateFormat(
						this.cells[3].innerHTML, 'MM/dd/yyyy');
				document.getElementById("exampleSelectGender").value = this.cells[4].innerHTML;
				document.getElementById("exampleInputCity1").value = this.cells[5].innerHTML;
			};
		}
	</script>
	<script>
		$('#datepicker').datepicker({
			uiLibrary : 'bootstrap4'
		});
	</script>
</body>
