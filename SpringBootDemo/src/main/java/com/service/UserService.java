package com.service;

import com.entity.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import java.io.File;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public Iterable<User> getAllUsers() {
        return userRepository.findAll();
    }

    public void addUser(User user) {
        userRepository.save(user);
    }

    public List<User> login(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password);
    }

    public List<User> signup(String firstName, String lastName, String username, String password) {
        return userRepository.findByUsernameAndPassword(firstName, lastName);
    }

    public List<User> findsomething(String username) {
        return userRepository.findByUsername(username);
    }


    public static void copyFileUsingFileChannels(File source, File dest)
            throws IOException {
        FileChannel inputChannel = null;
        FileChannel outputChannel = null;
        try {
            inputChannel = new FileInputStream(source).getChannel();
            outputChannel = new FileOutputStream(dest).getChannel();
            outputChannel.transferFrom(inputChannel, 0, inputChannel.size());
        }
        catch (Exception e){
            System.out.println("Failed to move the file");
            System.out.println(e);
        }finally {
            inputChannel.close();
            outputChannel.close();
        }

    }
}