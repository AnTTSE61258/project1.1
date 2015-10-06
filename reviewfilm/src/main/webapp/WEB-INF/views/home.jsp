<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="${description }">
<meta name="author" content="Cworld Solution">
<title>${title }</title>

<!-- Bootstrap Core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/full-slider.css" rel="stylesheet">
<link href="resources/css/comment.css" rel="stylesheet">
</head>
<body>
	<script>
		var currentBase = "";
	</script>
	<%@include file="navigation.jsp"%>
	<!-- Full Page Image Background Carousel Header -->
	<header id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<!-- <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li> -->
			<c:forEach var="item" items="${films }" varStatus="count">
				<c:set var="itemclass" value="" />
				<c:if test="${count.count==1 }">
					<c:set var="itemclass" value="active" />
				</c:if>
				<li data-target="#myCarousel" data-slide-to="${item.id }"
					class="${itemclass }"></li>
			</c:forEach>
		</ol>
		<!-- Wrapper for Slides -->
		<div class="carousel-inner">
			<c:forEach var="item" items="${films }" varStatus="count">
				<c:set var="itemclass" value="item" />
				<c:if test="${count.count==1 }">
					<c:set var="itemclass" value="item active" />
				</c:if>
				<div class="${itemclass }" data-slide-to="${item.id }">
					<img class="coverImage" alt="${item.name }" src="${item.coverurl }" />
					<div class="carousel-caption">
						<h2>${item.name }</h2>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- Controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="icon-prev"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span class="icon-next"></span>
		</a>
	</header>
	<div class="displayComment">
		<div class="container">
			<div class="row">
				<div id="commentTimeline" class="timeline-centered"></div>
			</div>
		</div>
	</div>
	<div class="postComment">
		<i><b><span>* Comment hay nhận ngay nhuận bút</span></b></i> <a
			href="<c:url value="lienhe"/>">tìm hiểu thêm</a> <input id="cmtUser" class="form-control"
			type="text" placeholder="Tên của bạn" />
		<textarea class="form-control" rows="5" id="cmtContent"
			placeholder="Nhận xét về phim này"></textarea>
		<input id="cmtEmail" class="form-control" type="text"
			placeholder="Email - dùng cho xác nhận khi nhận nhuận bút - Không bắt buộc." />
		<button type="button" class="btn btn-primary btncmt"
			onclick="postComment()">Gửi nhận xét</button>
	</div>
	<div class="commentStatus">
		<h6 id="commentStatus"></h6>
	</div>
	<%@include file="footer.jsp"%>


	<!-- jQuery -->
	<script src="resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		var currentFilmId;
		$(document).ready(function() {
			$('.carousel').on('slide.bs.carousel', function(e) {

				var slideFrom = $(this).find('.active').index();
				var slideTo = $(e.relatedTarget).index();
				var a = $(e.relatedTarget).data("slide-to");
				currentFilmId = a;
				getComments(a);
				$("#commentStatus").html("");

			});
			getComments("${films[0].id}");
			currentFilmId = "${films[0].id}";
		});

		function getComments(id) {
			if (id == '') {
				return
			}
			$.ajax({
				type : "POST",
				url : currentBase + "getComments",
				data : {
					filmId : id

				},
				success : function(data) {
					addComment(data);
				},
				error : function(data) {
					console.log("Lỗi kết nối 001");
				}
			});
		}

		function addComment(data) {
			var commentTimeline = $("#commentTimeline");
			commentTimeline.empty();
			for (i = 0; i < data.length; i++) {
				String
				newComment = commentTimeline
						.append('<article class="timeline-entry">'
								+ '<div class="timeline-entry-inner">'
								+ '<div class="timeline-icon bg-info">'
								+ '<i class="entypo-feather"></i>' + '</div>'
								+ '<div class="timeline-label">' + '<h2>'
								+ '<a href="#">' + data[i].user + '</a>'
								+ '</h2>' + '<p>' + data[i].content + '</p>'
								+ '</div>' + '</div>' + '</article>')
			}
		}

		function postComment() {
			var cmtUser = $("#cmtUser").val();
			var cmtEmail = $("#cmtEmail").val();
			var cmtContent = $("#cmtContent").val();
			if (cmtUser === '') {
				return;
			}
			if (cmtContent === '') {
				return;
			}
			$.ajax({
						type : "POST",
						url : currentBase + "addComments",
						data : {
							user : cmtUser,
							email : cmtEmail,
							content : cmtContent,
							filmid : currentFilmId
						},
						success : function(data) {
							$("#cmtUser").val("");
							$("#cmtEmail").val("");
							$("#cmtContent").val("");
							$("#commentStatus")
									.html(
											"<span class=\"glyphicon glyphicon-ok\" aria-hidden=\"true\"></span> Rất cảm ơn đóng góp của bạn </br> Comment của bạn sẽ được duyệt trong vòng 1h");
							getComments(currentFilmId);
						},
						error : function(data) {
							$("#commentStatus").html("Đã có lỗi xảy ra :(");
						}
					});
		}
		$('.carousel').carousel({
			interval : false
		})
	</script>

</body>
</html>
