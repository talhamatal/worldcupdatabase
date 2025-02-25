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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (21, 2018, 'Final', 527, 528, 4, 2);
INSERT INTO public.games VALUES (22, 2018, 'Third Place', 529, 530, 2, 0);
INSERT INTO public.games VALUES (23, 2018, 'Semi-Final', 528, 530, 2, 1);
INSERT INTO public.games VALUES (24, 2018, 'Semi-Final', 527, 529, 1, 0);
INSERT INTO public.games VALUES (25, 2018, 'Quarter-Final', 528, 531, 3, 2);
INSERT INTO public.games VALUES (26, 2018, 'Quarter-Final', 530, 532, 2, 0);
INSERT INTO public.games VALUES (27, 2018, 'Quarter-Final', 529, 533, 2, 1);
INSERT INTO public.games VALUES (28, 2018, 'Quarter-Final', 527, 534, 2, 0);
INSERT INTO public.games VALUES (29, 2018, 'Eighth-Final', 530, 535, 2, 1);
INSERT INTO public.games VALUES (30, 2018, 'Eighth-Final', 532, 536, 1, 0);
INSERT INTO public.games VALUES (31, 2018, 'Eighth-Final', 529, 537, 3, 2);
INSERT INTO public.games VALUES (32, 2018, 'Eighth-Final', 533, 538, 2, 0);
INSERT INTO public.games VALUES (33, 2018, 'Eighth-Final', 528, 539, 2, 1);
INSERT INTO public.games VALUES (34, 2018, 'Eighth-Final', 531, 540, 2, 1);
INSERT INTO public.games VALUES (35, 2018, 'Eighth-Final', 534, 541, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Eighth-Final', 527, 542, 4, 3);
INSERT INTO public.games VALUES (37, 2014, 'Final', 543, 542, 1, 0);
INSERT INTO public.games VALUES (38, 2014, 'Third Place', 544, 533, 3, 0);
INSERT INTO public.games VALUES (39, 2014, 'Semi-Final', 542, 544, 1, 0);
INSERT INTO public.games VALUES (40, 2014, 'Semi-Final', 543, 533, 7, 1);
INSERT INTO public.games VALUES (41, 2014, 'Quarter-Final', 544, 545, 1, 0);
INSERT INTO public.games VALUES (42, 2014, 'Quarter-Final', 542, 529, 1, 0);
INSERT INTO public.games VALUES (43, 2014, 'Quarter-Final', 533, 535, 2, 1);
INSERT INTO public.games VALUES (44, 2014, 'Quarter-Final', 543, 527, 1, 0);
INSERT INTO public.games VALUES (45, 2014, 'Eighth-Final', 533, 546, 2, 1);
INSERT INTO public.games VALUES (46, 2014, 'Eighth-Final', 535, 534, 2, 0);
INSERT INTO public.games VALUES (47, 2014, 'Eighth-Final', 527, 547, 2, 0);
INSERT INTO public.games VALUES (48, 2014, 'Eighth-Final', 543, 548, 2, 1);
INSERT INTO public.games VALUES (49, 2014, 'Eighth-Final', 544, 538, 2, 1);
INSERT INTO public.games VALUES (50, 2014, 'Eighth-Final', 545, 549, 2, 1);
INSERT INTO public.games VALUES (51, 2014, 'Eighth-Final', 542, 536, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Eighth-Final', 529, 550, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (527, 'France');
INSERT INTO public.teams VALUES (528, 'Croatia');
INSERT INTO public.teams VALUES (529, 'Belgium');
INSERT INTO public.teams VALUES (530, 'England');
INSERT INTO public.teams VALUES (531, 'Russia');
INSERT INTO public.teams VALUES (532, 'Sweden');
INSERT INTO public.teams VALUES (533, 'Brazil');
INSERT INTO public.teams VALUES (534, 'Uruguay');
INSERT INTO public.teams VALUES (535, 'Colombia');
INSERT INTO public.teams VALUES (536, 'Switzerland');
INSERT INTO public.teams VALUES (537, 'Japan');
INSERT INTO public.teams VALUES (538, 'Mexico');
INSERT INTO public.teams VALUES (539, 'Denmark');
INSERT INTO public.teams VALUES (540, 'Spain');
INSERT INTO public.teams VALUES (541, 'Portugal');
INSERT INTO public.teams VALUES (542, 'Argentina');
INSERT INTO public.teams VALUES (543, 'Germany');
INSERT INTO public.teams VALUES (544, 'Netherlands');
INSERT INTO public.teams VALUES (545, 'Costa Rica');
INSERT INTO public.teams VALUES (546, 'Chile');
INSERT INTO public.teams VALUES (547, 'Nigeria');
INSERT INTO public.teams VALUES (548, 'Algeria');
INSERT INTO public.teams VALUES (549, 'Greece');
INSERT INTO public.teams VALUES (550, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 550, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

