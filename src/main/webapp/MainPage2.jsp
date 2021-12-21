<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <style>
      * {
  margin: 0;
  padding: 0;
  box-sizing:border-box;
}

/* Slideshow container */
.slideshow-container {
  max-width: 90%;
  max-height: 750px;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  height: 700px;
  background-size: cover;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
    </style>
  </head>
  <body>
  	<jsp:include page="menu2.jsp"></jsp:include>
    <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 4</div>
        <img src= "images/modely.jpg" style="width:100%">
        <div class="text">Model Y</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 4</div>
        <img src="images/model3.webp" style="width:100%">
        <div class="text">Model 3</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 4</div>
        <img src="images/modelx.webp" style="width:100%">
        <div class="text">Model X</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">4 / 4</div>
        <img src="images/models.webp" style="width:100%">
        <div class="text">Model S</div>
      </div>



      <!-- Next and previous buttons -->
     
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span><br>
      
      <%@ include file="footer.jsp" %>
    </div>
    <script src="jsFile.js"></script>
  </body>
  
</html>