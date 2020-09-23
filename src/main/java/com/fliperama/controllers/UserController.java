package com.fliperama.controllers;

import com.fliperama.model.Usuario;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
public class UserController {

    @PostMapping("/login")
    ResponseEntity<?> login(@RequestBody Usuario u) {
        return ResponseEntity.ok(u);
    }

    @PostMapping("/cadastro")
    String cadastraUsuario(@RequestBody Usuario u) {
       return u.getNome();
    }

}
