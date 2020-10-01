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
-- Name: cursos; Type: TABLE; Schema: public; Owner: biffyclyro
--

CREATE TABLE public.cursos (
    id integer NOT NULL,
    nome character varying(50)
);


ALTER TABLE public.cursos OWNER TO biffyclyro;

--
-- Name: cursos_id_seq; Type: SEQUENCE; Schema: public; Owner: biffyclyro
--

ALTER TABLE public.cursos ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cursos_id_seq
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
    id integer NOT NULL,
    nome character varying(50),
    img character varying(50),
    lat double precision,
    lng double precision,
    descricao text
);


ALTER TABLE public.ponto_interesse OWNER TO biffyclyro;

--
-- Name: ponto_interesse_id_seq; Type: SEQUENCE; Schema: public; Owner: biffyclyro
--

ALTER TABLE public.ponto_interesse ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ponto_interesse_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: cursos; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.cursos (id, nome) FROM stdin;
\.


--
-- Data for Name: ponto_curso; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.ponto_curso (id, ponto_id, curso_id) FROM stdin;
\.


--
-- Data for Name: ponto_interesse; Type: TABLE DATA; Schema: public; Owner: biffyclyro
--

COPY public.ponto_interesse (id, nome, img, lat, lng, descricao) FROM stdin;
1	CTISM	images/ctism.jpg	-29.7115093	-53.7176967	O CTISM é uma escola técnica vinculada à Coordenadoria de Educação Básica, Técnica e Tecnológica (CEBTT) da Universidade Federal de Santa Maria (UFSM) e faz parte, no âmbito do Sistema Federal de Ensino, da Rede Federal de Educação Profissional, Científica e Tecnológica, subordinada ao Ministério da Educação.\n\nTemos por finalidade a oferta de educação profissional e tecnológica nos diferentes níveis e nas distintas modalidades de ensino, de modo a articular as dimensões do trabalho, da ciência e da tecnologia. Os cursos ofertados são de formação inicial e de formação continuada, de educação profissional técnica de nível médio e de educação profissional tecnológica de graduação e de pós-graduação.
2	Politécnico	images/poli.jpg	-29.722255	-53.717906	O Colégio Politécnico é uma Unidade de Educação Básica, Técnica e Tecnológica da Universidade Federal de Santa Maria (UFSM), prevista no Estatuto Geral da instituição, e vinculada à Coordenadoria de Educação Básica, Técnica e Tecnológica (CEBTT). Tem por finalidade promover e ministrar a Educação Básica, a Formação Inicial e Continuada, a Educação Profissional Técnica de Nível Médio e a Educação Profissional Tecnológica.
\.


--
-- Name: cursos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.cursos_id_seq', 1, false);


--
-- Name: ponto_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.ponto_curso_id_seq', 1, false);


--
-- Name: ponto_interesse_id_seq; Type: SEQUENCE SET; Schema: public; Owner: biffyclyro
--

SELECT pg_catalog.setval('public.ponto_interesse_id_seq', 2, true);


--
-- Name: cursos cursos_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.cursos
    ADD CONSTRAINT cursos_pkey PRIMARY KEY (id);


--
-- Name: ponto_curso ponto_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_pkey PRIMARY KEY (id);


--
-- Name: ponto_interesse ponto_interesse_pkey; Type: CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_interesse
    ADD CONSTRAINT ponto_interesse_pkey PRIMARY KEY (id);


--
-- Name: ponto_curso ponto_curso_curso_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_curso_id_fkey FOREIGN KEY (curso_id) REFERENCES public.cursos(id);


--
-- Name: ponto_curso ponto_curso_ponto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: biffyclyro
--

ALTER TABLE ONLY public.ponto_curso
    ADD CONSTRAINT ponto_curso_ponto_id_fkey FOREIGN KEY (ponto_id) REFERENCES public.ponto_interesse(id);


--
-- PostgreSQL database dump complete
--

