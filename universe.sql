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
    name character varying(40) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,4),
    planet_types integer,
    galaxy_types character varying(40)
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
    has_life boolean NOT NULL,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types character varying(40),
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
    name character varying(40) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types character varying(40),
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric(10,2),
    planet_types integer,
    galaxy_types character varying(40),
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
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, false, '', 2000, 324.3300, 1, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Whirlpool Galaxy', false, false, '', 2000, 324.3300, 1, 'Elliptical');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', false, false, '', 2000, 324.3300, 1, 'Peculiar');
INSERT INTO public.galaxy VALUES (4, 'Elliptical Galaxy', false, false, '', 2000, 324.3300, 1, 'Peculiar');
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', false, false, '', 2000, 324.3300, 1, 'Peculiar');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Galaxy', false, false, '', 2000, 324.3300, 1, 'Peculiar');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'New Moon', false, true, '', 3243, 234324.40, 1, 'Milky way', 1);
INSERT INTO public.moon VALUES (2, 'Full Moon', false, true, '', 3243, 234324.40, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (3, 'Waning gibbuos Moon', false, true, '', 3243, 234324.40, 1, 'Milky way', 3);
INSERT INTO public.moon VALUES (4, 'Last quarter Moon', false, false, '', 234234, 235325.56, 1, 'Milky way', 4);
INSERT INTO public.moon VALUES (5, 'Last quarter One Moon', false, false, '', 234234, 235325.50, 1, 'Milky way', 5);
INSERT INTO public.moon VALUES (6, 'Last quarter Two Moon', false, false, '', 234234, 235325.50, 1, 'Milky way', 6);
INSERT INTO public.moon VALUES (7, 'Last quarter Three Moon', false, false, '', 234234, 235325.50, 1, 'Milky way', 7);
INSERT INTO public.moon VALUES (8, 'Last quarter Four Moon', false, false, '', 234234, 235325.50, 1, 'Milky way', 8);
INSERT INTO public.moon VALUES (10, 'Waxingibbous Moon', false, false, '', 3454, 3454.56, 1, 'Milky way', 11);
INSERT INTO public.moon VALUES (11, 'Waxing crescent Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (12, 'Waxing waning Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (13, 'Jupiter Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (14, 'Practice Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (15, 'Adrenaline Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (16, 'Precious Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (17, 'Open Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (18, 'First quater Moon', false, false, '', 342, 5343.23, 1, 'Milky way', 2);
INSERT INTO public.moon VALUES (21, 'Second Quarter Moon', false, false, '', 4345, 3242330.34, 1, 'Milky way', 4);
INSERT INTO public.moon VALUES (22, 'Third Quater Moon', false, false, '', 2349, 343.23, 1, 'Milky way', 7);
INSERT INTO public.moon VALUES (23, 'Crystal Moon', false, false, '', 4345, 3242330.34, 1, 'Milky way', 11);
INSERT INTO public.moon VALUES (24, 'Fourth Quater Moon', false, false, '', 2349, 343.23, 1, 'Milky way', 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Neptune', false, true, '', 23423, 23423.34, 1, 'Milky way', 1);
INSERT INTO public.planet VALUES (2, 'Earth', true, true, '', 23423, 23423.34, 1, 'Milky way', 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (4, 'Pluto', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (5, 'Exoplanet', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (6, 'Blanet', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (7, 'Ice Planet', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (8, 'Desert Planet', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (10, 'Mesoplanet', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (11, 'Hot Neptune', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (12, 'Chthonian', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);
INSERT INTO public.planet VALUES (13, 'Earth Analog', false, true, '', 23423, 23423.34, 1, 'Milky way', 3);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'Low Earth orbit', NULL);
INSERT INTO public.satelite VALUES (2, 'Polar orbit', NULL);
INSERT INTO public.satelite VALUES (3, 'communications satellite', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Neutron Star', false, false, '', 2000, 324.33, 1, 'Spherical', 1);
INSERT INTO public.star VALUES (2, 'Red Dwarf', false, false, '', 2000, 324.33, 1, 'Spherical', 2);
INSERT INTO public.star VALUES (3, 'Brown Dwarf', false, false, '', 2000, 324.33, 1, 'Spherical', 3);
INSERT INTO public.star VALUES (4, 'White Dwarf', false, false, '', 2000, 324.33, 1, 'Spherical', 4);
INSERT INTO public.star VALUES (5, 'Binary Dwarf', false, false, '', 2000, 324.33, 1, 'Spherical', 5);
INSERT INTO public.star VALUES (6, 'Protostar', false, false, '', 2000, 324.33, 1, 'Spherical', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet__name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet__name UNIQUE (name);


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

