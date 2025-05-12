<%-- 
    Document   : books_by_category_outcome
    Created on : 12 May 2025, 10:44:13 PM
    Author     : calvin
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.BooksLibraryDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Books Page</title>
    </head>
    <body>
        <h1>View All Books</h1>
        <%
            List<BooksLibraryDB> books = (List<BooksLibraryDB>)request.getAttribute("books");
        %>
        <p>
            Below is the table of all books in the Database:
        </p>
        
        <table border="1">
            <th><b>No. </b></th>
            <th><b>TITLE.</b></th>
            <th><b>DISCRIPTION.</b></th>
            <th><b>ISBN No. </b></th>
            <th><b>NUMBER OF PAGES.</b></th>
            <th><b>PRICE</b></th>
            <th><b>HAS ILLUSTRATIONS?</b></th>
            <th><b>CREATION DATE</b></th>
            <%
                for(int x =0; x<books.size();x++)
                {
                    BooksLibraryDB book = new BooksLibraryDB();
                    book = books.get(x);
                    
                    String title = book.getTitle();
                    String description = book.getDescription();
                    String isbn = book.getIsbn();
                    Double price = book.getPrice();
                    Integer numOfPages = book.getNumOfPages();
                    Boolean illustrations = book.getIllustrations();
                    Date creationDate = book.getCreationDate();
                    
                    %>
                        <tr>
                            <td><%=x+1%></td>
                            <td><%=title%></td>
                            <td><%=description%></td>
                            <td><%=isbn%></td>
                            <td><%=numOfPages%></td>
                            <td><%=price%></td>
                            <td><%=illustrations%></td>
                            <td><%=creationDate%></td>
                        </tr>
                    <%
                }
            %>
        </table>
        
            <ul>
                <li><a href="start.html">GO TO MENU</a></li>
                <li><a href="index.html">GO HOME</a></li>
            </ul>
        
    </body>
</html>
