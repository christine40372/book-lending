package com.example.booklending.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.booklending.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
    
}
