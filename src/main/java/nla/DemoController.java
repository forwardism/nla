
package nla;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.beans.factory.annotation.Autowired;

import nla.models.Book;
import nla.models.BookDao;
import nla.models.Person;
import nla.models.PersonDao;


/**
 * Demonstration controller - just set model for books and people freemarker
 * templates
 */
@Controller
public class DemoController {

  @Autowired
  BookDao bookDao;

  @Autowired
  PersonDao personDao;

  @GetMapping("/")
  public String home(Model model) {
    return "home";  // ftl
  }

  @GetMapping("/books")
  public String books(Model model) {

    // retrieve all books
    Iterable<Book> books = bookDao.findAll();
    model.addAttribute("books", books);

    return "books";  // ftl
  }


  @GetMapping("/people")
  public String people(Model model) {

    // retrieve all people
    Iterable<Person> people = personDao.findAll();
    model.addAttribute("people", people);

    return "people";
  }



}
