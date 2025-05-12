/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class NumberOfBooksServlet extends HttpServlet {

    @EJB
    BooksLibraryDBFacadeLocal db;
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer numOfBooks = db.count();
        
        request.setAttribute("numOfBooks", numOfBooks);
        
        RequestDispatcher disp = request.getRequestDispatcher("num_of_books_outcome.jsp");
        disp.forward(request, response);
    }

}
