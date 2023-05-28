package com.example.booklending.controller;

import com.example.booklending.model.User;
import com.example.booklending.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    // Add GET, POST, PUT, DELETE handlers for user operations
}
