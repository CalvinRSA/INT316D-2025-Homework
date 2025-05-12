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
public class EditBookServlet extends HttpServlet {

    @EJB
    BooksLibraryDBFacadeLocal db;
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        BooksLibraryDB book = db.find(id);
        
        String title = book.getTitle();
        String description = book.getDescription();
        String isbn = book.getIsbn();
        Double price = book.getPrice();
        Integer numOfPages = book.getNumOfPages();
        Boolean illustrations = book.getIllustrations();
        Date creationDate = book.getCreationDate();
        
        request.setAttribute("title", title);
        request.setAttribute("description", description);
        request.setAttribute("isbn", isbn);
        request.setAttribute("price", price);
        request.setAttribute("numOfPages", numOfPages);
        request.setAttribute("illustrations", illustrations);
        request.setAttribute("creationDate", creationDate);
        
        RequestDispatcher disp = request.getRequestDispatcher("edit_book.jsp");
        disp.forward(request, response);
        
    }

   
}
