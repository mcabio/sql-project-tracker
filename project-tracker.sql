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
-- Name: grades; Type: TABLE; Schema: public; Owner: mcabio
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    student_github character varying(30),
    project_title character varying(30),
    grade integer
);


ALTER TABLE public.grades OWNER TO mcabio;

--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: mcabio
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_id_seq OWNER TO mcabio;

--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mcabio
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


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
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: mcabio
--

COPY public.grades (id, student_github, project_title, grade) FROM stdin;
1	jhacks	Markov	10
2	jhacks	Blockly	2
3	sdevelops	Markov	50
4	sdevelops	Blockly	100
\.


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
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mcabio
--

SELECT pg_catalog.setval('public.grades_id_seq', 4, true);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


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
-- Name: grades grades_project_title_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_project_title_fkey FOREIGN KEY (project_title) REFERENCES public.project(title);


--
-- Name: grades grades_student_github_fkey; Type: FK CONSTRAINT; Schema: public; Owner: mcabio
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_github_fkey FOREIGN KEY (student_github) REFERENCES public.students(github);


--
-- PostgreSQL database dump complete
--

