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

<title>Local-Payment-Report</title>
<style>
.heading{
color:white;
 text-shadow: 2px 2px 4px #000000;
}
</style>
</head>
<body style="background-color:red" class="text-center">
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  
%>

<br>
<br>
<br>

<div class="col d-flex justify-content-center">
<div class="card " style="width: 20rem; background-color:#ff6666">
  <div class="card-body">
    <h4 class="card-title">Payment Failed!</h4>
    <form action="home.jsp">
<table class="table  ">
<tr>
 <td>Your Balance is less than 500!! (or) The Id you had entered is Wrong!!</td> 
 </tr>
 

 </table>
 <div class="text-center">
 <input type="submit" value="Done" class="btn btn-light btn-outline-danger"/>
 </div>
</form>
  </div>
</div>
</div>

</body>
</html>