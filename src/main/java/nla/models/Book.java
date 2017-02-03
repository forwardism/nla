package nla.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;

import java.util.Set;
import java.util.HashSet;

/**
 * @todo: check implicits, review imports.
 */
@Entity
public class Book {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;

  private String title;
  private String isbn;
  private String author;

  @OneToMany(mappedBy = "book")
  private Set<BookLoan> bookLoans = new HashSet<BookLoan>();

  public long getId() {
    return id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }

  public String getIsbn() {
    return isbn;
  }

  public void setIsbn(String isbn) {
    this.isbn = isbn;
  }

}
