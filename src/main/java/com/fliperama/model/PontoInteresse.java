package com.fliperama.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "ponto_interesse")
public class PontoInteresse {
    @Id
    @Column(name = "id_ponto")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPonto;
    @Column(name = "nome_ponto", unique = true)
    private String nomePonto;
    private String descricao;

}
