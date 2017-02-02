package nla.models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.ManyToOne;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


/**
 * Table holding who's borrowed what (person, book), and when the loaned items
 * are due, returned, and loaned.
 */
@Entity
public class BookLoan {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

  @OneToOne
	@JoinColumn(name = "book_id")
	private Book book;

  @ManyToOne
	@JoinColumn(name = "person_id")
	private Person person;

	private Date issueDate;
	private Date dueDate;
	private Date returnedDate;

	public Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public Date getReturnedDate() {
		return returnedDate;
	}

	public void setReturnedDate(Date returnedDate) {
		this.returnedDate = returnedDate;
	}

  public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

}
