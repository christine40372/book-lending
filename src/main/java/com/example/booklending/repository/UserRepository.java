package com.example.booklending.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.booklending.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    
}
