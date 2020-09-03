<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>About</title>
</head>
<body style="background-color:#0099ff">
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a href="home.jsp"><button class="btn btn-light btn-outline-primary"><b>ABC-PaymentSystem</b></button></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   &nbsp;
   &nbsp;
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
       <a href="home.jsp"><button class="btn btn-outline-primary "><b>Home</b></button></a>
      </li>
         &nbsp;
         &nbsp;
         <li>
         <form  action="PpS" method="post" >
               <input type="submit" class="btn btn-outline-primary " value="Previous payments" style="font-weight:bold" >
        </form>
          </li>
         &nbsp;
         &nbsp;


          <li>
              <a href="about.jsp"><button class="btn btn-outline-primary">About</button></a>
          </li>
         &nbsp;
         &nbsp;
      
       </ul>
       
         <form  action="DetailsServlet" method="post" >
               <input type="submit" class="btn btn-outline-primary " style="font-weight:bold" value="User Details" >
        </form>
   
         <a href="index.jsp"><button class="btn btn-outline-danger my-2 my-sm-0" ><b>Logout</b></button></a>
      </div>
</nav>

<br>
<div class="col d-flex justify-content-center">
<div class="card " style="width:84rem;">
  <h4 class="card-header" style="background-color:#e0e0d1">About Us</h4>
  <div class="card-body bg-light" >
    <h5 class="card-title">What is this app?</h5>
    <p class="card-text">This web-app is a Payment application which supports both Local payments and Cross payments. It is user interactive and very easy to use.</p><br>
     <h5 class="card-title">What is Local payment?</h5>
    <p class="card-text">Local payment means transaction between two same country users. As this application is from India the base currency is Rupee.</p><br>
     <h5 class="card-title">What is Cross payment?</h5>
    <p class="card-text">Cross payment means transaction between two different country users. In this application the base currency is Rupee and target currency is depends on user's choice.</p><br>
     <h5 class="card-title">Note:</h5>
    <p class="card-text">As this application is in demo mode , we didn't included any payment gateways. Later we will add all the original payment gateways. As of now this application is just a demo piece. Enjoy the UI :) </p>

  </div>
</div>
</div>


</body>
</html>