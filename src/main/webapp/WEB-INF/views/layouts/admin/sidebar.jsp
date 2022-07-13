<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">
		
		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#tables" aria-expanded="false" aria-controls="tables"> <i
				class="icon-grid-2 menu-icon"></i> <span class="menu-title">Thông tin</span>
				<i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="tables">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="/QuanLySinhVien/trang-chu/sinh-vien">Thông tin sinh viên</a></li>
				</ul>
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="/QuanLySinhVien/trang-chu/danh-sach-mon-hoc">Thông tin học phần</a></li>
				</ul>
			</div> 
		</li>
	</ul>
	<ul class="nav">
		<form>
			<center>
			<button class="btn btn-outline-secondary btn-rounded btn-icon" type="button" onclick="history.back()">
			<i class="fa fa-chevron-left" aria-hidden="true"></i>
			</button>
			
			</center>
		</form>
	</ul>
</nav>