package nla.models;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

public interface BookRepository extends PagingAndSortingRepository<Book, Long> {

  List<Book> findByTitle(@Param("title") String title);
  List<Book> findByAuthor(@Param("author") String author);

}
