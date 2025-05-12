<%-- 
    Document   : find_outcome
    Created on : 02 Apr 2025, 2:59:51 PM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Outcome Page</title>
    </head>
    <body>
        <h1>Find Outcome</h1>
        <%
            String title = (String)request.getAttribute("title");
            String description = (String)request.getAttribute("description");
            String isbn = (String)request.getAttribute("isbn");
            Double price = (Double)request.getAttribute("price");
            Integer numOfPages = (Integer)request.getAttribute("numOfPages");
            Boolean illustrations = (Boolean)request.getAttribute("illustrations");
            Date creationDate = (Date)request.getAttribute("creationDate");
        %>
        <p>
            Below are the details of the book you searched for:
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
                <li><a href="find_book.html">SEARCH AGAIN</a></li>
                <li><a href="start.html">GO TO MENU</a></li>
                <li><a href="index.html">GO HOME</a></li>
            </ul>
    </body>
</html>
