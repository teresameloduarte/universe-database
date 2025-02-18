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
    description text,
    name character varying(15) NOT NULL,
    type text NOT NULL,
    diameter integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_million_of_years integer,
    planet_id integer,
    is_habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth character varying(50) NOT NULL,
    age_in_billion_of_years numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solay_system_id integer NOT NULL,
    name text,
    galaxy_id integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solay_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solay_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solay_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solay_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solay_system_id_seq OWNED BY public.solar_system.solay_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    size character varying(15),
    surface_temperature numeric,
    galaxy_name character varying(15),
    luminosity numeric,
    mass numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: solar_system solay_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solay_system_id SET DEFAULT nextval('public.solar_system_solay_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('A barred spiral galaxy that contains our Solar System.', 'Milky Way', 'Spiral', 100000, 1);
INSERT INTO public.galaxy VALUES ('The closest spiral galaxy to the Milky Way, on a collision course.', 'Andromeda', 'Spiral', 220000, 2);
INSERT INTO public.galaxy VALUES ('A small spiral galaxy in the Local Group.', 'Triangulum', 'Spiral', 60000, 3);
INSERT INTO public.galaxy VALUES ('A giant elliptical galaxy in the Virgo Cluster, known for its supermassive black hole.', 'Messier 87', 'Elliptical', 120000, 4);
INSERT INTO public.galaxy VALUES ('A spiral galaxy known for its bright nucleus and prominent dust lane.', 'Sombrero', 'Spiral', 49000, 5);
INSERT INTO public.galaxy VALUES ('A grand-design spiral galaxy, notable for its interactions with a nearby galaxy.', 'Whirlpool', 'Spiral', 70000, 6);
INSERT INTO public.galaxy VALUES ('A small irregular galaxy in the Local Group.', 'Orion', 'Irregular', 10000, 7);
INSERT INTO public.galaxy VALUES ('A triple star system that is the closest to Earth, consisting of Alpha Centauri A, Alpha Centauri B, and Proxima Centauri.', 'Alpha Centauri', 'Binary', 24, 8);
INSERT INTO public.galaxy VALUES ('A small elliptical galaxy located in the Lyra constellation, notable for its lack of distinct structure.', 'Lyra', 'Elliptical', 25000, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Luna', 4500, 13, true);
INSERT INTO public.moon VALUES (22, 'Deimos', 4500, 14, false);
INSERT INTO public.moon VALUES (23, 'Phobos', 4500, 14, false);
INSERT INTO public.moon VALUES (24, 'Venusian Moon', 4600, 15, false);
INSERT INTO public.moon VALUES (25, 'Europa', 4600, 16, true);
INSERT INTO public.moon VALUES (26, 'Io', 4600, 16, false);
INSERT INTO public.moon VALUES (27, 'Callisto', 4600, 16, false);
INSERT INTO public.moon VALUES (28, 'Titan', 4600, 17, true);
INSERT INTO public.moon VALUES (29, 'Rhea', 4600, 17, false);
INSERT INTO public.moon VALUES (30, 'Proxima Centauri b Moon', 4000, 18, true);
INSERT INTO public.moon VALUES (31, 'Alpha Centauri b Moon', 5000, 19, false);
INSERT INTO public.moon VALUES (32, 'Kepler-22b Moon', 6000, 20, true);
INSERT INTO public.moon VALUES (33, 'Kepler-22c Moon', 6000, 20, false);
INSERT INTO public.moon VALUES (34, 'HD 40307g Moon', 4500, 21, false);
INSERT INTO public.moon VALUES (35, 'Gliese 581g Moon', 5000, 22, true);
INSERT INTO public.moon VALUES (36, 'Kepler-186f Moon', 7000, 23, true);
INSERT INTO public.moon VALUES (37, 'Kepler-452b Moon', 6000, 24, true);
INSERT INTO public.moon VALUES (38, 'Titanus', 4600, 17, true);
INSERT INTO public.moon VALUES (39, 'Callistus', 4600, 16, false);
INSERT INTO public.moon VALUES (40, 'Ganymede', 4600, 16, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', '0', 4.5, true, 19);
INSERT INTO public.planet VALUES (14, 'Mars', '225 million km', 4.6, false, 19);
INSERT INTO public.planet VALUES (15, 'Venus', '42 million km', 4.6, false, 19);
INSERT INTO public.planet VALUES (16, 'Jupiter', '628 million km', 4.5, false, 19);
INSERT INTO public.planet VALUES (17, 'Saturn', '1.2 billion km', 4.5, false, 19);
INSERT INTO public.planet VALUES (18, 'Proxima b', '4.24 light years', 4.0, true, 24);
INSERT INTO public.planet VALUES (19, 'Alpha Centauri b', '4.37 light years', 5.0, true, 24);
INSERT INTO public.planet VALUES (20, 'Kepler-22b', '600 light years', 6.0, true, 22);
INSERT INTO public.planet VALUES (21, 'HD 40307g', '42 light years', 4.5, false, 22);
INSERT INTO public.planet VALUES (22, 'Gliese 581g', '20.3 light years', 5.0, true, 21);
INSERT INTO public.planet VALUES (23, 'Kepler-186f', '500 light years', 7.0, true, 21);
INSERT INTO public.planet VALUES (24, 'Kepler-452b', '1,400 light years', 6.0, true, 23);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 1);
INSERT INTO public.solar_system VALUES (2, 'Alpha Centauri System', 4);
INSERT INTO public.solar_system VALUES (3, 'Orion System', 3);
INSERT INTO public.solar_system VALUES (4, 'Lyra System', 5);
INSERT INTO public.solar_system VALUES (5, 'Kepler-22b System', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (19, 'Sun', 'Medium', 5778, 'Milky Way', 1, 1989000000000000000000000000000);
INSERT INTO public.star VALUES (20, 'Sirius', 'Large', 9940, 'Milky Way', 25.4, 2063000000000000000000000000000);
INSERT INTO public.star VALUES (21, 'Betelgeuse', 'Supergiant', 3500, 'Orion', 100000, 18000000000000000000000000000000);
INSERT INTO public.star VALUES (22, 'Alpha Centauri A', 'Large', 5790, 'Alpha Centauri', 1.5, 2000000000000000000000000000000);
INSERT INTO public.star VALUES (23, 'Vega', 'Medium', 9600, 'Lyra', 40, 2100000000000000000000000000000);
INSERT INTO public.star VALUES (24, 'Proxima Centauri', 'Small', 3050, 'Alpha Centauri', 0.0015, 120000000000000000000000000000);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 40, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: solar_system_solay_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solay_system_id_seq', 5, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 24, true);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solay_system_id);


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
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star fk_galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(name);


--
-- Name: solar_system fk_galaxy_solar_system; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT fk_galaxy_solar_system FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

