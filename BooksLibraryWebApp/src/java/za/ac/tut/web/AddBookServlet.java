/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.BooksLibraryDBFacadeLocal;
import za.ac.tut.model.entity.BooksLibraryDB;

/**
 *
 * @author calvin
 */
public class AddBookServlet extends HttpServlet {
    
    @EJB
    BooksLibraryDBFacadeLocal db;

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String isbn = request.getParameter("isbn");
        Double price = Double.parseDouble(request.getParameter("price"));
        Integer numOfPages = Integer.parseInt(request.getParameter("numOfPages"));
        Boolean illustrations = Boolean.parseBoolean(request.getParameter("illustrations"));
        
        BooksLibraryDB book = createBook(title, description, isbn, price, numOfPages, illustrations);
        
        db.create(book);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_outcome.jsp");
        disp.forward(request, response);
        
    }

    private BooksLibraryDB createBook(String title, String description, String bn, Double price, Integer numOfPages, Boolean illustrations) {
        BooksLibraryDB book = new BooksLibraryDB();
        
        book.setTitle(title);
        book.setDescription(description);
        book.setIsbn(bn);
        book.setPrice(price);
        book.setIllustrations(illustrations);
        book.setNumOfPages(numOfPages);
        book.setCreationDate(new Date());
        
        return book;
    }


}
