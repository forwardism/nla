package nla.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.OneToMany;

import java.util.Set;
import java.util.HashSet;

/**
 * A person just has a name, phone number, email address.
 */
@Entity
public class Person {

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;

  private String firstName;
  private String lastName;
  private String phoneNumber;
  private String emailAddress;

  @OneToMany(mappedBy = "person")
  private Set<BookLoan> bookLoans = new HashSet<BookLoan>();

  public long getId() {
    return id;
  }

  public String getFirstName() {
    return firstName;
  }

  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  public String getLastName() {
    return lastName;
  }

  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  public String getPhoneNumber() {
    return phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getEmailAddress() {
    return emailAddress;
  }

  public void setEmailAddress(String emailAddress) {
    this.emailAddress = emailAddress;
  }

}
