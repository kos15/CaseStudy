<%-- 
    Document   : update
    Created on : 14 Jun, 2020, 1:53:45 PM
    Author     : Ankita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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

<h1 style="color:yellow;" align="center">Statement </h1>

<br>


<br>

<div class="container" align="center" id="StatementTable">
<h2 style="color:green">${message}</h2>
<script>
function Download(){
	var pdf = new jsPDF('p', 'pt', 'letter');
	source = $('#StatementTable')[0];
	specialElementHandlers = {
		'#bypassme': function(element, renderer){
			return true
		}
	}
	margins = {
	    top: 50,
	    left: 60,
	    width: 545
	  };
	pdf.fromHTML(
	  	source // HTML string or DOM elem ref.
	  	, margins.left // x coord
	  	, margins.top // y coord
	  	, {
	  		'width': margins.width // max width of content on PDF
	  		, 'elementHandlers': specialElementHandlers
	  	},
	  	function (dispose) {
	  	  // dispose: object with X, Y of the last line add to the PDF
	  	  //          this allow the insertion of new lines after html
	        pdf.save('Statement.pdf');
	      }
	  )		
	}
</script>
<input type="button" style="color:green" value="Download Account Statement" onclick="Download()"></input>

        <table class="table table-striped" border="2" cellpadding="10" bordercolor="blue" >
            <caption><h3>Account Statement</h3></caption>
            <thead>
                <tr class="tr tr-success" 
                	style="border-style:solid; background-color:#f4c430; font-weight:bold;">
                    <td>Transaction ID</td>
                    <td>Description</td>
                    <td>Amount</td>
                    <td>Time</td>
                    <td>Operation</td>
                </tr>   
            </thead>
            <tbody>
                <c:forEach var="acc" items="${statement}">
                    <tr>
                        <td><c:out value="${acc.getTID()}" /></td>
                        <td><c:out value="${acc.getDesc()}" /></td>
                        <td><c:out value="${acc.getAmount()}" /></td>
                        <td><c:out value="${acc.getDate()}" /></td>
                        <td><a href="accountStatement">Refresh</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script src="webjars/jquery/2.2.4/jquery.min.js"></script>
    <script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    

  
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