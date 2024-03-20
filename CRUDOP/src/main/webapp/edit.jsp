<%@page import="com.demo.Dao.DAO"%>
<%@page import="com.demo.ENTITY.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include  file="allcdn.jsp"%>
	<jsp:useBean class="com.demo.ENTITY.Student" id="student" />
	<jsp:setProperty property="*" name="student" />
<%
Student s=DAO.editedata(student);

%>

<div class="container">
  <div class="row d-flex vh-100 justify-content-center align-items-center">
    <div class="col-md-6 "> <!-- Use Bootstrap grid to center the content -->
      <div class="card card-center">
        <div class="card-body">
          <h5 class="card-title">Contact Information</h5>
          <form action="editdata.jsp" method="post">
           <input type="hidden" value="<%=s.getId() %>" name="id">
          
            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control" value="<%=s.getName() %>" name="name" placeholder="Enter your name">
            </div>
            <div class="mb-3">
              <label for="email" class="form-label">Email address</label>
              <input type="email" class="form-control"  value="<%=s.getEmail() %>" name="email" placeholder="Enter your email">
            </div>
            <div class="mb-3">
              <label for="phone" class="form-label">Phone</label>
              <input type="text" class="form-control" value="<%=s.getPhone() %>" name="phone" placeholder="Enter your phone number">
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