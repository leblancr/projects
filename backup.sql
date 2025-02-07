--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:aDS7UpsjAhSUHN87MV5xgA==$y2qn4wCNhN8ouVURcAO7/ibITYmIJT4eJIdbwuH0H3w=:gaeXgyc46dWWrnc8NVg8szl6WUqZxW5kWg4XsgbZGHo=';
ALTER ROLE rich WITH SUPERUSER INHERIT NOCREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:QRmHDzJZQK5FDA5PlQNWJw==$oq3+3J01hPb8e7IopDP8l1N2a7ezO7I7Ll/Ul5ZeLYI=:EAUSwdi6Q0dKRsO6wv7maM7GogefdGP6tVtCq2V2ZEs=';

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- PostgreSQL database dump complete
--

--
-- Database "baby-tracker" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: baby-tracker; Type: DATABASE; Schema: -; Owner: rich
--

CREATE DATABASE "baby-tracker" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE "baby-tracker" OWNER TO rich;

\connect -reuse-previous=on "dbname='baby-tracker'"

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
-- Name: event; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.event (
    id integer NOT NULL,
    description character varying(100) NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.event OWNER TO rich;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO rich;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;


--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.event (id, description, created_at) FROM stdin;
1	50ml bottle	2023-11-18 17:30:52.13852
2	51ml bottle	2023-11-18 22:10:27.569872
\.


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.event_id_seq', 4, true);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

--
-- Database "database" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: database; Type: DATABASE; Schema: -; Owner: rich
--

CREATE DATABASE database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE database OWNER TO rich;

\connect database

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
-- PostgreSQL database dump complete
--

--
-- Database "fastapi_lms" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: fastapi_lms; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE fastapi_lms WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE fastapi_lms OWNER TO postgres;

\connect fastapi_lms

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
-- Name: contenttype; Type: TYPE; Schema: public; Owner: rich
--

CREATE TYPE public.contenttype AS ENUM (
    'lesson',
    'quiz',
    'assignment'
);


ALTER TYPE public.contenttype OWNER TO rich;

--
-- Name: role; Type: TYPE; Schema: public; Owner: rich
--

CREATE TYPE public.role AS ENUM (
    'teacher',
    'student'
);


ALTER TYPE public.role OWNER TO rich;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO rich;

--
-- Name: completed_content_blocks; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.completed_content_blocks (
    id integer NOT NULL,
    student_id integer NOT NULL,
    content_block_id integer NOT NULL,
    url text,
    feedback text,
    grade integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.completed_content_blocks OWNER TO rich;

--
-- Name: completed_content_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.completed_content_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.completed_content_blocks_id_seq OWNER TO rich;

--
-- Name: completed_content_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.completed_content_blocks_id_seq OWNED BY public.completed_content_blocks.id;


--
-- Name: content_blocks; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.content_blocks (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    url text,
    content text,
    section_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    type public.contenttype
);


ALTER TABLE public.content_blocks OWNER TO rich;

--
-- Name: content_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.content_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_blocks_id_seq OWNER TO rich;

--
-- Name: content_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.content_blocks_id_seq OWNED BY public.content_blocks.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.courses OWNER TO rich;

--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_id_seq OWNER TO rich;

--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: profiles; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.profiles (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    bio text,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.profiles OWNER TO rich;

--
-- Name: profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.profiles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_id_seq OWNER TO rich;

--
-- Name: profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.profiles_id_seq OWNED BY public.profiles.id;


--
-- Name: sections; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.sections (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description text,
    course_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.sections OWNER TO rich;

--
-- Name: sections_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sections_id_seq OWNER TO rich;

--
-- Name: sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;


--
-- Name: student_courses; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.student_courses (
    id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    completed boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.student_courses OWNER TO rich;

--
-- Name: student_courses_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.student_courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_courses_id_seq OWNER TO rich;

--
-- Name: student_courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.student_courses_id_seq OWNED BY public.student_courses.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: rich
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role public.role,
    is_active boolean
);


ALTER TABLE public.users OWNER TO rich;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: rich
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO rich;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rich
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: completed_content_blocks id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.completed_content_blocks ALTER COLUMN id SET DEFAULT nextval('public.completed_content_blocks_id_seq'::regclass);


--
-- Name: content_blocks id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.content_blocks ALTER COLUMN id SET DEFAULT nextval('public.content_blocks_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: profiles id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.profiles ALTER COLUMN id SET DEFAULT nextval('public.profiles_id_seq'::regclass);


--
-- Name: sections id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);


--
-- Name: student_courses id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.student_courses ALTER COLUMN id SET DEFAULT nextval('public.student_courses_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.alembic_version (version_num) FROM stdin;
98dfc5df0e45
\.


--
-- Data for Name: completed_content_blocks; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.completed_content_blocks (id, student_id, content_block_id, url, feedback, grade, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: content_blocks; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.content_blocks (id, title, description, url, content, section_id, created_at, updated_at, type) FROM stdin;
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.courses (id, title, description, user_id, created_at, updated_at) FROM stdin;
1	course1	easy	1	2023-12-04 21:35:39.316236	2023-12-04 21:35:39.316242
2	course2	medium	1	2023-12-04 21:41:31.423288	2023-12-04 21:41:31.423294
3	course3	hard	1	2023-12-04 21:42:22.318011	2023-12-04 21:42:22.318017
4	course1	easy	2	2023-12-05 00:45:04.816355	2023-12-05 00:45:04.816361
5	course2	medium	2	2023-12-05 00:45:23.021932	2023-12-05 00:45:23.021939
6	course3	hard	2	2023-12-05 00:45:40.779162	2023-12-05 00:45:40.779165
\.


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.profiles (id, first_name, last_name, bio, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sections; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.sections (id, title, description, course_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: student_courses; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.student_courses (id, student_id, course_id, completed, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: rich
--

COPY public.users (id, email, created_at, updated_at, role, is_active) FROM stdin;
2	fish@example.com	2021-10-03 01:00:00	2021-10-03 01:00:00	student	t
1	bosco@example.com	2021-10-03 01:00:00	2021-10-03 01:00:00	student	t
3	kitkat@example.com	2021-10-03 01:00:00	2021-10-03 01:00:00	student	f
4	beau@proton.me	2023-12-04 05:54:39.855307	2023-12-04 05:54:39.855312	student	f
\.


--
-- Name: completed_content_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.completed_content_blocks_id_seq', 1, false);


--
-- Name: content_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.content_blocks_id_seq', 1, false);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.courses_id_seq', 6, true);


--
-- Name: profiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.profiles_id_seq', 1, false);


--
-- Name: sections_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.sections_id_seq', 1, false);


--
-- Name: student_courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.student_courses_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rich
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: completed_content_blocks completed_content_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.completed_content_blocks
    ADD CONSTRAINT completed_content_blocks_pkey PRIMARY KEY (id);


--
-- Name: content_blocks content_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.content_blocks
    ADD CONSTRAINT content_blocks_pkey PRIMARY KEY (id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (id);


--
-- Name: sections sections_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);


--
-- Name: student_courses student_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.student_courses
    ADD CONSTRAINT student_courses_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: ix_public_completed_content_blocks_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_completed_content_blocks_id ON public.completed_content_blocks USING btree (id);


--
-- Name: ix_public_content_blocks_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_content_blocks_id ON public.content_blocks USING btree (id);


--
-- Name: ix_public_courses_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_courses_id ON public.courses USING btree (id);


--
-- Name: ix_public_profiles_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_profiles_id ON public.profiles USING btree (id);


--
-- Name: ix_public_sections_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_sections_id ON public.sections USING btree (id);


--
-- Name: ix_public_student_courses_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_student_courses_id ON public.student_courses USING btree (id);


--
-- Name: ix_public_users_email; Type: INDEX; Schema: public; Owner: rich
--

CREATE UNIQUE INDEX ix_public_users_email ON public.users USING btree (email);


--
-- Name: ix_public_users_id; Type: INDEX; Schema: public; Owner: rich
--

CREATE INDEX ix_public_users_id ON public.users USING btree (id);


--
-- Name: completed_content_blocks completed_content_blocks_content_block_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.completed_content_blocks
    ADD CONSTRAINT completed_content_blocks_content_block_id_fkey FOREIGN KEY (content_block_id) REFERENCES public.content_blocks(id);


--
-- Name: completed_content_blocks completed_content_blocks_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.completed_content_blocks
    ADD CONSTRAINT completed_content_blocks_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id);


--
-- Name: content_blocks content_blocks_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.content_blocks
    ADD CONSTRAINT content_blocks_section_id_fkey FOREIGN KEY (section_id) REFERENCES public.sections(id);


--
-- Name: courses courses_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: profiles profiles_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.profiles
    ADD CONSTRAINT profiles_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: sections sections_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: student_courses student_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.student_courses
    ADD CONSTRAINT student_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: student_courses student_courses_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: rich
--

ALTER TABLE ONLY public.student_courses
    ADD CONSTRAINT student_courses_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- PostgreSQL database dump complete
--

--
-- Database "rich" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: rich; Type: DATABASE; Schema: -; Owner: rich
--

CREATE DATABASE rich WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE rich OWNER TO rich;

\connect rich

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
-- PostgreSQL database dump complete
--

--
-- Database "student" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: student; Type: DATABASE; Schema: -; Owner: rich
--

CREATE DATABASE student WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE student OWNER TO rich;

\connect student

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
-- Name: DATABASE student; Type: ACL; Schema: -; Owner: rich
--

GRANT ALL ON DATABASE student TO postgres;


--
-- PostgreSQL database dump complete
--

--
-- Database "testdb" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

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
-- Name: testdb; Type: DATABASE; Schema: -; Owner: rich
--

CREATE DATABASE testdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE testdb OWNER TO rich;

\connect testdb

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
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

