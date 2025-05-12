<%-- 
    Document   : book_by_category
    Created on : 12 May 2025, 10:23:53 PM
    Author     : calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Category Page</title>
    </head>
    <body>
        <h1>Book Category</h1>
        <p>
            Please enter a category you'd like to view below:
        </p>
        <form action="BookByCategoryServlet.do" method="POST">
            <table>
                <tr>
                    <td>Category</td>
                    <td><input type="text" name="category" required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SUBMIT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
