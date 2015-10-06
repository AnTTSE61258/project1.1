<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href='<c:url value="/"/>'>Review Phim</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value="/"/>">Phim đang chiếu</a></li>
					<li><a href="<c:url value="/phimsapchieu"/>">Phim sắp chiếu</a></li>
					<li><a href="<c:url value="/lienhe"/>">Liên hệ - nhuận bút</a></li>
					<c:url var="springlogout" value="j_spring_security_logout" scope="request" />
					<%
					if(request.isUserInRole("ROLE_MOD")){
						out.print("<li><a href=\""+request.getAttribute("springlogout")+"\">Logout</a></li>");
					}
					%>
					
				</ul>	
			</div>
		</div>
	</nav>
</body>
