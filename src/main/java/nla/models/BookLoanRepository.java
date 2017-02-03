package nla.models;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

public interface BookLoanRepository extends PagingAndSortingRepository<BookLoan, Long> {

  List<Book> findByDueDate(@Param("date") String date);
  List<Book> findByIssueDate(@Param("date") String date);

}
