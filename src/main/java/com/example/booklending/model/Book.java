import javax.persistence.Entity;
import javax.persistence.Column;
import javax.persistence.Id;

@Entity
public class Book {
    @Id
    @Column(name = "ISBN")
    private String ISBN;

    @Column(name = "Name")
    private String name;

    @Column(name = "Author")
    private String author;

    @Column(name = "Introduction")
    private String introduction;

    // getters and setters
}