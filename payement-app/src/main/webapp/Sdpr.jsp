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
<body style="background-color:#4dff4d" class="text-center">
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 
%>

<br>
<br>
<br>

<div class="col d-flex justify-content-center">
<div class="card " style="width: 20rem; background-color:#b3ffb3">
  <div class="card-body">
    <h4 class="card-title">Payment Successful!</h4>
    <form action="home.jsp">
<table class="table  ">
<tr>
 <td>To id :</td> <td> <%= request.getAttribute("toid") %>.</td>
 </tr>
 
 <tr>
 <td>Amount :</td> <td><%= request.getAttribute("am") %>.</td>
 </tr>
 <tr>
<td>Target Currency :</td> <td><%= request.getAttribute("tc") %>.</td>
 </tr>
 </table>
 <div class="text-center">
 <input type="submit" value="Done" class="btn btn-light btn-outline-success"/>
 </div>
</form>
  </div>
</div>
</div>

</body>
</html>