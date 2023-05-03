--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_type text NOT NULL,
    approx_number_of_stars numeric,
    galaxy_group character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    sole_moon boolean NOT NULL,
    year_discover numeric(4,0),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    moon integer,
    rings boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: quasar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.quasar (
    quasar_id integer NOT NULL,
    name character varying NOT NULL,
    quasar_type text NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.quasar OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.quasar_quasar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quasar_quasar_id_seq OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.quasar_quasar_id_seq OWNED BY public.quasar.quasar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    star_type text NOT NULL,
    planets integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: quasar quasar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar ALTER COLUMN quasar_id SET DEFAULT nextval('public.quasar_quasar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkey way', 'bredder-spiral', 5000000000, 'local group');
INSERT INTO public.galaxy VALUES (2, 'canis major drawf', 'drawd-irregular', NULL, 'local group');
INSERT INTO public.galaxy VALUES (3, 'green way', 'spiral', 5324000000, 'local group');
INSERT INTO public.galaxy VALUES (4, 'virgo', 'irregular', NULL, 'local group');
INSERT INTO public.galaxy VALUES (5, 'galaxy-1', 'bredder-spiral', 5000000000, 'local group');
INSERT INTO public.galaxy VALUES (6, 'galaxy-2', 'bredder-spiral', 5000000000, 'local group');
INSERT INTO public.galaxy VALUES (7, 'galaxy-3', 'bredder-spiral', 5000000000, 'local group');
INSERT INTO public.galaxy VALUES (8, 'galaxy-4', 'bredder-spiral', 5000000000, 'local group');
INSERT INTO public.galaxy VALUES (9, 'galaxy-5', 'bredder-spiral', 5000000000, 'local group');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Moon', true, 1601, 1);
INSERT INTO public.moon VALUES (4, 'Phobos', false, 1877, 1);
INSERT INTO public.moon VALUES (5, 'Moon1', true, 1991, 3);
INSERT INTO public.moon VALUES (6, 'Moon2', true, 1991, 3);
INSERT INTO public.moon VALUES (7, 'Moon3', true, 1991, 3);
INSERT INTO public.moon VALUES (8, 'Moon4', true, 1991, 3);
INSERT INTO public.moon VALUES (9, 'Moon5', true, 1991, 3);
INSERT INTO public.moon VALUES (10, 'Moon6', true, 1991, 3);
INSERT INTO public.moon VALUES (11, 'Moon7', true, 1991, 3);
INSERT INTO public.moon VALUES (12, 'Moon8', true, 1991, 3);
INSERT INTO public.moon VALUES (13, 'Moon9', true, 1991, 3);
INSERT INTO public.moon VALUES (14, 'Moon10', true, 1991, 3);
INSERT INTO public.moon VALUES (15, 'Moon11', true, 1991, 3);
INSERT INTO public.moon VALUES (16, 'Moon12', true, 1991, 3);
INSERT INTO public.moon VALUES (17, 'Moon13', true, 1991, 3);
INSERT INTO public.moon VALUES (18, 'Moon14', true, 1991, 3);
INSERT INTO public.moon VALUES (19, 'Moon15', true, 1991, 3);
INSERT INTO public.moon VALUES (20, 'Moon16', true, 1991, 3);
INSERT INTO public.moon VALUES (21, 'Moon17', true, 1991, 3);
INSERT INTO public.moon VALUES (22, 'Moon18', true, 1991, 3);
INSERT INTO public.moon VALUES (23, 'Moon19', true, 1991, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Earth', 1, false, 3);
INSERT INTO public.planet VALUES (3, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 82, false, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', 22, false, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 52, false, 1);
INSERT INTO public.planet VALUES (9, 'Planet_1', 2, false, 1);
INSERT INTO public.planet VALUES (10, 'Planet_2', 3, false, 1);
INSERT INTO public.planet VALUES (11, 'Planet_3', 4, false, 1);
INSERT INTO public.planet VALUES (12, 'Planet_4', 5, false, 1);
INSERT INTO public.planet VALUES (13, 'Planet_6', 7, false, 1);
INSERT INTO public.planet VALUES (14, 'Planet_7', 8, false, 1);
INSERT INTO public.planet VALUES (15, 'Planet_8', 9, false, 1);
INSERT INTO public.planet VALUES (16, 'Planet_9', 10, false, 1);
INSERT INTO public.planet VALUES (17, 'Planet_10', 11, false, 1);
INSERT INTO public.planet VALUES (18, 'Planet_11', 12, false, 1);
INSERT INTO public.planet VALUES (19, 'Planet_12', 2, false, 1);
INSERT INTO public.planet VALUES (20, 'Planet_13', 22, false, 1);
INSERT INTO public.planet VALUES (21, 'Planet_14', 2, false, 1);


--
-- Data for Name: quasar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.quasar VALUES (1, 'Ex-1', 'Loud', 1);
INSERT INTO public.quasar VALUES (2, 'Ex-2', 'Radio', 2);
INSERT INTO public.quasar VALUES (3, 'Ex-3', 'silent', 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', 'Yellow-Drawf', 8, 1);
INSERT INTO public.star VALUES (2, 'Proxima', 'Red-Drawf', 3, 1);
INSERT INTO public.star VALUES (3, 'Dhruv', 'gold-Drawf', 5, 1);
INSERT INTO public.star VALUES (4, 'Luhman', 'Red-Drawf', 8, 1);
INSERT INTO public.star VALUES (5, 'W0855', 'Brown-Drawf', 12, 1);
INSERT INTO public.star VALUES (6, 'Wold', 'white-Drawf', 6, 1);
INSERT INTO public.star VALUES (7, 'Star-1', 'Drawf', 5, 2);
INSERT INTO public.star VALUES (8, 'Star-2', 'Drawf', 5, 2);
INSERT INTO public.star VALUES (9, 'Star-3', 'Drawf', 5, 2);
INSERT INTO public.star VALUES (10, 'Star-4', 'Drawf', 5, 2);
INSERT INTO public.star VALUES (11, 'Star-5', 'Drawf', 5, 2);
INSERT INTO public.star VALUES (12, 'Star-6', 'Drawf', 5, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 21, true);


--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.quasar_quasar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: quasar quasar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_name_key UNIQUE (name);


--
-- Name: quasar quasar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_pkey PRIMARY KEY (quasar_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_sta_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_sta_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: quasar quasar_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

