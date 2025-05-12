<%-- 
    Document   : num_of_books_outcome
    Created on : 02 Apr 2025, 4:05:28 PM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Number Of Books Page</title>
    </head>
    <body>
        <h1>Number Of Books</h1>
        <%
            Integer numberOfBooks = (Integer)request.getAttribute("numOfBooks");
        %>
        <p>
            There are currently <b><%=numberOfBooks%></b> books in the database.
        </p>
            <ul>
                <li><a href="start.html">GO TO MENU</a></li>
                <li><a href="index.html">GO HOME</a></li>
            </ul>
    </body>
</html>
