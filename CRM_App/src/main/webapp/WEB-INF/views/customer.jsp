<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>CRM Application</title>
    
    <style>
    /* General Reset and Body Styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f7f9;
    margin: 0;
    padding: 20px;
    color: #333;
}

/* Title Styles */
h1 {
    text-align: center;
    color: #2c3e50;
    margin-bottom: 10px;
}

h2 {
    color: #34495e;
    text-align: center;
    margin-top: 0;
}

/* Link to Add New */
a[href="/new"] {
    display: block;
    width: max-content;
    margin: 10px auto 20px;
    background-color: #3498db;
    color: white;
    padding: 10px 15px;
    text-decoration: none;
    border-radius: 5px;
    text-align: center;
}

a[href="/new"]:hover {
    background-color: #2980b9;
}

/* Table Styling */
table {
    border-collapse: collapse;
    width: 90%;
    margin: 0 auto;
    background-color: white;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
    padding: 12px 15px;
    text-align: left;
}

th {
    background-color: #2c3e50;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

td a {
    margin-right: 10px;
    color: #2980b9;
    text-decoration: none;
}

td a:hover {
    text-decoration: underline;
}

/* Confirm Delete Dialog Styling */
td a[href*="delete"] {
    color: #e74c3c;
}

td a[href*="delete"]:hover {
    color: #c0392b;
}
    
    
    </style>
    
</head>
<body>
<h1>CRM - Customer Relationship Management</h1>
    <h2>Customer List</h2>
    <a href="/new">Add New Customer</a>
    <table border="1">
        <tr>
            <th>ID</th><th>Name</th><th>Email</th><th>Phone</th><th>Actions</th>
        </tr>
        <c:forEach var="customer" items="${listCustomers}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.email}</td>
                <td>${customer.phone}</td>
                <td>
                    <a href="/edit/${customer.id}">Edit</a>
                    <a href="/delete/${customer.id}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
