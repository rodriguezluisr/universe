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
    name character varying(30) NOT NULL,
    age integer,
    distance numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    diameter integer,
    distance numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    diameter integer,
    distance numeric,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    type character varying NOT NULL,
    descoverment date,
    name character varying(30)
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 52, 15256.21, 'far');
INSERT INTO public.galaxy VALUES (2, 'venus', 68, 155256.21, 'more far');
INSERT INTO public.galaxy VALUES (3, 'coma berenices', 25, 124856.69, NULL);
INSERT INTO public.galaxy VALUES (4, 'draco', 85, 149586.25, NULL);
INSERT INTO public.galaxy VALUES (5, 'virgo', 55, 1124856.69, NULL);
INSERT INTO public.galaxy VALUES (6, 'Dwingeloo', 555, 145149586.25, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'tetis', 14, 905, 124583.65, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 52, 654, 12475.25, 2);
INSERT INTO public.moon VALUES (3, 'Calisto', 85, 124, 3256.24, 3);
INSERT INTO public.moon VALUES (4, 'Pikachu', 2, 54, 1475.25, 4);
INSERT INTO public.moon VALUES (5, 'Kongo', 185, 1124, 123256.24, 5);
INSERT INTO public.moon VALUES (6, 'gorillaz', 212, 657, 12458.65, 6);
INSERT INTO public.moon VALUES (7, 'minogue', 124, 6932, 1242.32, 7);
INSERT INTO public.moon VALUES (8, 'kakatua', 65, 6953, 124889.36, 8);
INSERT INTO public.moon VALUES (9, 'portillo', 695, 789, 1245896.65, 9);
INSERT INTO public.moon VALUES (10, 'niselan', 963, 985, 69586.2, 10);
INSERT INTO public.moon VALUES (11, 'urraca', 93256, 785, 69858787.9, 11);
INSERT INTO public.moon VALUES (12, 'Periko', 42, 154, 891475.25, 12);
INSERT INTO public.moon VALUES (13, 'palafito', 885, 11124, 1245896.65, 1);
INSERT INTO public.moon VALUES (14, 'morticia', 1963, 95, 9586.2, 2);
INSERT INTO public.moon VALUES (15, 'arca', 256, 75, 858787.9, 3);
INSERT INTO public.moon VALUES (16, 'pancreas', 2, 54, 8475.25, 12);
INSERT INTO public.moon VALUES (17, 'fito', 85, 124, 15896.65, 4);
INSERT INTO public.moon VALUES (18, 'mort', 963, 5, 986.2, 5);
INSERT INTO public.moon VALUES (19, 'kosiuko', 56, 775, 58787.9, 6);
INSERT INTO public.moon VALUES (20, 'pancreatitis', 4582, 54654, 458968475.25, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'teegarden', 85, 9500, 25685.23, true, false, 1);
INSERT INTO public.planet VALUES (2, 'K2-72 e', 965, 1425, 256325874.23, true, true, 2);
INSERT INTO public.planet VALUES (3, 'GJ 3323 b', 63, 9641, 256985.25, false, false, 3);
INSERT INTO public.planet VALUES (4, 'KOI-775.03', 65, 41425, 56325874.23, false, true, 4);
INSERT INTO public.planet VALUES (5, 'Marte', 2223, 641, 25446985.25, false, true, 5);
INSERT INTO public.planet VALUES (6, 'Venus', 41, 896, 14258.65, false, false, 6);
INSERT INTO public.planet VALUES (7, 'jupiter', 465, 4425, 5674.23, true, false, 1);
INSERT INTO public.planet VALUES (8, 'Zauron', 23, 4641, 285.25, false, false, 2);
INSERT INTO public.planet VALUES (9, 'Tamisia', 441, 1896, 1124258.65, true, true, 3);
INSERT INTO public.planet VALUES (10, 'potaxie', 655, 41425, 5625674.23, true, false, 4);
INSERT INTO public.planet VALUES (11, 'Patricia', 423, 441, 214585.25, true, false, 5);
INSERT INTO public.planet VALUES (12, 'Totis', 4541, 114896, 158.65, true, true, 6);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'gaseous', NULL, NULL);
INSERT INTO public.planet_types VALUES (2, 'water', NULL, NULL);
INSERT INTO public.planet_types VALUES (3, 'earth', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'armagedon', 25, 15156.21, 1);
INSERT INTO public.star VALUES (2, 'alkarab', 41, 2125685.25, 2);
INSERT INTO public.star VALUES (3, 'almach', 52, 1424758.23, 3);
INSERT INTO public.star VALUES (4, 'Dziban', 441, 125685.25, 4);
INSERT INTO public.star VALUES (5, 'Intercrus', 152, 14758.23, 5);
INSERT INTO public.star VALUES (6, 'Mizar', 256, 121458.32, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy id_galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon id_plamoon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_plamoon_unique UNIQUE (moon_id);


--
-- Name: planet id_planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_planet_unique UNIQUE (planet_id);


--
-- Name: planet_types id_ptype_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT id_ptype_unique UNIQUE (planet_types_id);


--
-- Name: star id_star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id_star_unique UNIQUE (star_id);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

