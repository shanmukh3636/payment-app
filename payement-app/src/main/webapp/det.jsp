<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<title>Previous payments</title>
<style>
.heading{
color:white;
 text-shadow: 2px 2px 4px #000000;
}
</style>
</head>
<body style="background-color:#0099ff">
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
   response.setHeader("Pragma" ,"no-cache");
   response.setHeader("Expires","0");
%>



<nav class="navbar navbar-expand-lg navbar-light bg-light"  >
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
               <input type="submit" class="btn btn-outline-primary " style="font-weight:bold" value="Previous payments" >
        </form>
          </li>
         &nbsp;
         &nbsp;


          <li>
              <a href="about.jsp"><button class="btn btn-outline-primary"><b>About</b></button></a>
          </li>
    &nbsp;
         &nbsp;
      
       </ul>
       
           <form  action="DetailsServlet" method="post" >
               <input type="submit" class="btn btn-outline-primary " value="User Details" >
        </form>
  
         <a href="index.jsp"><button class="btn btn-outline-danger my-2 my-sm-0" ><b>Logout</b></button></a>
      </div>
</nav>

<br>

<div class="col d-flex justify-content-center">
<div class="card .bg-light" style=" width: 25rem;" >
  <h3 class="card-header  text-center" style="background-color:#e0e0d1">User Details</h3>

  <div class="card-body " >
   <form action="home.jsp">
<table class="table  ">


<tr>
<td>User Id:</td><td><%= request.getAttribute("id") %>.</td>
</tr>
<tr>
<td>User Name:</td><td><%= request.getAttribute("name") %>.</td>
</tr>
<tr>
<td>Remaining Balance:</td><td><%= request.getAttribute("balance") %>.</td>
</tr>

 
</table>

</form>
  </div>
</div>
</div>

</body>
</html>