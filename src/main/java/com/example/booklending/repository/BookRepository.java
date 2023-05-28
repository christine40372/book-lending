package com.example.booklending.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.booklending.model.Book;

public interface BookRepository extends JpaRepository<Book, Long> {
    // 可以添加其他自定義的查詢方法
}
