<%-- 
    Document   : most_expensive
    Created on : 12 May 2025, 10:47:14 PM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.BooksLibraryDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Most Expensive Book Page</title>
    </head>
    <body>
        <h1>Most Expensive Book</h1>
        <%
            BooksLibraryDB book = (BooksLibraryDB)request.getAttribute("book");
            String title = book.getTitle();
            String description = book.getDescription();
            String isbn = book.getIsbn();
            Double price = book.getPrice();
            Integer numOfPages = book.getNumOfPages();
            Boolean illustrations = book.getIllustrations();
            Date creationDate = book.getCreationDate();
        %>
        <p>
            Below are the details of the most expensive book.
        </p>
        <table>
            <tr>
                <td>Title : </td>
                <td><input type="text" value="<%=title%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Description</td>
                <td><input type="text" value="<%=description%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Price : </td>
                <td><input type="text" value="<%=price%>" readonly=""/></td>
            </tr>
            <tr>
                <td>ISBN : </td>
                <td><input type="text" value="<%=isbn%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Number Of Pages : </td>
                <td><input type="text" value="<%=numOfPages%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Illustrations : </td>
                <td><input type="text" value="<%=illustrations%>" readonly=""/></td>
            </tr>
            <tr>
                <td>Creation date : </td>
                <td><input type="text" value="<%=creationDate%>" readonly=""/></td>
            </tr>
        </table>
            <ul>
                <li><a href="start.html">GO TO MENU</a></li>
                <li><a href="index.html">GO HOME</a></li>
            </ul>
    </body>
</html>
