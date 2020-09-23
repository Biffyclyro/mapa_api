package com.fliperama.controllers;

import com.fliperama.model.PontoInteresse;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("ponto")
public class PontoController {
    @GetMapping
    String teste(){

      return "{\"idPonto\": 1, \"img\": \"images/poli.jpg\", \"nome\":\"teste\", \"descricao\": \"teste\"}" ;
    }

    @GetMapping("/{data")
    PontoInteresse buscaPonto(@PathVariable double[] data){
        return new PontoInteresse();
    }
}
