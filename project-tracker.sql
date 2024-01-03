--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13 (Ubuntu 13.13-1.pgdg22.04+1)
-- Dumped by pg_dump version 13.13 (Ubuntu 13.13-1.pgdg22.04+1)

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
-- Name: project; Type: TABLE; Schema: public; Owner: mcabio
--

CREATE TABLE public.project (
    title character varying(20) NOT NULL,
    description character varying(50) NOT NULL,
    max_grade integer
);


ALTER TABLE public.project OWNER TO mcabio;

--
-- Name: students; Type: TABLE; Schema: public; Owner: mcabio
--

CREATE TABLE public.students (
    github character varying(20) NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL
);


ALTER TABLE public.students OWNER TO mcabio;

--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: mcabio
--

COPY public.project (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov chains	50
Blockly	Programmatic Logic Puzzle Game	100
hide_n_seek	code for hide_n_seek game	100
Guessing Game	game to guess number between 1 to 100	85
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: mcabio
--

COPY public.students (github, first_name, last_name) FROM stdin;
jhacks	Jane	Hacker
sdevelops	Sarah	Developer
\.


--
-- Name: project project_pkey; Type: CONSTRAINT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.project
    ADD CONSTRAINT project_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

