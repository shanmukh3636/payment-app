<%@page import="org.app.modal.LogM"%>
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
<title>Payment-Section</title>
<style>
.login-form {
    width: 340px;
    margin: 50px auto;
  	font-size: 15px;
  	
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
    border-radius: 15px 15px 15px 15px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.form-control{
    min-height: 38px;
    border-radius: 2px;
}
.btn {        
    font-size: 15px;
    font-weight: bold;
}
.heading{
color:white;
  text-shadow: 2px 2px 4px #000000;
}
.btn2{
 font-size: 15px;
    font-weight: bold;
}
</style>
</head>


<body style="background-color:#0099ff">

<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <a href="home.jsp"><button class="btn btn-light btn-outline-primary ">ABC-PaymentSystem</button></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   &nbsp;
   &nbsp;
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
       <a href="home.jsp"><button class="btn btn-outline-primary ">Home</button></a>
      </li>
         &nbsp;
         &nbsp;
         <li>
         <form  action="PpS" method="post" >
               <input type="submit" class="btn btn-outline-primary " value="Previous payments" >
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
               <input type="submit" class="btn btn-outline-primary " value="User Details" >
        </form>
       
         <a href="index.jsp"><button class="btn btn-outline-danger my-2 my-sm-0" >Logout</button></a>
      </div>
</nav>




<div class="container">
<div class="row">
<div class="col-md-6">
<div class="login-form">
<form action="DpS" method="post">
<h3 class="text-center">Local Payment </h3><br>

<div class="form-group">
Target-Id:<input type="text" minlength="16" maxlength="16" class="form-control" name="toid" placeholder="xxxxxxxxxxxxxxxx"><br>
</div>
<div class="form-group">
Amount:<input type="number" class="form-control" name="amount"><br>
</div>
<div class="form-group">
Target-Currency:<select name="tcurrency" class="form-control"   id="tcurrency"><option  value="RS">RS</option></select><br>
</div>
<div class="form-group">
<input type="submit" class="form-control btn btn-primary" style="border-radius: 9px 9px 9px 9px;" name="submit" value="Make Payment">
</div>
</form>
</div>
</div>



<div class="col-md-6">
<div class="login-form">
<form action="CpS" method="post">
<h3 class="text-center">Cross Payment </h3><br>


<div class="form-group">
Target-Id:<input type="text" minlength="16" maxlength="16" class="form-control" name="toid" placeholder="xxxxxxxxxxxxxxxx"><br>
</div>
<div class="form-group">
Amount:<input type="number" class="form-control" name="amount"><br>
</div>
<div class="form-group">
Target-Currency:<select class="form-control" name="tcurrency" id="tcurrency"><option value="USD">USD</option>
<option value="JPY">JPY</option>
<option value="RUB">RUB</option>
<option value="AED">AED</option>
</select><br>
</div>
<div class="form-group">
<input type="submit" class="form-control btn btn-primary" style="border-radius: 9px 9px 9px 9px;"name="submit" value="Make Payment">
</div>
</form>
</div>
</div>
</div>
</div>




</body>
</html>