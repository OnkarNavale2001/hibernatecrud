<%@page import="java.util.List"%>
<%@page import="com.demo.Dao.DAO"%>
<%@page import="com.demo.ENTITY.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%
    List<Student> students = DAO.getAllStudents();
    %>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Delete</th>
                <th>Edit</th>
            </tr>
        </thead>
        <tbody>
            <% for (Student student : students) { %>
                <tr>
                    <td><%= student.getId() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= student.getEmail() %></td>
                    <td><%= student.getPhone() %></td>
                   
                    <td><a class="btn btn-danger" href="delete.jsp?id=<%=student.getId()%>">delete</a></td>
                    <td><a class="btn btn-primary " href="edit.jsp?id=<%=student.getId()%>">Edit</a></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
