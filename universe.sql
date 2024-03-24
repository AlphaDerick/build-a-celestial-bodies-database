--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(200) NOT NULL,
    age_in_millions_of_years integer,
    numbers_of_solar_systems integer,
    distance_from_earth numeric(20,3),
    description text NOT NULL,
    is_rotating boolean,
    has_life boolean
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
    name character varying(200) NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    distance_from_earth numeric(20,3),
    description text NOT NULL,
    is_rotating boolean,
    has_life boolean,
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
    name character varying(200) NOT NULL,
    age_in_millions_of_years integer,
    radius integer,
    distance_from_earth numeric(20,3),
    description text NOT NULL,
    is_rotating boolean,
    has_life boolean,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200) NOT NULL,
    age_in_millions_of_years integer,
    numbers_of_planets integer,
    distance_from_earth numeric(20,3),
    description text NOT NULL,
    is_rotating boolean,
    has_life boolean,
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
-- Name: type_of_life; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type_of_life (
    type_of_life_id integer NOT NULL,
    name character varying(200) NOT NULL,
    active boolean NOT NULL
);


ALTER TABLE public.type_of_life OWNER TO freecodecamp;

--
-- Name: type_of_life_type_of_life_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_of_life_type_of_life_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_of_life_type_of_life_id_seq OWNER TO freecodecamp;

--
-- Name: type_of_life_type_of_life_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_of_life_type_of_life_id_seq OWNED BY public.type_of_life.type_of_life_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: type_of_life type_of_life_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_life ALTER COLUMN type_of_life_id SET DEFAULT nextval('public.type_of_life_type_of_life_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Vía Láctea', NULL, NULL, 0.000, 'Galaxia que alberga a la Tierra.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Enana del Can Mayor', NULL, NULL, 0.008, 'Satélite de la Vía Láctea.', true, false);
INSERT INTO public.galaxy VALUES (3, 'Enana Elíptica de Sagitario', NULL, NULL, 0.024, 'Satélite de la Vía Láctea.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Gran Nube de Magallanes', NULL, NULL, 0.050, 'Satélite de la Vía Láctea.', true, true);
INSERT INTO public.galaxy VALUES (5, 'Enana de Bootes', NULL, NULL, 0.060, 'Satélite de la Vía Láctea.', true, false);
INSERT INTO public.galaxy VALUES (6, 'Andrómeda II', NULL, NULL, 0.065, 'Satélite de Andromeda.', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', NULL, NULL, 0.010, 'Luna de la Tierra', true, false, 3);
INSERT INTO public.moon VALUES (2, 'Dheimos', NULL, NULL, 0.020, 'Luna de la Marte', true, false, 4);
INSERT INTO public.moon VALUES (3, 'Phomos', NULL, NULL, 0.020, 'Luna de la Marte', true, false, 4);
INSERT INTO public.moon VALUES (4, 'Adastrea', NULL, NULL, 0.020, 'Luna de la Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (5, 'Aidne', NULL, NULL, 0.020, 'Luna de la Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (6, 'Ananke', NULL, NULL, 0.020, 'Luna de la Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (7, 'Aoede', NULL, NULL, 0.020, 'Luna de la Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (8, 'Arche', NULL, NULL, 0.020, 'Luna de la Jupiter', true, false, 5);
INSERT INTO public.moon VALUES (9, 'Atlas', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (10, 'Bestla', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (12, 'Hati', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (13, 'Helene', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (14, 'kari', NULL, NULL, 0.020, 'Luna de la Saturno', true, false, 6);
INSERT INTO public.moon VALUES (15, 'Despina', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);
INSERT INTO public.moon VALUES (16, 'Galatea', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);
INSERT INTO public.moon VALUES (17, 'Larissa', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);
INSERT INTO public.moon VALUES (18, 'Naiad', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);
INSERT INTO public.moon VALUES (19, 'Sao', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);
INSERT INTO public.moon VALUES (20, 'Triton', NULL, NULL, 0.050, 'Luna de la Urano', true, false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercurio', NULL, NULL, 0.500, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, 0.100, 'Planeta del sistema solar', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Tierra', NULL, NULL, 0.000, 'Planeta del sistema solar', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Marte', NULL, NULL, 0.100, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, 0.200, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturno', NULL, NULL, 0.300, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (7, 'Urano', NULL, NULL, 0.400, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (8, 'Nepturno', NULL, NULL, 0.500, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (9, 'Pluton', NULL, NULL, 0.600, 'Planeta del sistema solar', true, false, 1);
INSERT INTO public.planet VALUES (10, 'KOI-4878.01', NULL, NULL, 0.700, 'Planeta del sistema sirio', true, false, 2);
INSERT INTO public.planet VALUES (11, 'Teegarden b', NULL, NULL, 0.800, 'Planeta del sistema Arturo', true, false, 3);
INSERT INTO public.planet VALUES (12, 'K2-72 e', NULL, NULL, 0.900, 'Planeta del sistema Arturo', true, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', NULL, NULL, 0.000, 'Estrella que alberga a la Tierra.', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirio', NULL, NULL, 3.600, 'Estrella que pertenece a la galaxia can mayor', true, false, 2);
INSERT INTO public.star VALUES (3, 'Arturo', NULL, NULL, 36.000, 'Estrella que pertenece a la galaxia can mayor', true, false, 2);
INSERT INTO public.star VALUES (4, 'Alfa Centauri A', NULL, NULL, 4.600, 'Estrella que pertenece a la galaxia can mayor', true, false, 2);
INSERT INTO public.star VALUES (5, 'Alfa Centauri B', NULL, NULL, 4.600, 'Estrella que pertenece a la galaxia can mayor', true, false, 2);
INSERT INTO public.star VALUES (6, 'Orion', NULL, NULL, 8.600, 'Estrella que pertenece a la galaxia can mayor', true, false, 2);


--
-- Data for Name: type_of_life; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type_of_life VALUES (1, 'Humans', true);
INSERT INTO public.type_of_life VALUES (2, 'Bacterius', true);
INSERT INTO public.type_of_life VALUES (3, 'Plants', true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: type_of_life_type_of_life_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_of_life_type_of_life_id_seq', 3, true);


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
-- Name: type_of_life type_of_life_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_life
    ADD CONSTRAINT type_of_life_name_key UNIQUE (name);


--
-- Name: type_of_life type_of_life_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type_of_life
    ADD CONSTRAINT type_of_life_pkey PRIMARY KEY (type_of_life_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

