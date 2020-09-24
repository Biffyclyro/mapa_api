--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: coordenadas; Type: TABLE; Schema: public; Owner: biffyclyro
--

CREATE TABLE public.coordenadas (
    ponto_id integer NOT NULL,
    lat double precision,
    lng double precision
);


ALTER TABLE public.coordenadas OWNER TO biffyclyro;

--
-- Name: cursos; Type: TABLE; Schema: public; Owner: biffyclyro
--

CREATE TABLE public.cursos (
    curso_id integer NOT NULL,
    nome character varying(50)
);


ALTER TABLE public.cursos OWNER TO biffyclyro;

--
-- Name: cursos_curso_id_seq; Type: SEQUENCE; Schema: public; Owner: biffyclyro
--

ALTER TABLE public.cursos ALTER COLUMN curso_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cursos_curso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ponto_curso; Type: TABLE; Schema: public; Owner: biffyclyro
--

CREATE TABLE public.ponto_curso (
    id integer NOT NULL,
    ponto_id integer NOT NULL,
    curso_id integer NOT NULL
);


ALTER TABLE public.ponto_curso OWNER TO biffyclyro;

--
-- Name: ponto_curso_id_seq; Type: SEQUENCE; Schema: public; Owner: biffyclyro
--

ALTER TABLE public.ponto_curso ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ponto_curso_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: ponto_interesse; Type: TABLE; Schema: public; Owner: biffyclyro
--

CREATE TABLE public.ponto_interesse (
    ponto_id integer NOT NULL,
    nome character varying(50),
    img character varying(50),
    descricao character varying(200)
);


ALTER TABLE public.ponto_interesse OWNER TO biffyclyro;

--
-- Name: ponto_interesse_ponto_id_seq; Type: SEQUENCE; Schema: public; Owner: biffyclyro
--

ALTER TABLE public.ponto_interesse ALTER COLUMN ponto_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ponto_interesse_ponto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: coordenadas; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.coordenadas (ponto_id, lat, lng) FROM stdin;
\.


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.cursos (curso_id, nome) FROM stdin;
\.


--
-- Data for Name: ponto_curso; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.ponto_curso (id, ponto_id, curso_id) FROM stdin;
\.


--
-- Data for Name: ponto_interesse; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.ponto_interesse (ponto_id, nome, img, descricao) FROM stdin;
\.


--
-- Name: cursos_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.cursos_curso_id_seq', 1, false);


--
-- Name: ponto_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.ponto_curso_id_seq', 1, false);


--
-- Name: ponto_interesse_ponto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.ponto_interesse_ponto_id_seq', 1, false);


--
-- Name: coordenadas coordenadas_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.coordenadas
    ADD CONSTRAINT coordenadas_pkey PRIMARY KEY (ponto_id);


--
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (curso_id);


--
-- Name: ponto_curso ponto_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_pkey PRIMARY KEY (id);


--
-- Name: ponto_interesse ponto_interesse_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_interesse
    ADD CONSTRAINT ponto_interesse_pkey PRIMARY KEY (ponto_id);


--
-- Name: coordenadas coordenadas_ponto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.coordenadas
    ADD CONSTRAINT coordenadas_ponto_id_fkey FOREIGN KEY (ponto_id) REFERENCES public.ponto_interesse(ponto_id);


--
-- Name: ponto_curso ponto_curso_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(curso_id);


--
-- Name: ponto_curso ponto_curso_ponto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_ponto_id_fkey FOREIGN KEY (ponto_id) REFERENCES public.ponto_interesse(ponto_id);


--
-- PostgreSQL database dump complete
--

