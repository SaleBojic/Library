<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">
<script src="${contextPath}/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<style type="text/css">
h1 {
	color: white;
}
</style>

</head>
<body>

	<div class="container-fluid bg-dark">
		<nav class="navbar navbar-dark bg-dark">
			<!-- Navbar content -->
		</nav>
		<div class="row">
			<div class="col-2 bg-dark p-2 text-white">
				<nav class="navbar navbar-dark bg-dark my-4">
					<form class="container-fluid justify-content-start">

						<button class="btn btn-outline-primary btn-lg btn-block my-1"
							type="button">
							<a href="/Biblioteka/UnosKnjige.jsp"> Unos Knjige </a>
						</button>
						<button
							class="btn btn-outline-primary btn-lg btn-block my-1 my-1 me-2"
							type="button">
							<a href="/Biblioteka/clan/kategorije"> Unos Clana </a>
						</button>
						<button
							class="btn btn-outline-primary btn-lg btn-block my-1 my-1 me-2"
							type="button">
							<a href="/Biblioteka/clan/add">Unos Clana 2</a>
						</button>
					</form>
				</nav>
			</div>
			<div class="col-10 bg-dark p-1 text-white bg-opacity-50">
				<div class="d-flex justify-content-center mx-3 my-3">
					<h1>The Great Library</h1>
				</div>
				<div class="container d-inline-block my-3">
					<div class="d-flex justify-content-center">
						<img class="rounded mx-auto"
							src="https://media.istockphoto.com/vectors/futuristic-knowledge-creative-thinking-concept-with-glowing-low-book-vector-id1247962731?k=20&m=1247962731&s=170667a&w=0&h=IoyMTBJ9bbVZWeaylWJKJBDqEAR0FlREvvKREp4hl6A=">
					</div>
				
	</div>
	</div>
	</div>
	<!-- RANDOM TEMPLATE ENOUGH PRACTICE .... -->
	<footer class="w-100 py-4 flex-shrink-0">
		<div class="container py-4">
			<div class="row gy-4 gx-5">
				<div class="col-lg-4 col-md-6">
					<h5 class="h1 text-white">The Great Library</h5>
					<p class="small text-muted">Its fair to leave copyrights for
						these great guys that saved me alot of time</p>
					<p class="small text-muted mb-0">
						&copy; Copyrights. All rights reserved. <a class="text-primary"
							href="#">Bootstrapious.com</a>
					</p>
				</div>
				<div class="col-lg-2 col-md-6">
					<h5 class="text-white mb-3">Quick links</h5>
					<ul class="list-unstyled text-muted">
						<li><a href="/Biblioteka/UnosKnjige.jsp">Unos Knjige</a></li>
						<li><a href="/Biblioteka/clan/kategorije">Unos Clana</a></li>
						<li><a href="/Biblioteka/clan/add">Unos Clana MA</a></li>
						<li><a href="/Biblioteka">Home</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6">
					<h5 class="text-white mb-3">Quick links</h5>
					<ul class="list-unstyled text-muted">
						<li><a href="/Biblioteka">Home</a></li>
						<li><a href="https://github.com/SaleBojic">GitHub</a></li>
						<li><a
							href="https://www.linkedin.com/in/aleksandar-boji%C4%87-85a820207">LinkedIn</a></li>
						<li><a href="https://www.pmf.uns.ac.rs/en/">PMF</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6">
					<h5 class="text-white mb-3">Newsletter</h5>
					<p class="small text-muted">This is just a template for
						newsletter there is not really one,it just looks good and it
						should stay there</p>
					<form action="#">
						<div class="input-group mb-3">
							<input class="form-control" type="text"
								placeholder="Recipient's username"
								aria-label="Recipient's username"
								aria-describedby="button-addon2">
							<button class="btn btn-primary" id="button-addon2" type="button">
								<i class="fas fa-paper-plane"></i>
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</footer>
	</div>
</body>
</html>