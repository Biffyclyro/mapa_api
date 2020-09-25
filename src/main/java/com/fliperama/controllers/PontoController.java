package com.fliperama.controllers;

import com.fliperama.model.PontoInteresse;
import com.fliperama.repository.PontoRepository;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("ponto")
public class PontoController {
    private final PontoRepository pontoRepository;

    public PontoController(PontoRepository pontoRepository) {
        this.pontoRepository = pontoRepository;
    }

    @GetMapping
    String teste(){
        final var coords = this.pontoRepository.findAllCoordenadas();

        return "{\"idPonto\": 1, \"img\": \"images/poli.jpg\", \"nome\":\"teste\", \"descricao\": \"teste\"}" ;
    }

    @GetMapping("/{data")
    PontoInteresse buscaPonto(@PathVariable double[] data){
        return new PontoInteresse();
    }
}
