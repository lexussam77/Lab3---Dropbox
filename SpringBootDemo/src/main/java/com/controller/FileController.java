package com.controller;

import com.entity.Files;
import com.entity.User;
import com.entity.UserModel;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItem;
//import org.apache.commons
import org.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller    // This means that this class is a Controller
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping(path="/files")

public class FileController {
   // @Autowired
    public User user;
    String uploads = System.getProperty("user.dir")+"\\src\\main\\Uploads";
    @PostMapping(path="/myfiles", consumes = MediaType.APPLICATION_JSON_VALUE,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody List<String> getAllfiles(@RequestBody String userdata, HttpSession session) {
        System.out.println("in /myfiles");
        // This returns a JSON with the users
        JSONObject jsonObject = new JSONObject(userdata);
        System.out.println(userdata);
        System.out.println((String)jsonObject.get("username"));
        String username = (String)jsonObject.get("username");
//        session.setAttribute("name",jsonObject.getString("username"));
//        System.out.println(session.getAttribute("name"));
        List<String> results = new ArrayList<String>();
        System.out.println("session in /myfiles"+username);
       // File[] files = new File(uploads/*+"\\"+jsonObject.getString("userdata")*/).listFiles();
//If this pathname does not denote a directory, then listFiles() returns null.
        File[] files = new File(uploads+"\\"+username).listFiles();
        for (File file : files) {
            if (file.isFile()) {
                results.add(file.getName());
            }

        }
        System.out.println(results);
       // JSONObject jsonObject1 = new JSONObject(results);
        //System.out.println(jsonObject1);
        return results;
    }
    @PostMapping(path="/getfolders",consumes = MediaType.APPLICATION_JSON_VALUE,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody List<String> getAllfolders(@RequestBody String uname) {
        // This returns a JSON with the users
        JSONObject jsonObject = new JSONObject(uname);
        System.out.println(jsonObject.getString("uname"));
        List<String> results = new ArrayList<String>();
        File[] files = new File(uploads+"\\"+jsonObject.getString("uname")).listFiles();
//If this pathname does not denote a directory, then listFiles() returns null.

        for (File file : files) {
            if (!file.isFile()) {
                results.add(file.getName());
            }
        }
        return results;
    }

    @PostMapping(path="/upload",consumes = MediaType.MULTIPART_FORM_DATA_VALUE,produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody UserModel Upload(@RequestParam("mypic") MultipartFile file, @RequestParam("username") String username, HttpSession session) {
        // This returns a JSON with the users
    //    JSONObject jsonObject = new JSONObject(username);
        UserModel um = new UserModel();
        System.out.println("username"+username);
       // System.out.println("jsonobject"+jsonObject);
       /* System.out.println(jsonObject.getString("username"));
        session.setAttribute("name",jsonObject.getString("username"));
        System.out.println(session.getAttribute("name"));*/
        try{
            file.transferTo(new File(uploads+File.separator+username+File.separator+file.getOriginalFilename()));
        }
        catch (Exception e){
            System.out.println(e);
        }

        String userResult=username;
      //  return new ResponseEntity(HttpStatus.CREATED);
        um.setUsername(username);
        return um;
    }
}
