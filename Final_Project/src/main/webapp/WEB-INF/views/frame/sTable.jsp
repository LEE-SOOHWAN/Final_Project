<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">학생 명단</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-bordered dataTable" id="dataTable"
								width="100%" cellspacing="0" role="grid"
								aria-describedby="dataTable_info" style="width: 100%;">
								<thead>
									<tr role="row">
										<th class="sorting_asc" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1" aria-sort="ascending"
											aria-label="Name: activate to sort column descending"
											style="width: 20px;">이름</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Position: activate to sort column ascending"
											style="width: 40px;">생년월일</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Office: activate to sort column ascending"
											style="width: 100px;">전화번호</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Age: activate to sort column ascending"
											style="width: 100px;">부모님<br>전화번호</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 100px;">주소</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Start date: activate to sort column ascending"
											style="width: 100px;">학교</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 100px;">가족구성</th>
										<th class="sorting" tabindex="0" aria-controls="dataTable"
											rowspan="1" colspan="1"
											aria-label="Salary: activate to sort column ascending"
											style="width: 100px;">이메일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${student }" var="stu">
										<c:choose>
											<c:when test="${stu.status eq '학생' }">
												<tr role="row" class="odd">
												<td class="sorting_1">${stu.name }</td>
												<td>${stu.age }</td>
												<td>${stu.stuNum }</td>
												<td>${stu.parNum }</td>
												<td>${stu.addr }</td>
												<td>${stu.school }</td>
												<td>${stu.fam }</td>
												<td>${stu.email }</td>
												</tr>
											</c:when>
										</c:choose>
									</c:forEach>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 col-md-5">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>