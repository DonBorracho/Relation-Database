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
-- Name: discoverer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discoverer (
    discoverer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    dob text
);


ALTER TABLE public.discoverer OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discoverer_discoverer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discoverer_discoverer_id_seq OWNER TO freecodecamp;

--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discoverer_discoverer_id_seq OWNED BY public.discoverer.discoverer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    diameter_in_x1000_lightyear integer,
    no_of_stars_in_billion integer,
    appearance_magnitude numeric(10,4)
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
    planet_id integer,
    has_life boolean,
    discovered text
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
    star_id integer,
    has_life boolean,
    orbit_period text
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
    distance_ly numeric(8,4),
    appearance_magnitude numeric(6,2)
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
-- Name: discoverer discoverer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer ALTER COLUMN discoverer_id SET DEFAULT nextval('public.discoverer_discoverer_id_seq'::regclass);


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
-- Data for Name: discoverer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discoverer VALUES (1, 'Galileo Galilei', '15 Feb 1564');
INSERT INTO public.discoverer VALUES (2, 'Asaph Hall III', '15 Oct 1829');
INSERT INTO public.discoverer VALUES (3, 'S. Sheppard', '1977');
INSERT INTO public.discoverer VALUES (4, 'D. Jewitt', '1958');
INSERT INTO public.discoverer VALUES (5, 'J. Kleyna', 'unknown');
INSERT INTO public.discoverer VALUES (6, 'Voyage 2', '1977');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', 106, 400, -6.5000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 220, 1000, 3.4400);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral', 60, 40, 5.7200);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'irregular', 14, 250, 0.9000);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'dwarf irregular', 7, 3, 2.7000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'peculiar', 50, 750, 8.0000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 5, false, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 6, false, '1877');
INSERT INTO public.moon VALUES (3, 'Phobos', 6, false, '1877');
INSERT INTO public.moon VALUES (4, 'Aitne', 7, false, '2001');
INSERT INTO public.moon VALUES (5, 'Arche', 7, false, '2002');
INSERT INTO public.moon VALUES (6, 'Callisto', 7, false, '1610');
INSERT INTO public.moon VALUES (7, 'Europa', 7, false, '1610');
INSERT INTO public.moon VALUES (8, 'Io', 7, false, '1610');
INSERT INTO public.moon VALUES (9, 'Ganymede', 7, false, '1610');
INSERT INTO public.moon VALUES (10, 'Ananke', 7, false, '1951');
INSERT INTO public.moon VALUES (11, 'Leda', 7, false, '1974');
INSERT INTO public.moon VALUES (12, 'Aegir', 8, false, '2005');
INSERT INTO public.moon VALUES (13, 'Bestla', 8, false, '2005');
INSERT INTO public.moon VALUES (14, 'Hati', 8, false, '2005');
INSERT INTO public.moon VALUES (15, 'Kari', 8, false, '2006');
INSERT INTO public.moon VALUES (16, 'Kari', 8, false, '2006');
INSERT INTO public.moon VALUES (17, 'Loge', 8, false, '2006');
INSERT INTO public.moon VALUES (18, 'Pandora', 8, false, '1980');
INSERT INTO public.moon VALUES (19, 'Phoebe', 8, false, '1898');
INSERT INTO public.moon VALUES (20, 'Titan', 8, false, '1655');
INSERT INTO public.moon VALUES (21, 'Belinda', 9, false, '1986');
INSERT INTO public.moon VALUES (22, 'Cressida', 9, false, '1986');
INSERT INTO public.moon VALUES (23, 'Desdemona', 9, false, '1986');
INSERT INTO public.moon VALUES (24, 'Juliet', 9, false, '1986');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (6, 'Mars', 1, false, NULL);
INSERT INTO public.planet VALUES (7, 'Jupiter', 1, false, '11.9 years');
INSERT INTO public.planet VALUES (8, 'Saturn', 1, false, '29.5 years');
INSERT INTO public.planet VALUES (9, 'Uranus', 1, false, '84 years');
INSERT INTO public.planet VALUES (10, 'Neptune', 1, false, '165 years');
INSERT INTO public.planet VALUES (11, 'Saffar', 3, false, '4.62 days');
INSERT INTO public.planet VALUES (12, 'Samh', 3, false, '241.26 days');
INSERT INTO public.planet VALUES (13, 'Majriti', 3, false, '1276.46 days');
INSERT INTO public.planet VALUES (14, 'b', 4, false, '4214 days');
INSERT INTO public.planet VALUES (16, 'Gliese b', 5, false, '8.6312 days');
INSERT INTO public.planet VALUES (17, 'HD180 c', 6, false, '5.759 days');
INSERT INTO public.planet VALUES (1, 'Planet d', 2, false, '5.122 days');
INSERT INTO public.planet VALUES (2, 'Planet b', 2, false, '11.184 days');
INSERT INTO public.planet VALUES (3, 'Mercury', 1, false, '88.000 days');
INSERT INTO public.planet VALUES (4, 'Venus', 1, false, '225.000 days');
INSERT INTO public.planet VALUES (5, 'Earth', 1, true, '365.240 days');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.0000, -26.70);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4.2440, 10.43);
INSERT INTO public.star VALUES (3, 'Upsilon Andromedae', 2, 44.0000, 4.09);
INSERT INTO public.star VALUES (4, '61 Virginis', 6, 28.0000, 4.74);
INSERT INTO public.star VALUES (5, 'Gliese 163', 4, 49.0000, 11.80);
INSERT INTO public.star VALUES (6, 'HD 10180', 5, 127.0000, 7.33);


--
-- Name: discoverer_discoverer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discoverer_discoverer_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: discoverer discoverer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_name_key UNIQUE (name);


--
-- Name: discoverer discoverer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discoverer
    ADD CONSTRAINT discoverer_pkey PRIMARY KEY (discoverer_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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

