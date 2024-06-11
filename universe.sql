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
    name character varying(40) NOT NULL,
    age numeric NOT NULL,
    has_life boolean NOT NULL,
    visible_from_earth boolean,
    description text
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
    name character varying(40) NOT NULL,
    planet_id integer,
    is_colonized boolean,
    surface_area integer
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
    name character varying(40) NOT NULL,
    star_id integer,
    has_rings boolean NOT NULL,
    population integer
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
-- Name: resource; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.resource (
    resource_id integer NOT NULL,
    name character varying(40) NOT NULL,
    planet_id integer,
    amount integer,
    is_mineable boolean
);


ALTER TABLE public.resource OWNER TO freecodecamp;

--
-- Name: resource_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.resource_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resource_resource_id_seq OWNER TO freecodecamp;

--
-- Name: resource_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.resource_resource_id_seq OWNED BY public.resource.resource_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_id integer,
    mass numeric NOT NULL,
    is_nova boolean NOT NULL
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
-- Name: resource resource_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource ALTER COLUMN resource_id SET DEFAULT nextval('public.resource_resource_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.21, true, true, 'The Milky Way is the galaxy that contains our Solar System.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 13.21, true, true, 'The Andromeda Galaxy, also known as Messier 31');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 13.21, true, true, 'The Triangulum Galaxy is a spiral galaxy approximately 3 million light-years.');
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13.21, true, true, 'Messier 87 (also known as Virgo A or NGC 4486, generally abbreviated to M87)');
INSERT INTO public.galaxy VALUES (5, 'Messier 81', 13.21, true, true, 'Messier 81 (also known as NGC 3031 or Bode''s Galaxy).');
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 13.21, true, true, 'Messier 82 (also known as NGC 3034, Cigar Galaxy or M82');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, 123123);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, true, 123123);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, true, 2345);
INSERT INTO public.moon VALUES (4, 'Mercury Moon', 4, true, 234234);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, true, 234234);
INSERT INTO public.moon VALUES (6, 'Titan', 6, true, 2345435);
INSERT INTO public.moon VALUES (7, 'Titania', 7, true, 234234);
INSERT INTO public.moon VALUES (8, 'Triton', 8, true, 234234);
INSERT INTO public.moon VALUES (9, 'Charon', 9, true, 234234);
INSERT INTO public.moon VALUES (10, 'Kepler-186f Moon', 10, true, 234234);
INSERT INTO public.moon VALUES (11, 'Kepler-452b Moon', 11, true, 234234);
INSERT INTO public.moon VALUES (12, 'Kepler-442b Moon', 12, true, 234234);
INSERT INTO public.moon VALUES (13, 'Sun Moon', 1, true, 234234);
INSERT INTO public.moon VALUES (14, 'Alpha Centauri Moon', 2, true, 234234);
INSERT INTO public.moon VALUES (15, 'Sirius Moon', 3, true, 324234);
INSERT INTO public.moon VALUES (16, 'Epsilon Eridani Moon', 4, true, 234234);
INSERT INTO public.moon VALUES (17, 'Procyon Moon', 5, true, 43434);
INSERT INTO public.moon VALUES (18, 'Tau Ceti Moon', 6, true, 234234);
INSERT INTO public.moon VALUES (19, 'Earth Moon', 1, true, 234234);
INSERT INTO public.moon VALUES (20, 'Mars Moon', 2, true, 234234);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 100);
INSERT INTO public.planet VALUES (2, 'Mars', 2, true, 102);
INSERT INTO public.planet VALUES (3, 'Venus', 3, true, 103);
INSERT INTO public.planet VALUES (4, 'Mercury', 4, true, 2003);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, true, 1112);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, true, 1113);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, true, 1114);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, true, 1115);
INSERT INTO public.planet VALUES (9, 'Pluto', 3, true, 1116);
INSERT INTO public.planet VALUES (10, 'Kepler-186f', 4, true, 1232);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', 5, true, 2032);
INSERT INTO public.planet VALUES (12, 'Kepler-442b', 6, true, 12323);


--
-- Data for Name: resource; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.resource VALUES (1, 'Water', 1, 345345, true);
INSERT INTO public.resource VALUES (2, 'Gold', 2, 345345, true);
INSERT INTO public.resource VALUES (3, 'Silver', 3, 345345, true);
INSERT INTO public.resource VALUES (4, 'Iron', 4, 146454, true);
INSERT INTO public.resource VALUES (5, 'Copper', 5, 345345, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1989000000000000000000000000000, false);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 2, 2200000000000000000000000000000, false);
INSERT INTO public.star VALUES (3, 'Sirius', 3, 2100000000000000000000000000000, false);
INSERT INTO public.star VALUES (4, 'Epsilon Eridani', 4, 1700000000000000000000000000000, false);
INSERT INTO public.star VALUES (5, 'Procyon', 5, 1500000000000000000000000000000, false);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 6, 1300000000000000000000000000000, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: resource_resource_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.resource_resource_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: resource resource_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_name_key UNIQUE (name);


--
-- Name: resource resource_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_pkey PRIMARY KEY (resource_id);


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
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: resource resource_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.resource
    ADD CONSTRAINT resource_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

