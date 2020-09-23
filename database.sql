BEGIN;

CREATE TABLE usuario (
    id_usuario   serial,
    nome         VARCHAR(50),
    tipo_usuario VARCHAR(50),
    senha        VARCHAR(60),
    email        VARCHAR(50),
    is_enabled     boolean,
    PRIMARY KEY (id_usuario)
);

CREATE TABLE ponto_interesse (
    id_ponto    serial,
    nome_ponto  VARCHAR(50),
    descricao   VARCHAR (50),
    PRIMARY KEY  (id_ponto)
);

COMMIT ;