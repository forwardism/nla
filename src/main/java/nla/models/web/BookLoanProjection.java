package nla.models.web;

import java.util.Date;

import org.springframework.data.rest.core.config.Projection;

import nla.models.Person;
import nla.models.Book;
import nla.models.BookLoan;


/**
 * Projection for HATEOAS style gets.  This is to inline the Book and Person
 * details for convenience and efficiency (single GET from client).
 */
@Projection(name = "summary", types = BookLoan.class)
public interface BookLoanProjection {

  /**
   * Return person details.
   * @see BookLoan#getPerson()
   */
  Person getPerson();

  /**
   * Return book details.
   * @see BookLoan#getPerson()
   */
  Book getBook();

  /**
   * Return loan details.
   * @see BookLoan#getIssueDate()
   */

  Date getIssueDate();

  /**
   * Return loan details.
   * @see BookLoan#getDueDate()
   */
  Date getDueDate();

  /**
   * Return loan details.
   * @see BookLoan#getReturnedDate()
   */
  Date getReturnedDate();

}
