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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric,
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
    radius_in_miles integer,
    description text,
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
    radius_in_miles integer,
    description text,
    star_id integer,
    has_life boolean
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
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric,
    description text,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halleys Comet', 'Halleys comet is the only known short period comet that is consistently visible to the naked eye from Earth appearing every 70-80 years');
INSERT INTO public.comet VALUES (2, 'Comet Hyakutake', 'Comet Hyakutake was one of the closest cometary approaches of the previous 200 years');
INSERT INTO public.comet VALUES (3, 'Comet McNaught', 'Also known as the great comet of 2007 was discovered in 2006 by British-Australian astronomer Robert H McNaught');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', true, 1001, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest majory galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (2, 'Black Eye Galaxy', true, 1328, 'The Black Eye Galaxy was discovered by Edward Pigott in March 1779, Johan Bode April 1779 and Charles Messier the following year');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', true, 1361, 'Our sun is located on one of the spiral arms, about 25,000 light-years away from the center of the galaxy');
INSERT INTO public.galaxy VALUES (4, 'Cartwheel Galaxy', false, 400, 'The Cartwheel Galaxy is a lenticular ring galaxy about 500 million light-years away in the constellation Sculptor');
INSERT INTO public.galaxy VALUES (5, 'Cigar Galaxy', false, 1330, 'Cigar Galaxy A.K.A. Messier 82, is a starburst galaxy approximately 12 million light-years away in the constellation Ursa Major');
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', false, 1275, 'Arthur Hoag discovered it in 1950 and identified it as either a planetary nebula or a peculiar galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1079, 'The Moon makes Earth a more livable planet by moderating its wobble on its axis, leading to a relatively stable climate', 1);
INSERT INTO public.moon VALUES (2, 'Callisto', 1497, 'Callisto is the third largest moon in our solar system and is as large as the planet Mercury', 4);
INSERT INTO public.moon VALUES (3, 'Ganymede', 1636, 'Ganymede is the largest moon in our Solar System and is bigger than Pluto and Mercury', 4);
INSERT INTO public.moon VALUES (4, 'Titan', 1600, 'Titan is Saturns largest moon and is the only known moon in our solar system that could potentially harbor life', 8);
INSERT INTO public.moon VALUES (5, 'Europa', 969, 'Europa is the smallest of the four Galilean moons orbiting Jupiter', 4);
INSERT INTO public.moon VALUES (6, 'IO', 1131, 'IO or Jupiter 1 is the innermost and 2nd smallest of the 4 Galilean moons', 4);
INSERT INTO public.moon VALUES (7, 'Hyperion', 83, 'Hyperion is the 8th largest moon of Saturn and was the first non-rounded moon to be discovered', 8);
INSERT INTO public.moon VALUES (8, 'Triton', 840, 'Triton is Neptunes largest moon and was discovered in 1846 by William Lassell', 9);
INSERT INTO public.moon VALUES (9, 'Charon', 376, 'Charon is the largest of the five known natural satellites to orbit the dwarf planet Pluto', 3);
INSERT INTO public.moon VALUES (10, 'Nix', 31, 'This moon was discovered May 15 2005 by astronomers using the Hubble Space Telescope', 3);
INSERT INTO public.moon VALUES (11, 'Ariel', 359, 'Ariel is the 4th largest moon of Uranus and was discovered in 1851 by William Lassell', 6);
INSERT INTO public.moon VALUES (12, 'Miranda', 146, 'Miranda is the smallest and innermost satellite of Uranus five round satellites', 6);
INSERT INTO public.moon VALUES (13, 'Oberon', 473, 'Oberon is the second largest and outermost moon of Uranus', 6);
INSERT INTO public.moon VALUES (14, 'Phobos', 7, 'There is not much info on this moon', 5);
INSERT INTO public.moon VALUES (15, 'Mimas', 123, 'Mimas is the smallest known astronomical body to be roughly rounded in shape due to its own gravity', 8);
INSERT INTO public.moon VALUES (16, 'Lapetus', 456, 'Lapetus is the 11th largest moon in our solar system and was discovered in 1671 by Giovanni Domenico Cassini', 8);
INSERT INTO public.moon VALUES (17, 'Enceladus', 156, 'This is the 6th largest moon of Saturn and the 19th largest in our solar system', 8);
INSERT INTO public.moon VALUES (18, 'Tethys', 329, 'This is the 5th largest moon of Saturn and was discovered by Giovanni Domenico Cassini in 1684', 8);
INSERT INTO public.moon VALUES (19, 'Hydra', 19, 'Hydra is Plutos outermost moon which orbits beyond kerberos', 3);
INSERT INTO public.moon VALUES (20, 'Hippocamp', 5, 'Hippocamp was discovered on July 1 2003 by astronomer Mike Showalter', 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 3958, 'Earth is the third planet from the sun and the only astronomical object know to harbor life', 6, true);
INSERT INTO public.planet VALUES (2, 'Mercury', 1516, 'Mercury is the first planet from the sun, named after the ancient Roman god Mercurius, messenger of the gods', 6, false);
INSERT INTO public.planet VALUES (3, 'Pluto', 738, 'Pluto is a dwarf planet in the Kuiper belt, its the 9th largest and 10th most massive known object to orbit the Sun', 6, false);
INSERT INTO public.planet VALUES (4, 'Jupiter', 43441, 'Jupiter is the fifht planet from the Sun and largest in the Solar System, being 2 1/2 times larger than all other planets combined', 6, false);
INSERT INTO public.planet VALUES (5, 'Mars', 2106, 'Mars is the 4th planet from the sun, and is called the red planet because it is covered in iron oxide dust', 6, false);
INSERT INTO public.planet VALUES (6, 'Uranus', 15759, 'Uranus is the 7th planet from the sun, known as the ice planet, made of water, ammonia and methane', 6, false);
INSERT INTO public.planet VALUES (7, 'Venus', 3760, 'Venus is the second planet from the Sun and is closest in mass and size to its neighbor earth', 6, false);
INSERT INTO public.planet VALUES (8, 'Saturn', 36184, 'Saturn is the 6th planet from the sun and second largest in the solar system after Jupiter', 6, false);
INSERT INTO public.planet VALUES (9, 'Neptune', 15299, 'Neptune is the 8th planet from the sun, the third most massive and the densest planet in our solar system', 6, false);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 5145, 'This planet is the closest exoplanet to Earth, discovered in 2016', 7, false);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri c', 8707, 'PC c is a candidate exoplanet that has a mass of about 7 times that of earth', 7, false);
INSERT INTO public.planet VALUES (12, 'Proxima Centauri d', 3205, 'This planet is one of the smallest and lightest exoplanets with 25% of the mass of earth', 7, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpheratz', 447, 'Alpheratz, also know as Alpha Adromeda, is the brightest star in the Andromeda constellation', 1);
INSERT INTO public.star VALUES (2, 'VY Canis Majoris', 8, 'This star is a red hyper giant and is about 1,420 times the width of the sun and is about 4-5,000 light years away from earth', 3);
INSERT INTO public.star VALUES (3, 'Mirach', 10, 'This star is about 200 light-years away from earth and is about 1,900 times brighter than our sun', 1);
INSERT INTO public.star VALUES (4, 'Antares', 11, 'Antares is the brightest star in the constellation of Scorpius and is often reffered to as the heart of the scorpion', 3);
INSERT INTO public.star VALUES (5, 'Sirius', 230, 'Sirius is the brightest star in the night sky and can be seen from almost all reguis of the earth', 3);
INSERT INTO public.star VALUES (6, 'Sun', 4500, 'Our sun is a yellow dwarf star and is about 93 million miles away from Earth', 3);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 4853, 'This star is 4.2465 light-years away from the Sun in the southern constellation of Centaurus', 3);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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

