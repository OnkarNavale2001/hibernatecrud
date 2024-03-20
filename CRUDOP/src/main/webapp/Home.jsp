<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allcdn.jsp" %>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
       
      </ul>
     
    </div>
  </div>
</nav>


<div class="container">
  <div class="row d-flex vh-100 justify-content-center align-items-center">
    <div class="col-md-6 "> <!-- Use Bootstrap grid to center the content -->
      <div class="card card-center">
        <div class="card-body">
          <h5 class="card-title">Contact Information</h5>
          <form action="adddata.jsp">
            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" name="name" placeholder="Enter your name">
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control"  name="email" placeholder="Enter your email">
            </div>
            <div class="mb-3">
              <label for="phone" class="form-label">Phone</label>
              <input type="text" class="form-control" name="phone" placeholder="Enter your phone number">
            </div class="d-grid ">            
            <button type="submit" class="btn btn-primary w-100">Submit</button>
            
            <div>
            
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>