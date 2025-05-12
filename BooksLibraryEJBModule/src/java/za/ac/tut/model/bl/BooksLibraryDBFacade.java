/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.BooksLibraryDB;

/**
 *
 * @author calvin
 */
@Stateless
public class BooksLibraryDBFacade extends AbstractFacade<BooksLibraryDB> implements BooksLibraryDBFacadeLocal {

    @PersistenceContext(unitName = "BooksLibraryEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    

    public BooksLibraryDBFacade() {
        super(BooksLibraryDB.class);
    }

    @Override
    public List<BooksLibraryDB> getBooksByCategory(String category) {
        String queryStr = "SELECT s FROM BooksLibraryDB s WHERE s.description = ?1";
        Query q = em.createQuery(queryStr);
        q.setParameter(1, category);
        List<BooksLibraryDB> books = q.getResultList();
        return books;
    }

    @Override
    public BooksLibraryDB getMostExpensiveBook() {
        String queryStr = "SELECT MAX(s.price) FROM BooksLibraryDB s";
        Query q = em.createQuery(queryStr);
        Double highestPrice = (Double)q.getSingleResult();
        String queryStr2 = "SELECT s FROM BooksLibraryDB s WHERE s.price = ?1";
        Query q2 = em.createQuery(queryStr2);
        q2.setParameter(1, highestPrice);
        BooksLibraryDB book = (BooksLibraryDB)q2.getSingleResult();
        return book;
    }
    
    
}
