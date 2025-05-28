<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>CRM Application</title>
    
    <style>
    
    /* General Body Styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f4f7f9;
    margin: 0;
    padding: 20px;
    color: #333;
}

/* Titles */
h1, h2 {
    text-align: center;
    color: #2c3e50;
}

/* Form Container */
form {
    max-width: 500px;
    margin: 30px auto;
    padding: 25px;
    background-color: white;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

/* Label and Input Fields */
form input[type="text"],
form input[type="email"],
form input[type="number"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0 20px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

/* Submit Button */
form input[type="submit"] {
    background-color: #3498db;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-right: 10px;
    transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
    background-color: #2980b9;
}

/* Back Link Button */
form a {
    background-color: #95a5a6;
    color: white;
    padding: 11px 18px;
    text-decoration: none;
    border-radius: 5px;
    display: inline-block;
    transition: background-color 0.3s ease;
}

form a:hover {
    background-color: #7f8c8d;
}
    
    
    </style>
</head>
<body>
<h1>CRM - Customer Relationship Management</h1>
    <h2>Customer Form</h2>
    <form action="/save" method="post">
        Id:   <input type="number" name="id" value="${customer.id}" required /><br>
        Name: <input type="text" name="name" value="${customer.name}"required /><br/>
        Email: <input type="email" name="email" value="${customer.email}"required /><br/>
        Phone: <input type="text" name="phone" value="${customer.phone}"required /><br/>
        <input type="submit" value="Save" />
        <a href="/crm">Back</a>
    </form>
</body>
</html>
