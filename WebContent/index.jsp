<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BankApplication</title>
    <style>
      	.fixed-footer{
		width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
    text-align: center;
        bottom: 0;
    } 
ul {
  
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: rgba(255, 255, 255, 0.822);
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: rgb(122, 120, 120);
}
.footer {
    position: static;
    left: 0;
    bottom: 0;
    color: white;
    text-align: center;
  background-color: #998c8c;
  padding: 10px;
  text-align: center;
}
body {font-family: Arial, Helvetica, sans-serif;}
   * {
        box-sizing:border-box;
        margin: 0;

    }

    /* Three columns side by side */
.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}


@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}


.container {
  padding: 0 16px;
}


.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}


.button:hover {
  background-color: #555;
}
.fixed-footer{
		width: 100%;
        position: fixed;        
        background: rgb(161, 160, 160);
        padding: 10px 0;
        color: #fff;
    text-align: center;
        bottom: 0;
    } 
    * {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}


.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}


.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}


.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}


.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}


.text {
  color: #333;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}


.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}


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

/* @media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
} */
    </style>

</head>

<body style="background-color: #fff4f4;  background-image: url('http://dy365.in/admin/storyimage/20-7-2020-23-1-31-269.jpeg');background-repeat:repeat; ">
    <ul>
        <li><a class="active" href="#home" target="">BANK</a></li>
        <li style="float: right;"><a href="login.html">UserLogin</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="CreateAccount.html">Create Account</a></li>
    </ul>
<br>
<br>


 
 


<div class="fixed-footer">
	<div class="container">Copyright &copy; 2020 BANK</div>        
</div>

<!--

<h1 style="text-align: center;">Cuisine to try</h1>
<div class="slideshow-container">

  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="https://c.ndtvimg.com/2019-03/ef4kmc48_butter-chicken_625x300_26_March_19.jpg" style="width:100%">
    <div class="text">
        <h2>Butter Chicken And Naan</h2>
        <p class="title"> A small meal</p>
        <p>Smoked Cooked Chicken with Naan a small but complete meal</p>
        
    </div>
  </div>
  
  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="https://static.toiimg.com/photo/77481105.cms" style="width:100%">
    <div class="text">

        <h2>Thali Veg</h2>
        <p class="title">A complete meal for a day</p>
        <p>Get yourselvs one</p>
    </div>
  </div>
  
  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="https://5.imimg.com/data5/NI/NU/GLADMIN-46747077/veg-cheese-paneer-frankie-500x500.png" style="width:100%">
    <div class="text">

        <h2>Frankies</h2>
          <p class="title">On a way food</p>
          <p>If you are in hurry try it once</p>
    </div>
  </div>
  
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
  
  </div>
  <br>
  
  <div style="text-align:center">
    <span class="dot" onclick="currentSlide(1)"></span> 
    <span class="dot" onclick="currentSlide(2)"></span> 
    <span class="dot" onclick="currentSlide(3)"></span> 
  </div>




  
<script>
  var slideIndex = 1;
  showSlides(slideIndex);
  
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }
  
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }
  
  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    if (n > slides.length) {slideIndex = 1}    
    if (n < 1) {slideIndex = slides.length}
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
  }
  </script>
  -->
 
 
</body>
</html>