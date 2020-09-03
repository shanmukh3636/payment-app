<html>
<head><title>Login-Section</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

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
    border-radius: 9px 9px 9px 9px;
}
</style>
</head>
<body style="background-color:#0099ff" >
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a href="index.jsp"><button class="btn btn-light btn-outline-primary"><b>ABC-PaymentSystem</b></button></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
     
 
      
     
    </ul>
    <form action="login" method="post" class="form-inline my-2 my-lg-0">
     
     
      <input type="text"  class="form-control mr-sm-2" minlength="16" maxlength="16" placeholder="id" name="id"/>
      <input type="password" class="form-control mr-sm-2" placeholder="password" name="password"/>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Login</button>
    </form>
  </div>
</nav>







<div class="login-form">

<form action="RegS" method="post">
<h2 class="text-center">Register</h2> 
<div class="form-group">
<input type="text" class="form-control" placeholder="16-digit id" minlength="16" maxlength="16" name="id"/><br>
</div>
<div class="form-group">
<input type="password" class="form-control" placeholder="password" name="password"/><br>
</div>
<div class="form-group">
<input type="text" class="form-control" placeholder="name" name="name"/><br>
</div>
<div class="form-group">
<input  type="submit" class="form-control btn btn-primary" name="submit" value="Register"/>
</div>
</form>
</div>


</body>
</html>
