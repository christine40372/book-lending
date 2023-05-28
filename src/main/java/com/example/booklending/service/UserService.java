package com.example.booklending.service;

import com.example.booklending.model.User;

public interface UserService {
    User getUserById(String id);

    User createUser(User user);

    User updateUser(User user);

    void deleteUser(String id);
}
