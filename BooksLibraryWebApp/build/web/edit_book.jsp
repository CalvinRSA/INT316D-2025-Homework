<%-- 
    Document   : edit_book
    Created on : 02 Apr 2025, 1:48:07 PM
    Author     : calvin
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Book Page</title>
    </head>
    <body>
        <h1>Edit Book</h1>
        <%
            String title = (String)request.getAttribute("title");
            String description = (String)request.getAttribute("description");
            String isbn = (String)request.getAttribute("isbn");
            Double price = (Double)request.getAttribute("price");
            Integer numOfPages = (Integer)request.getAttribute("numOfPages");
            Boolean illustrations = (Boolean)request.getAttribute("illustrations");
            Date creationDate = (Date)request.getAttribute("creationDate");
            Long id = Long.parseLong(request.getParameter("id"));
        %>
        <p>
            Edit The Book Below:
        </p>
        <form action="EditFinalBookServlet.do" method="POST">
                <table>
                    <tr>
                        <td>ID : </td>
                        <td><input type="text" value="<%=id%>" name="id" disabled=""/></td>
                    </tr>
                    <tr>
                        <td>Title : </td>
                        <td><input type="text" value="<%=title%>" name="title" disabled=""/></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><input type="text" value="<%=description%>" name="description" required=""/></td>
                    </tr>
                    <tr>
                        <td>Price : </td>
                        <td><input type="text" value="<%=price%>" name="price" required=""/></td>
                    </tr>
                    <tr>
                        <td>ISBN : </td>
                        <td><input type="text" value="<%=isbn%>" name="isbn" disabled=""/></td>
                    </tr>
                    <tr>
                        <td>Number Of Pages : </td>
                        <td><input type="text" value="<%=numOfPages%>" name="numOfPages" required=""/></td>
                    </tr>
                    <tr>
                        <td>Illustrations : </td>
                        <td><input type="text" value="<%=illustrations%>" name="illustrations" disabled=""/></td>
                    </tr>
                    <tr>
                        <td>Creation date : </td>
                        <td><input type="text" value="<%=creationDate%>" name="creationDate" disabled=""/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="EDIT BOOK"/></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
