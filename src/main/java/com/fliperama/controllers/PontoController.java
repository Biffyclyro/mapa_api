package com.fliperama.controllers;

import com.fliperama.model.PontoInteresse;
import com.fliperama.projections.Coordenadas;
import com.fliperama.repository.PontoRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping(value = "ponto", produces = APPLICATION_JSON_UTF8_VALUE)
public class PontoController {
    private final PontoRepository pontoRepository;

    public PontoController(PontoRepository pontoRepository) {
        this.pontoRepository = pontoRepository;
    }

    @GetMapping
    List<Coordenadas> teste(){
      return this.pontoRepository.findAllBy();
    }

    @GetMapping("/{id}")
    ResponseEntity<PontoInteresse> buscaPonto(@PathVariable int id){
        final var re = ResponseEntity.of( this.pontoRepository.findById(id));
        //re.getHeaders().set( "Content-Type", "application/json; charset=utf-8");

      return re;
    }
}
