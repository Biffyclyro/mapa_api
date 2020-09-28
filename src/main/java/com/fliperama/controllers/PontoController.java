package com.fliperama.controllers;

import com.fliperama.model.PontoInteresse;
import com.fliperama.repository.PontoRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("ponto")
public class PontoController {
    private final PontoRepository pontoRepository;

    public PontoController(PontoRepository pontoRepository) {
        this.pontoRepository = pontoRepository;
    }

    @GetMapping
    List<PontoInteresse> teste(){
        return this.pontoRepository.findAll();
    }

    @GetMapping("/{id}")
    ResponseEntity<PontoInteresse> buscaPonto(@PathVariable int id){

        return ResponseEntity.of( this.pontoRepository.findById(id));
    }
}
