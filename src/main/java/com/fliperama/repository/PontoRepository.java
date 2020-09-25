package com.fliperama.repository;

import com.fliperama.model.PontoInteresse;
import com.fliperama.projections.Coordenadas;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PontoRepository extends JpaRepository<PontoInteresse, Integer> {
    List<Coordenadas> findAllCoordenadas();
}
