<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Tổng hợp review, comment của những bộ phim đang chiếu">
<meta name="author" content="CWorld Solution">
<title>Review film - Kiểm duyệt</title>
<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/thumbnail-gallery.css" rel="stylesheet">
<link href="resources/css/comment.css" rel="stylesheet">
<!-- Custom CSS -->
<script src="resources/js/jquery.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
	<%@include file="navigation.jsp"%>
	<!-- Full Page Image Background Carousel Header -->
	<div class="allfilm-moderator">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Danh sách phim</h1>
			</div>
			<c:forEach var="item" items="${films }" varStatus="count">
				<div class="col-lg-3 col-md-4 col-xs-6 thumb" data-toggle="context"
					data-target="#context-menu">
					<c:set var="thumbnail_style" value=""></c:set>
					<c:if test="${item.active==false }">
						<c:set var="thumbnail_style" value="-webkit-filter: grayscale(1);"></c:set>
					</c:if>
					<a class="thumbnail" href="#"> <img class="img-responsive"
						style="${thumbnail_style}" src="${item.coverurl}">
					</a>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="allComment">
		<div class="col-lg-12">
			<h1 class="page-header">Danh sách comment</h1>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>Comment ID</th>
					<th>User name</th>
					<th>Email</th>
					<th>Comment content</th>
					<th></th>
					<th>Active/Deactive</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${comments }" varStatus="count">
					<tr>
						<td>${item.id }</td>
						<td>${item.user }</td>
						<td>${item.email }</td>
						<td>${item.content }</td>
						<td><c:if test="${item.active==true }">
								<span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
							</c:if> <c:if test="${item.active==false }">
								<span class="glyphicon glyphicon-hand-left" aria-hidden="true"></span>
							</c:if></td>
						<td>
							<button onclick="changeCommentStatus(${item.id})">Change</button>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>
	<script type="text/javascript">
		function changeCommentStatus(commentid){
			$.ajax({
				type : "POST",
				url : "changeCommentStatus",
				data : {
					commentid: commentid
				},
				success : function(data) {
					location.reload(false);
				},
				error : function(data) {
					alert("Đã có lỗi xãy ra, vui lòng log lỗi và báo cho admin")
				}
			});
		}
	</script>
</body>
</html>
