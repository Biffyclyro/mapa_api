package com.fliperama.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class PontoInteresse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nome;
    private String img;
    private String descricao;
    private double lat;
    private double lng;

}
