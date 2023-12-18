<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sirapob
  Date: 13/11/2023 AD
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<html>
<head>
    <title>Employee List</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">Classic Model Offices</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="office-city-country">Find Office City Country</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row"><c:forEach items="${offices}" var="office">
        <div class="col-2 border border-secondary p-2 m-2         ${office.officeCode == selectedOffice.officeCode ? 'bg-warning' : ''}">
            <div>
                <a href="office-list?officeCode=${office.officeCode}"> ${office.city}</a>, ${office.country}
            </div>
            <div> ${office.phone}</div>
            <a href="office-list?deleteOfficeCode=${office.officeCode}" class="btn btn-danger rounded-pill mt-2">Delete</a>
        </div>
    </c:forEach>
    </div>
    <br>
    <div class="row bg-light"><b>Employees ::</b></div>
    <div class="row"><c:forEach items="${selectedOffice.employeeList}" var="employee">
        <div class="col-2 pl-2 m-2 border border-secondary rounded-pill">
            <div> ${employee.firstName}
                    ${employee.lastName} - ${employee.jobTitle}
            </div>
        </div>
    </c:forEach>
    </div>
</div>
<div class="container mt-4 shadow-lg p-3 bg-white rounded">
    <form action="OfficeInsertServlet" method="post" class="mb-4">
        <h4 class="mb-4 bg-secondary shadow-lg text-center text-light p-3 rounded-pill">Insert New Office ::</h4>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="officeCode">Office Code:</label>
                    <input type="text" class="form-control" id="officeCode" name="officeCode" required>
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" class="form-control" id="city" name="city" required>
                </div>
                <div class="form-group">
                    <label for="country">Country:</label>
                    <input type="text" class="form-control" id="country" name="country" required>
                </div>
                <div class="form-group">
                    <label for="phone">Phone:</label>
                    <input type="text" class="form-control" id="phone" name="phone" required>
                </div>
            </div>
            <div class="col-md-6 ">
                <div class="form-group">
                    <label for="addressLine1">AddressLine1:</label>
                    <input type="text" class="form-control" id="addressLine1" name="addressLine1" required>
                </div>
                <div class="form-group">
                    <label for="postalCode">PostalCode:</label>
                    <input type="text" class="form-control" id="postalCode" name="postalCode" required>
                </div>
                <div class="form-group">
                    <label for="territory">Territory:</label>
                    <input type="text" class="form-control" id="territory" name="territory" required>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-success mt-4">Insert Office</button>
    </form>
</div>


<div class="container mt-4 mt-4 shadow-lg p-3 bg-white rounded">
    <form action="OfficeUpdateServlet" method="post" class="mb-4">
        <h4 class="mb-4 bg-secondary shadow-lg text-center text-light p-3 rounded-pill">Update New Office ::</h4>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="officeCode1">Office Code:</label>
                    <input type="text" class="form-control" id="officeCode1" name="officeCode" required>
                </div>
                <div class="form-group">
                    <label for="city1">City:</label>
                    <input type="text" class="form-control" id="city1" name="city" required>
                </div>
                <div class="form-group">
                    <label for="country1">Country:</label>
                    <input type="text" class="form-control" id="country1" name="country" required>
                </div>
                <div class="form-group">
                    <label for="phone1">Phone:</label>
                    <input type="text" class="form-control" id="phone1" name="phone" required>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="addressLine11">AddressLine1:</label>
                    <input type="text" class="form-control" id="addressLine11" name="addressLine1" required>
                </div>
                <div class="form-group">
                    <label for="postalCode1">PostalCode:</label>
                    <input type="text" class="form-control" id="postalCode1" name="postalCode" required>
                </div>
                <div class="form-group">
                    <label for="territory1">Territory:</label>
                    <input type="text" class="form-control" id="territory1" name="territory" required>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-success mt-4">Update Office</button>
    </form>
</div>

</body>
</html>
