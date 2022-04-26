<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">         
<script src="${contextPath}/js/bootstrap.min.js"></script>
<title>Unos Clana</title>
</head>
<body>
<div class="container-fluid bg-dark ">
<nav class="navbar navbar-dark ">
	<form class="container-fluid justify-content-center">
						<button class="btn btn-outline-primary btn-lg my-1 mx-2"
							type="button">
							<a href="/Biblioteka/UnosKnjige.jsp"> Unos Knjige </a>
						</button>
						<button
							class="btn btn-outline-primary btn-lg  my-1 mx-2 me-2"
							type="button">
							<a href="/Biblioteka/clan/kategorije"> Unos Clana </a>
						</button>
						<button
							class="btn btn-outline-primary btn-lg my-1 mx-2 me-2"
							type="button">
							<a href="/Biblioteka/clan/add">Unos Clana 2</a>
						</button>
	</form>
	</nav>
  <div class="row">
	<div class="col text-white mx-5 mt-5">
		<h3>Unos Novog Clana:</h3>
			<sf:form action="/Biblioteka/clan/saveClan" method="post" modelAttribute="clan">
				<div class="row">
    				<div class="form-group col">
    					<label>Ime :</label>
      					<sf:input type="text" class="form-control" path="ime"/>
    				</div>
    				<div class="form-group col">
    					<label>Prezime :</label>
      					<sf:input type="text" class="form-control" path="prezime" />
    				</div>
 	 			</div>
 	 			<div class="row">
    				<div class="form-group col">
    					<label>Adresa :</label>
      					<sf:input type="text" class="form-control" path="adresa"/>
    				</div>
    				<div class="form-group col">
    					<label>Datum Rodjenja :</label>
      					<sf:input type="date" class="form-control" path="datumRodjenja" />
    				</div>
 	 			</div>
 	 			<div class="form-group row">
    				<div class="form-group col-6">
    					<label>Datum Upisa :</label>
      					<sf:input type="date" class="form-control" path="datumUpisa" />
    				</div>
    				<div class="form-group col-6">
    					<label>Kategorija :</label>
    					 <sf:select path="kategorija" class="form-control">
							<sf:options items="${kategorije}" itemValue="idkategorije"
														 itemLabel="nazivkategorije"/>
							</sf:select>
    				</div>
 	 			</div>
 	 			<button type="submit" class=" mt-2 mb-4 btn btn-primary">Potvrdi</button>
			</sf:form>
		</div>
	</div>
		<c:if test="${!empty clanAdd}">
		  <div class="row">
			<div class="col bg-success">
				<h3>Success!</h3>
				<p>${clanAdd.getIme()} successfully add with id ${clanAdd.clanskibroj}</p>
			</div>
		  </div>
		</c:if>
		
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