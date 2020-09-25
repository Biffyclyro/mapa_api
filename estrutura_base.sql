BEGIN;

  CREATE TABLE ponto_interesse(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(50),
    img  VARCHAR(50),
    lat double precision,
    lng double precision,
    descricao TEXT
  );

  CREATE TABLE cursos(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(50)
  );

  CREATE TABLE ponto_curso(
    id int GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ponto_id int NOT NULL REFERENCES ponto_interesse (id),
    curso_id int NOT NULL REFERENCES cursos (id)
  );

COMMIT;
