<%@page import="com.tesla.vo.CarVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>carModel</title>

<style>
* {

}

#image {
   position: fixed;
   width: 800px;
}

#info {
   width: 35%;
   float: right;
}
.slider {
   width: 800px;
   text-align: center;
   overflow: hidden;
}

.slides {
   display: flex;
   overflow-x: auto;
   /* overflow: hidden; */
   scroll-snap-type: x mandatory;
   scroll-behavior: initial;
   -webkit-overflow-scrolling: touch;
}

.slides::-webkit-scrollbar {
   display: none;
}

.slides::-webkit-scrollbar-thumb {
   background: black;
   border-radius: 10px;
}

.slides::-webkit-scrollbar-track {
   background: transparent;
}

.slides>div {
   scroll-snap-align: start;
   flex-shrink: 0;
   width: 800px;
   height: 600px;
   margin-right: 30px;
   overflow: hidden;
   background: #eee;
   transform-origin: center center;
   transform: scale(1);
   transition: transform 0.5s;
   position: relative;
   display: flex;
   justify-content: center;
   align-items: center;
   font-size: 100px;
}


.slides img {
   object-fit: cover;
   position: absolute;
   top: 0;
   left: 0;
   width: 100%;
   height: 100%;
}

.slider>a {
   display: inline-flex;
   width: 1.5rem;
   height: 1.5rem;
   background: #eee;
   text-decoration: none;
   align-items: center;
   justify-content: center;
   border-radius: 50%;
   margin: 0 0 0.5rem 0;
   position: relative;
}

.slider>a:active {
   top: 1px;
}

.slider>a:focus {
   background: #000;
}

#value>p {
   margin: 5px 5px 5px 5px;
    padding: 0 0 0 0;
    border : 0;
   float: left;
}

.system>p {
   margin: 5px 5px 5px 5px;
    padding: 0 0 0 0;
    border : 0;
   float: left;
}

#driving {
   display: flex;
   flex-direction: column;
}

#info {
   display:flex;
   flex-direction: column;
}

.colors>img {
   width:50px;
   height:50px;
}

.colors {
   display: inline;

}

#counter1,#counter2,#counter3 { font-size:2.5rem;}




button {
  height: 2.5em;
  cursor: pointer;
}

#popup {
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, .7);
  z-index: 1;
}

#popup.hide {
  display: none;
}

#popup.has-filter {
  backdrop-filter: blur(4px);
  -webkit-backdrop-filter: blur(4px);
}

#popup .content {
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  box-shadow: 1px 1px 3px rgba(0, 0, 0, .3);
}

#feature-image>img {
	width: 400px;
}

.content{
	width :1220px;
}
</style>

</head>
<body>

   <%
   CarVO vo = (CarVO) request.getAttribute("car");
   %>


   <div id='main'>

      <div id='image'>

         <div class="slider">
            <div class="slides">   
               <div id="slide-1">
                  <img id='F' src="<%=vo.getModel_pic_color1()%>" alt="">
               </div>
               <div id="slide-2">
                  <img id='R' src="<%=vo.getModel_pic2_color1()%>" alt="">
               </div>
            </div>
               
               <a href="#slide-1" style="position:absolute;top:52%;left:0">F</a> 
               <a href="#slide-2" style="position:absolute;top:52%;right:0">R</a>
            
         </div>

      </div>



      <div id='info'>
      
         <h1><%=vo.getModel_name() %></h1>
         <div id='basic performance'>
            <div id='value'>
               <p id="counter1"></p>
               <p id="counter2"></p>
               <p id="counter3"></p>

            </div>
         </div>
         <div>
            <hr>
         </div>
         <div id='driving'>
            <div class='system' onclick='performanceChange1()'>
               <p><%=vo.getDriving_system1() %></p>
               <p>$<%=vo.getPrice1()%></p>
   
            </div>
            <div class='system' onclick='performanceChange2()'>
               <p><%=vo.getDriving_system2() %></p>
               <p>$<%=vo.getPrice2()%></p>
               
            </div>
         </div>
         
         <div>
            <div>
   
               <button onclick="showPopup(true)">FEATURE DETAILS</button>

            </div>
         </div>
         
         <div>
            <h3>Paint</h3>
            <div>
               <a class='colors' href="#" onclick="javascript:color1();"><img src="car/images/button_w.png"></a>
               <a class='colors' href="#" onclick="javascript:color2();"><img src="car/images/button_b.png"></a>
               <a class='colors' href="#" onclick="javascript:color3();"><img src="car/images/button_r.png"></a>
            </div>
         </div>
      
      </div>

   </div>

   <div id="popup" class="hide">
     <div class="content">
	     <div id='feature-image'>
	     	<img alt="" src="<%=vo.getFeature_pic1()%>">
	     	<img alt="" src="<%=vo.getFeature_pic2()%>">
	     	<img alt="" src="<%=vo.getFeature_pic3()%>">
	     </div> 
	     <div id='feature-text'>
	       <p>
	         <%=vo.getFeature1() %>
	       </p>
	       <p>
	         <%=vo.getFeature2() %>
	       </p>
	         <p>
	         <%=vo.getFeature3() %>
	       </p>
	     </div>
      	 <button onclick="closePopup()">닫기</button>
     </div>
   </div>


<script>

function showPopup(hasFilter) {
   const popup = document.querySelector('#popup');
  
  if (hasFilter) {
     popup.classList.add('has-filter');
  } else {
     popup.classList.remove('has-filter');
  }
  
  popup.classList.remove('hide');
}

function closePopup() {
   const popup = document.querySelector('#popup');
  popup.classList.add('hide');
}



function color1() {
   var F = document.getElementById('F');
    F.setAttribute('src', '<%=vo.getModel_pic_color1()%>');
    var R = document.getElementById('R');
    R.setAttribute('src', '<%=vo.getModel_pic2_color1()%>');
}

function color2() {
   var F = document.getElementById('F');
    F.setAttribute('src', '<%=vo.getModel_pic_color2()%>');
    var R = document.getElementById('R');
    R.setAttribute('src', '<%=vo.getModel_pic2_color2()%>');
}

function color3() {
   var F = document.getElementById('F');
    F.setAttribute('src', '<%=vo.getModel_pic_color3()%>');
    var R = document.getElementById('R');
    R.setAttribute('src', '<%=vo.getModel_pic2_color3()%>');
}






   
   function numberCounter(target_frame, target_number) {


      this.count = 0; this.diff = 0;
       this.target_count = 10*(target_number);
       this.target_frame = document.getElementById(target_frame);
       this.timer = null;
       this.counter();
   };

   numberCounter.prototype.counter = function() {
       var self = this;
       this.diff = this.target_count - this.count;
        
       if(this.diff > 0) {
           self.count += Math.ceil(this.diff / 10);
       }
        
       this.target_frame.innerHTML = (this.count.toString())/10;
        
       if(this.count < this.target_count) {
           this.timer = setTimeout(function() { self.counter(); }, 10);
       } else {
           clearTimeout(this.timer);
       }
   };
   
   function performanceChange1() {
      
   new numberCounter("counter1", <%=vo.getMax_range1()%>);
   new numberCounter("counter2", <%=vo.getTop_speed1()%>);
   new numberCounter("counter3", <%=vo.getZerotosixty1()%>);
   
}

function performanceChange2() {

   new numberCounter("counter1", <%=vo.getMax_range2()%>);
   new numberCounter("counter2", <%=vo.getTop_speed2()%>);
   new numberCounter("counter3", <%=vo.getZerotosixty2()%>);
   
}








</script>

</body>

</html>