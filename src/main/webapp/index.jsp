<%-- 
    Document   : update
    Created on : 14 Jun, 2020, 1:53:45 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
<body>

<div class="navbar">
<h2 style="color:yellow;">FedChoice<span style="color:white;"> Bank</span><h2>
  <a href="/index">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Customer Management 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/add">Add Customer</a>
      <a href="/delete">Delete Customer</a>
      <a href="/update">Update Customer</a>
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Account Management 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/addAccount">Create Account</a>
      <a href="/deleteAcc">Delete Account</a>
      <a href="/statusAccount">Account Status</a>
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Status Details 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/statusCustomer">Customer Status</a>
      <a href="#">Link 2</a>
    </div>
  </div> 
  
  <div class="dropdown">
    <button class="dropbtn">Account Operations 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="/depositRedirect">Deposit Money</a>
      <a href="/withdrawRedirect">Withdraw Money</a>
      <a href="/transferRedirect">Transfer Money</a>
      <a href="/statement">Account Statement</a>
    </div>
  </div> 
  
  <a href="/logout">Logout</a>
  
</div>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
}

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>

<h1 style="color:yellow;" align="center">Retail Banking</h1>


<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 30px;
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
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
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

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>

<div class="slideshow-container" align="center">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="/resources/static/v1.jpg" style="width:800px;height:350px;">
  <div class="text">Future of Retail Banking</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="/resources/static/v2.jpg" style="width:800px;height:350px;">
  <div class="text">Smart Re-pricing Strategies</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="/resources/static/v3.jpg" style="width:800px;height:350px;">
  <div class="text">Deliver Convenience</div>
</div>

    <div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="/resources/static/v4.png" style="width:800px;height:350px;">
  <div class="text">Process Efficiency</div>
</div>
    
</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
  <span class="dot"></span>
</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>



 <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 33%;
  padding: 0 8px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: left;
  background-color: black;
}
</style>
</head>
<body>
<br>
<div class="row">
  <div class="column">
    <div class="card">
      <h2 style="color:yellow;">About Us</h2>
      <p style="color:white;">FedChoice Bank was founded on 14th June 2016 with the objective of providing with the detail services based on Retail Banking operations. The Retail Internet Banking of FedChoice Bank offers a plethora of products and services, to cater its customers by providing certain animus services with an easy volving offers and ways to do the required job without hurdling the process.</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h2 style="color:yellow;">Services</h2>
      <p style="color:white;">Retail and Consumer Banking Personal Internet Banking Corporate Internet Banking Debit and Credit Cards</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h2 style="color:yellow;">Contact Us</h2>
      <p style="color:white;">Email:customer.service@fedchoice.com
      Contact No:022-42406778,022-54567890
      Address: Corporate Office, Madame Cama Road, Nariman Point, Mumbai, Maharashtra 400021</p>
    </div>
  </div>
  
</div>


</body>
</html>