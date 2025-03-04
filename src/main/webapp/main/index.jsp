<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>School Index</title>
</head>
<body>

<%@include file="../components/allcss.jsp" %>
<%@include file="../components/navbar_index.jsp" %>

<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="../img/img1.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="../img/img2.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img4.webp" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img5.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img6.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img7.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img8.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../img/img9.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
</body>
</html>