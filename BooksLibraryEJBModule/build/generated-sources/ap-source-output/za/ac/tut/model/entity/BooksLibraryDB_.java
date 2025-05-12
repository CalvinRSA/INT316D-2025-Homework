package za.ac.tut.model.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-12T22:40:18")
@StaticMetamodel(BooksLibraryDB.class)
public class BooksLibraryDB_ { 

    public static volatile SingularAttribute<BooksLibraryDB, Boolean> illustrations;
    public static volatile SingularAttribute<BooksLibraryDB, Integer> numOfPages;
    public static volatile SingularAttribute<BooksLibraryDB, Double> price;
    public static volatile SingularAttribute<BooksLibraryDB, String> isbn;
    public static volatile SingularAttribute<BooksLibraryDB, String> description;
    public static volatile SingularAttribute<BooksLibraryDB, Long> id;
    public static volatile SingularAttribute<BooksLibraryDB, String> title;
    public static volatile SingularAttribute<BooksLibraryDB, Date> creationDate;

}