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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
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
    name character varying(30) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    description text,
    has_life boolean,
    has_water boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'asteroidone', 1000, 1000, 25000.60, 'solid', true, true);
INSERT INTO public.asteroid VALUES (2, 'asteroidtwo', 1000, 1000, 25000.60, 'solid', true, true);
INSERT INTO public.asteroid VALUES (3, 'asteroidthree', 1000, 1000, 25000.60, 'solid', true, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxyone', 1000, 1000, 25000.60, 'solid', true, true, 1);
INSERT INTO public.galaxy VALUES (2, 'galaxytwo', 1000, 1000, 25000.60, 'solid', true, true, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxythree', 1000, 1000, 25000.60, 'solid', true, true, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxyfour', 1000, 1000, 25000.60, 'solid', true, true, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxyfive', 1000, 1000, 25000.60, 'solid', true, true, 5);
INSERT INTO public.galaxy VALUES (6, 'galaxysix', 1000, 1000, 25000.60, 'solid', true, true, 6);
INSERT INTO public.galaxy VALUES (7, 'galaxyseven', 1000, 1000, 25000.60, 'solid', true, true, 7);
INSERT INTO public.galaxy VALUES (8, 'galaxyeight', 1000, 1000, 25000.60, 'solid', true, true, 8);
INSERT INTO public.galaxy VALUES (9, 'galaxynine', 1000, 1000, 25000.60, 'solid', true, true, 9);
INSERT INTO public.galaxy VALUES (10, 'galaxyten', 1000, 1000, 25000.60, 'solid', true, true, 10);
INSERT INTO public.galaxy VALUES (11, 'galaxyeleven', 1000, 1000, 25000.60, 'solid', true, true, 11);
INSERT INTO public.galaxy VALUES (12, 'galaxytwelve', 1000, 1000, 25000.60, 'solid', true, true, 12);
INSERT INTO public.galaxy VALUES (13, 'galaxythirteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (14, 'galaxyfourteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (15, 'galaxyfifteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (16, 'galaxysixteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (17, 'galaxyseventeen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (18, 'galaxyeighteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (19, 'galaxynineteen', 1000, 1000, 25000.60, 'solid', true, true, NULL);
INSERT INTO public.galaxy VALUES (20, 'galaxytwenty', 1000, 1000, 25000.60, 'solid', true, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moonone', 1000, 1000, 25000.60, 'solid', true, true, 1);
INSERT INTO public.moon VALUES (2, 'moontwo', 1000, 1000, 25000.60, 'solid', true, true, 2);
INSERT INTO public.moon VALUES (3, 'moonthree', 1000, 1000, 25000.60, 'solid', true, true, 3);
INSERT INTO public.moon VALUES (4, 'moonfour', 1000, 1000, 25000.60, 'solid', true, true, 4);
INSERT INTO public.moon VALUES (5, 'moonfive', 1000, 1000, 25000.60, 'solid', true, true, 5);
INSERT INTO public.moon VALUES (6, 'moonsix', 1000, 1000, 25000.60, 'solid', true, true, 6);
INSERT INTO public.moon VALUES (7, 'moonseven', 1000, 1000, 25000.60, 'solid', true, true, 7);
INSERT INTO public.moon VALUES (8, 'mooneight', 1000, 1000, 25000.60, 'solid', true, true, 8);
INSERT INTO public.moon VALUES (9, 'moonnine', 1000, 1000, 25000.60, 'solid', true, true, 9);
INSERT INTO public.moon VALUES (10, 'moonten', 1000, 1000, 25000.60, 'solid', true, true, 10);
INSERT INTO public.moon VALUES (11, 'mooneleven', 1000, 1000, 25000.60, 'solid', true, true, 11);
INSERT INTO public.moon VALUES (12, 'moontwelve', 1000, 1000, 25000.60, 'solid', true, true, 12);
INSERT INTO public.moon VALUES (13, 'moonthirteen', 1000, 1000, 25000.60, 'solid', true, true, 13);
INSERT INTO public.moon VALUES (14, 'moonfourteen', 1000, 1000, 25000.60, 'solid', true, true, 14);
INSERT INTO public.moon VALUES (15, 'moonfifteen', 1000, 1000, 25000.60, 'solid', true, true, 15);
INSERT INTO public.moon VALUES (16, 'moonsixteen', 1000, 1000, 25000.60, 'solid', true, true, 16);
INSERT INTO public.moon VALUES (17, 'moonseventeen', 1000, 1000, 25000.60, 'solid', true, true, 17);
INSERT INTO public.moon VALUES (18, 'mooneighteen', 1000, 1000, 25000.60, 'solid', true, true, 18);
INSERT INTO public.moon VALUES (19, 'moonnineteen', 1000, 1000, 25000.60, 'solid', true, true, 19);
INSERT INTO public.moon VALUES (20, 'moontwenty', 1000, 1000, 25000.60, 'solid', true, true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planetone', 1000, 1000, 25000.60, 'solid', true, true, 1);
INSERT INTO public.planet VALUES (2, 'planettwo', 1000, 1000, 25000.60, 'solid', true, true, 2);
INSERT INTO public.planet VALUES (3, 'planetthree', 1000, 1000, 25000.60, 'solid', true, true, 3);
INSERT INTO public.planet VALUES (4, 'planetfour', 1000, 1000, 25000.60, 'solid', true, true, 4);
INSERT INTO public.planet VALUES (5, 'planetfive', 1000, 1000, 25000.60, 'solid', true, true, 5);
INSERT INTO public.planet VALUES (6, 'planetsix', 1000, 1000, 25000.60, 'solid', true, true, 6);
INSERT INTO public.planet VALUES (7, 'planetseven', 1000, 1000, 25000.60, 'solid', true, true, 7);
INSERT INTO public.planet VALUES (8, 'planeteight', 1000, 1000, 25000.60, 'solid', true, true, 8);
INSERT INTO public.planet VALUES (9, 'planetnine', 1000, 1000, 25000.60, 'solid', true, true, 9);
INSERT INTO public.planet VALUES (10, 'planetten', 1000, 1000, 25000.60, 'solid', true, true, 10);
INSERT INTO public.planet VALUES (11, 'planeteleven', 1000, 1000, 25000.60, 'solid', true, true, 11);
INSERT INTO public.planet VALUES (12, 'planettwelve', 1000, 1000, 25000.60, 'solid', true, true, 12);
INSERT INTO public.planet VALUES (13, 'planetthirteen', 1000, 1000, 25000.60, 'solid', true, true, 13);
INSERT INTO public.planet VALUES (14, 'planetfourteen', 1000, 1000, 25000.60, 'solid', true, true, 14);
INSERT INTO public.planet VALUES (15, 'planetfifteen', 1000, 1000, 25000.60, 'solid', true, true, 15);
INSERT INTO public.planet VALUES (16, 'planetsixteen', 1000, 1000, 25000.60, 'solid', true, true, 16);
INSERT INTO public.planet VALUES (17, 'planetseventeen', 1000, 1000, 25000.60, 'solid', true, true, 17);
INSERT INTO public.planet VALUES (18, 'planeteighteen', 1000, 1000, 25000.60, 'solid', true, true, 18);
INSERT INTO public.planet VALUES (19, 'planetnineteen', 1000, 1000, 25000.60, 'solid', true, true, 19);
INSERT INTO public.planet VALUES (20, 'planettwenty', 1000, 1000, 25000.60, 'solid', true, true, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'starone', 1000, 1000, 25000.60, 'solid', true, true, 1);
INSERT INTO public.star VALUES (2, 'startwo', 1000, 1000, 25000.60, 'solid', true, true, 2);
INSERT INTO public.star VALUES (3, 'starthree', 1000, 1000, 25000.60, 'solid', true, true, 3);
INSERT INTO public.star VALUES (4, 'starfour', 1000, 1000, 25000.60, 'solid', true, true, 4);
INSERT INTO public.star VALUES (5, 'starfive', 1000, 1000, 25000.60, 'solid', true, true, 5);
INSERT INTO public.star VALUES (6, 'starsix', 1000, 1000, 25000.60, 'solid', true, true, 6);
INSERT INTO public.star VALUES (7, 'starseven', 1000, 1000, 25000.60, 'solid', true, true, 7);
INSERT INTO public.star VALUES (8, 'stareight', 1000, 1000, 25000.60, 'solid', true, true, 8);
INSERT INTO public.star VALUES (9, 'starnine', 1000, 1000, 25000.60, 'solid', true, true, 9);
INSERT INTO public.star VALUES (10, 'starten', 1000, 1000, 25000.60, 'solid', true, true, 10);
INSERT INTO public.star VALUES (11, 'stareleven', 1000, 1000, 25000.60, 'solid', true, true, 11);
INSERT INTO public.star VALUES (12, 'startwelve', 1000, 1000, 25000.60, 'solid', true, true, 12);
INSERT INTO public.star VALUES (13, 'starthirteen', 1000, 1000, 25000.60, 'solid', true, true, 13);
INSERT INTO public.star VALUES (14, 'starfourteen', 1000, 1000, 25000.60, 'solid', true, true, 14);
INSERT INTO public.star VALUES (15, 'starfifteen', 1000, 1000, 25000.60, 'solid', true, true, 15);
INSERT INTO public.star VALUES (16, 'starsixteen', 1000, 1000, 25000.60, 'solid', true, true, 16);
INSERT INTO public.star VALUES (17, 'starseventeen', 1000, 1000, 25000.60, 'solid', true, true, 17);
INSERT INTO public.star VALUES (18, 'stareighteen', 1000, 1000, 25000.60, 'solid', true, true, 18);
INSERT INTO public.star VALUES (19, 'starnineteen', 1000, 1000, 25000.60, 'solid', true, true, 19);
INSERT INTO public.star VALUES (20, 'startwenty', 1000, 1000, 25000.60, 'solid', true, true, 20);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

