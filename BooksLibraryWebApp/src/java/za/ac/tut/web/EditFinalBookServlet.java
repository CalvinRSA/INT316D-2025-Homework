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
public class EditFinalBookServlet extends HttpServlet {

    @EJB
    BooksLibraryDBFacadeLocal db;
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String description = request.getParameter("description");
        Double price = Double.parseDouble(request.getParameter("price"));
        Integer numOfPages = Integer.parseInt(request.getParameter("numOfPages"));
        Long id = Long.parseLong(request.getParameter("id"));
        
        BooksLibraryDB book = createBook(id, description, price, numOfPages);
        
        db.edit(book);
        
        RequestDispatcher disp = request.getRequestDispatcher("edit_outcome.jsp");
        disp.forward(request, response);
        
    }

    private BooksLibraryDB createBook(Long id, String description, Double price, Integer numOfPages) {
        BooksLibraryDB book = new BooksLibraryDB();
        
        book.setId(id);
        book.setPrice(price);
        book.setNumOfPages(numOfPages);
        book.setDescription(description);
        
        return book;
    }
        

}
