package com.controller;

import com.entity.User;
import com.service.UserService;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.w3c.dom.html.HTMLParagraphElement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller    // This means that this class is a Controller
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping(path="/users") // This means URL's start with /demo (after Application path)
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping(path="/add",consumes = MediaType.APPLICATION_JSON_VALUE) // Map ONLY POST Requests
    public  ResponseEntity<?> addNewUser (@RequestBody User user) {
        // @ResponseBody means the returned String is the response, not a view name
        // @RequestParam means it is a parameter from the GET or POST request
        JSONObject jsonObject = new JSONObject(user);
        userService.addUser(user);

        System.out.println("Saved" + "user"+ user +"json"+ jsonObject);
        return new ResponseEntity(null,HttpStatus.CREATED);
    }

    @GetMapping(path="/all",produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody Iterable<User> getAllUsers() {
        // This returns a JSON with the users
        return userService.getAllUsers();
    }

    @GetMapping(path="/check",produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody Iterable<User> Check() {
        // This returns a JSON with the users
        return userService.findsomething("Bhavan");
    }

    @PostMapping(path="/dologin",consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<?> login(@RequestBody String user, HttpSession session)
    {
        JSONObject jsonObject = new JSONObject(user);
        System.out.println(user);
      //  System.out.println(session);
        session.setAttribute("name",jsonObject.getString("username"));
        System.out.println(session.getAttribute("name"));
        List<User> userResult=userService.login(jsonObject.getString("username"),jsonObject.getString("password"));
        System.out.println(userResult.size());
        if(userResult.size()>0){
            System.out.println("HttpStatus.ok");
            return new ResponseEntity(HttpStatus.OK);

        }
        else
        {
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        }
        //return new ResponseEntity(userService.login(jsonObject.getString("email"),jsonObject.getString("password")),HttpStatus.OK);
    }



    @PostMapping(value = "/logout")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public ResponseEntity<?> logout(HttpSession session) {
        System.out.println(session.getAttribute("name"));
        session.invalidate();
        return  new ResponseEntity(HttpStatus.OK);
    }
}