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
-- Name: comp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comp (
    comp_id integer NOT NULL,
    ping integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public.comp OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    distance_from_earth integer,
    has_life integer,
    age numeric,
    description text,
    is_spherical boolean,
    ping integer,
    ping_2 integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    has_life integer,
    distance_from_earth integer,
    age numeric,
    description text,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    has_life integer,
    distance_from_earth integer,
    age numeric,
    description text,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    has_life integer,
    distance_from_earth integer,
    age numeric,
    description text,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: comp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comp VALUES (1, 1, 'one');
INSERT INTO public.comp VALUES (2, 2, 'two');
INSERT INTO public.comp VALUES (3, 3, 'three');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (7, 'galaxy one', 25000, 10000, 6500.32, 'Number One', true, NULL, 1);
INSERT INTO public.galaxy VALUES (1, 'Onee', 6300, 563, 2300, 'Onee', true, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'Two', 5600, 6932, 1452, 'Two', false, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'Three', 41200, 5632, 45879, 'Three', true, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'Four', 2300, 45630, 650, 'Four', false, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'Five', 63000, 2300, 450, 'Five', true, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'six', 4500, 6530, 63, 'six', true, NULL, 6);
INSERT INTO public.galaxy VALUES (8, 'eight', 450, 6300, 452, 'eight', false, NULL, 8);
INSERT INTO public.galaxy VALUES (9, 'nine', 880, 950, 65, 'nine', true, NULL, 9);
INSERT INTO public.galaxy VALUES (10, 'ten', 770, 850, 320, 'ten', true, NULL, 10);
INSERT INTO public.galaxy VALUES (11, 'eleven', 440, 450, 23, 'eleven', true, NULL, 11);
INSERT INTO public.galaxy VALUES (12, 'twelve', 87, 455, 665, 'twelve', false, NULL, 12);
INSERT INTO public.galaxy VALUES (13, 'thirteen', 875, 455, 200, 'thirteen', false, NULL, 13);
INSERT INTO public.galaxy VALUES (14, 'fourteen', 9000, 8500, 6500, 'fourteen', true, NULL, 14);
INSERT INTO public.galaxy VALUES (15, 'fifteen', 450, 130, 19, 'fifteen', false, NULL, 15);
INSERT INTO public.galaxy VALUES (16, 'sixteen', 8900, 560, 23, 'sixteen', true, NULL, 16);
INSERT INTO public.galaxy VALUES (17, 'seventeen', 9100, 350, 4800, 'seventeen', true, NULL, 17);
INSERT INTO public.galaxy VALUES (18, 'eighteen', 9700, 56, 54, 'eighteen', false, NULL, 18);
INSERT INTO public.galaxy VALUES (19, 'nineteen', 560, 452, 632, 'nineteen', true, NULL, 19);
INSERT INTO public.galaxy VALUES (20, 'twenty', 850, 9600, 1200, 'twenty', false, NULL, 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 7800, 450, 320, 'one', true, 1);
INSERT INTO public.moon VALUES (2, 'two', 880, 960, 520, 'two', false, 2);
INSERT INTO public.moon VALUES (3, 'three', 85, 220, 550, 'three', true, 3);
INSERT INTO public.moon VALUES (4, 'four', 885, 750, 380, 'four', true, 4);
INSERT INTO public.moon VALUES (5, 'five', 690, 275, 63, 'five', false, 5);
INSERT INTO public.moon VALUES (6, 'six', 450, 56, 57, 'six', true, 6);
INSERT INTO public.moon VALUES (7, 'seven', 8500, 56, 23, 'seven', false, 7);
INSERT INTO public.moon VALUES (8, 'eight', 4500, 2500, 6850, 'eight', true, 8);
INSERT INTO public.moon VALUES (9, 'nine', 850, 256, 320, 'nine', false, 9);
INSERT INTO public.moon VALUES (10, 'ten', 520, 152, 980, 'ten', true, 10);
INSERT INTO public.moon VALUES (11, 'eleven', 450, 258, 750, 'eleven', false, 11);
INSERT INTO public.moon VALUES (12, 'twelve', 850, 47, 73, 'twelve', true, 12);
INSERT INTO public.moon VALUES (13, 'thirteen', 750, 2530, 4560, 'thirteen', true, 13);
INSERT INTO public.moon VALUES (14, 'fourteen', 560, 280, 91, 'fourteen', false, 14);
INSERT INTO public.moon VALUES (15, 'fifteen', 8800, 75, 25, 'fifteen', false, 15);
INSERT INTO public.moon VALUES (16, 'sixteen', 190, 280, 350, 'sixteen', true, 16);
INSERT INTO public.moon VALUES (17, 'seventeen', 4500, 32, 27, 'seventeen', true, 17);
INSERT INTO public.moon VALUES (18, 'eighteen', 870, 9600, 2500, 'eighteen', false, 18);
INSERT INTO public.moon VALUES (19, 'nineteen', 65, 85, 750, 'nineteen', false, 19);
INSERT INTO public.moon VALUES (20, 'twenty', 850, 560, 25, 'twenty', true, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet one', 880, 89, 785, 'one', true, 1);
INSERT INTO public.planet VALUES (2, 'planet two', 975, 65, 699, 'two', false, 2);
INSERT INTO public.planet VALUES (3, 'planet three', 650, 45, 633, 'three', false, 3);
INSERT INTO public.planet VALUES (4, 'planet four', 320, 12, 225, 'four', true, 4);
INSERT INTO public.planet VALUES (5, 'planet five', 550, 56, 996, 'five', true, 5);
INSERT INTO public.planet VALUES (7, 'planet onee', 7800, 560, 9963, 'onee', false, 7);
INSERT INTO public.planet VALUES (6, 'six', 450, 6500, 230, 'six', true, 6);
INSERT INTO public.planet VALUES (8, 'eight', 8800, 950, 660, 'eight', false, 8);
INSERT INTO public.planet VALUES (9, 'nine', 870, 99, 653, 'nine', true, 9);
INSERT INTO public.planet VALUES (10, 'ten', 120, 23, 380, 'ten', false, 10);
INSERT INTO public.planet VALUES (11, 'eleven', 5900, 3720, 180, 'eleven', false, 11);
INSERT INTO public.planet VALUES (12, 'twelve', 75, 6500, 2100, 'twelve', true, 12);
INSERT INTO public.planet VALUES (13, 'thirteen', 4500, 6520, 125, 'thirteen', false, 13);
INSERT INTO public.planet VALUES (14, 'fourteen', 450, 680, 30, 'fourteen', true, 14);
INSERT INTO public.planet VALUES (15, 'fifteen', 850, 9500, 7500, 'fifteen', false, 15);
INSERT INTO public.planet VALUES (16, 'sixteen', 480, 6400, 7830, 'sixteen', false, 16);
INSERT INTO public.planet VALUES (17, 'seventeen', 7800, 45, 23, 'seventeen', true, 17);
INSERT INTO public.planet VALUES (18, 'eighteen', 456, 325, 985, 'eighteen', true, 18);
INSERT INTO public.planet VALUES (19, 'nineteen', 780, 6800, 4523, 'nineteen', true, 19);
INSERT INTO public.planet VALUES (20, 'twenty', 785, 6530, 9800, 'twenty', false, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star One', 2300, 450, 6500, 'One', true, 1);
INSERT INTO public.star VALUES (2, 'Star Two', 6300, 230, 750, 'Two', false, 2);
INSERT INTO public.star VALUES (3, 'Star Three', 4500, 65000, 3654, 'Three', false, 3);
INSERT INTO public.star VALUES (4, 'Star Four', 5600, 6532, 213, 'Four', true, 4);
INSERT INTO public.star VALUES (5, 'star five', 9000, 8500, 8745, 'five', true, 5);
INSERT INTO public.star VALUES (7, 'star onee', 8700, 896, 365, 'onee', false, 7);
INSERT INTO public.star VALUES (6, 'six', 450, 2300, 220, 'six', true, 6);
INSERT INTO public.star VALUES (8, 'eight', 5600, 580, 750, 'eight', false, 8);
INSERT INTO public.star VALUES (9, 'nine', 562, 2300, 451, 'nine', true, 9);
INSERT INTO public.star VALUES (10, 'ten', 8900, 6500, 7800, 'ten', false, 10);
INSERT INTO public.star VALUES (11, 'eleven', 7800, 5600, 23, 'eleven', false, 11);
INSERT INTO public.star VALUES (12, 'twelve', 56, 450, 230, 'twelve', false, 12);
INSERT INTO public.star VALUES (13, 'thirteen', 8500, 650, 325, 'thirteen', true, 13);
INSERT INTO public.star VALUES (14, 'fourteen', 4500, 6321, 7800, 'fourteen', true, 14);
INSERT INTO public.star VALUES (15, 'fifteen', 450, 652, 327, 'fifteen', false, 15);
INSERT INTO public.star VALUES (16, 'sixteen', 45, 698, 7800, 'sixteen', true, 16);
INSERT INTO public.star VALUES (17, 'seventeen', 880, 9000, 450, 'seventeen', false, 17);
INSERT INTO public.star VALUES (18, 'eighteen', 7500, 550, 120, 'eighteen', true, 18);
INSERT INTO public.star VALUES (19, 'nineteen', 560, 650, 300, 'nineteen', false, 19);
INSERT INTO public.star VALUES (20, 'twenty', 8500, 6300, 1200, 'twenty', true, 20);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 7, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 1, false);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 1, false);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 1, false);


--
-- Name: comp comp_comp_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_comp_id_key UNIQUE (comp_id);


--
-- Name: comp comp_ping_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_ping_key UNIQUE (ping);


--
-- Name: comp comp_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comp
    ADD CONSTRAINT comp_pkey PRIMARY KEY (comp_id);


--
-- Name: galaxy galaxy_ping_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_ping_key UNIQUE (ping);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


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

