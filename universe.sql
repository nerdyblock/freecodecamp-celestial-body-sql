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
    name character varying(30) NOT NULL,
    description text,
    star_count integer,
    has_black_holes boolean,
    has_planets boolean,
    radius numeric(8,4)
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
    description text,
    radius integer,
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
    moon_count integer,
    radius integer,
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
    galaxy_id integer,
    description text,
    radius numeric(8,4)
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
-- Name: unknown_astro_constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.unknown_astro_constellation (
    unknown_astro_constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_light_years numeric(8,8)
);


ALTER TABLE public.unknown_astro_constellation OWNER TO freecodecamp;

--
-- Name: unknown_astro_constellation_astro_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.unknown_astro_constellation_astro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.unknown_astro_constellation_astro_id_seq OWNER TO freecodecamp;

--
-- Name: unknown_astro_constellation_astro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.unknown_astro_constellation_astro_id_seq OWNED BY public.unknown_astro_constellation.unknown_astro_constellation_id;


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
-- Name: unknown_astro_constellation unknown_astro_constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown_astro_constellation ALTER COLUMN unknown_astro_constellation_id SET DEFAULT nextval('public.unknown_astro_constellation_astro_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'galaxy in which earth resides', NULL, true, true, 1234.3400);
INSERT INTO public.galaxy VALUES (4, 'some Galaxy', NULL, NULL, NULL, NULL, 2343.3000);
INSERT INTO public.galaxy VALUES (5, 'New Galaxy', 'new galaxy found', NULL, true, false, 2343.3000);
INSERT INTO public.galaxy VALUES (6, 'random Galaxy', 'some random galaxy found', NULL, true, false, 1343.3000);
INSERT INTO public.galaxy VALUES (7, 'Galaxy-mk3', 'some random galaxy found', NULL, true, true, 1343.3000);
INSERT INTO public.galaxy VALUES (8, 'Galaxy-ranak234', 'galaxy rank 234', NULL, true, true, 2321.0000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Deimos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Amalthea', NULL, NULL, 5);
INSERT INTO public.moon VALUES (5, 'Io', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, NULL, 5);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'Dione', NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Hyperion', NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Mimas', NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Phoebe', NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Rhea', NULL, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Tethys', NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Titan', NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Charon', NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Triton', NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'Nereid', NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 9, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 2, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 1, NULL, 1);
INSERT INTO public.planet VALUES (10, 'marker-343', 0, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Nm-marker-343', 0, NULL, 5);
INSERT INTO public.planet VALUES (12, 'AHdh-34km2', 2, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 2, 'center of solar system', NULL);
INSERT INTO public.star VALUES (2, 'Aquila', 2, ' constellation in the northern sky', NULL);
INSERT INTO public.star VALUES (3, 'Capella', 2, 'sixth brightest star in the night sky and the brightest in the constellation Auriga', NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 2, 'It is a binary star in the constellation Canis Major', NULL);
INSERT INTO public.star VALUES (5, 'star mku-34', 5, 'star in new galaxy', NULL);
INSERT INTO public.star VALUES (6, 'Umerllio', 7, 'star in galaxy-mk3', NULL);


--
-- Data for Name: unknown_astro_constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.unknown_astro_constellation VALUES (1, 'woerm34ak', NULL);
INSERT INTO public.unknown_astro_constellation VALUES (2, 'amethirit', NULL);
INSERT INTO public.unknown_astro_constellation VALUES (3, 'Somerherti', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


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
-- Name: unknown_astro_constellation_astro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.unknown_astro_constellation_astro_id_seq', 3, true);


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
-- Name: unknown_astro_constellation unknown_astro_constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown_astro_constellation
    ADD CONSTRAINT unknown_astro_constellation_name_key UNIQUE (name);


--
-- Name: unknown_astro_constellation unknown_astro_constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.unknown_astro_constellation
    ADD CONSTRAINT unknown_astro_constellation_pkey PRIMARY KEY (unknown_astro_constellation_id);


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

