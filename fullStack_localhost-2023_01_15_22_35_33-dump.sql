--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

--
-- Name: fullStack; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "fullStack" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Bolivia.1252';


ALTER DATABASE "fullStack" OWNER TO postgres;

\connect "fullStack"

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

--
-- Name: modulo_iii; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA modulo_iii;


ALTER SCHEMA modulo_iii OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tusuario; Type: TABLE; Schema: modulo_iii; Owner: postgres
--

CREATE TABLE modulo_iii.tusuario (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(80),
    edad integer,
    email character varying(100)
);


ALTER TABLE modulo_iii.tusuario OWNER TO postgres;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE; Schema: modulo_iii; Owner: postgres
--

CREATE SEQUENCE modulo_iii.tusuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modulo_iii.tusuario_id_usuario_seq OWNER TO postgres;

--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: modulo_iii; Owner: postgres
--

ALTER SEQUENCE modulo_iii.tusuario_id_usuario_seq OWNED BY modulo_iii.tusuario.id_usuario;


--
-- Name: tusuario id_usuario; Type: DEFAULT; Schema: modulo_iii; Owner: postgres
--

ALTER TABLE ONLY modulo_iii.tusuario ALTER COLUMN id_usuario SET DEFAULT nextval('modulo_iii.tusuario_id_usuario_seq'::regclass);


--
-- Data for Name: tusuario; Type: TABLE DATA; Schema: modulo_iii; Owner: postgres
--

COPY modulo_iii.tusuario (id_usuario, nombre_usuario, edad, email) FROM stdin;
1	jona	32	jonathan@gmail.com
2	\N	\N	\N
3	\N	\N	\N
4	jonas	32	jonasxxx
5	roberto	30	jonasxxx
\.


--
-- Name: tusuario_id_usuario_seq; Type: SEQUENCE SET; Schema: modulo_iii; Owner: postgres
--

SELECT pg_catalog.setval('modulo_iii.tusuario_id_usuario_seq', 5, true);


--
-- Name: tusuario tusuario_pkey; Type: CONSTRAINT; Schema: modulo_iii; Owner: postgres
--

ALTER TABLE ONLY modulo_iii.tusuario
    ADD CONSTRAINT tusuario_pkey PRIMARY KEY (id_usuario);


--
-- PostgreSQL database dump complete
--

