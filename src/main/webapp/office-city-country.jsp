<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo2.entities.Office" %>
<html>
<head>
    <title>Office List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Find City or Country</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="office-list">Back to Classic Model Office </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Find Office City Country <span>(current)</span></a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <form action="office-city-country" method="get" class="form-inline mb-4">
        <div class="form-group">
            <label for="search">Search by City or Country:</label>
            <input type="text" class="form-control mx-2" id="search" name="search">
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Office Code</th>
            <th>City</th>
            <th>Country</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Office> offices = (List<Office>) request.getAttribute("offices");
            for (Office office : offices) {
        %>
        <tr>
            <td><%= office.getOfficeCode() %></td>
            <td><%= office.getCity() %></td>
            <td><%= office.getCountry() %></td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
