/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.BooksLibraryDB;

/**
 *
 * @author calvin
 */
@Local
public interface BooksLibraryDBFacadeLocal {

    void create(BooksLibraryDB booksLibraryDB);

    void edit(BooksLibraryDB booksLibraryDB);

    void remove(BooksLibraryDB booksLibraryDB);

    BooksLibraryDB find(Object id);

    List<BooksLibraryDB> findAll();

    List<BooksLibraryDB> findRange(int[] range);

    int count();

    List<BooksLibraryDB> getBooksByCategory(String category);

    BooksLibraryDB getMostExpensiveBook();
    
}
