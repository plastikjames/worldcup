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
    round character varying(20) NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (43, 2018, 'Final', 351, 352, 4, 2);
INSERT INTO public.games VALUES (44, 2018, 'Third Place', 353, 354, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Semi-Final', 352, 354, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Semi-Final', 351, 353, 1, 0);
INSERT INTO public.games VALUES (47, 2018, 'Quarter-Final', 352, 355, 3, 2);
INSERT INTO public.games VALUES (48, 2018, 'Quarter-Final', 354, 356, 2, 0);
INSERT INTO public.games VALUES (49, 2018, 'Quarter-Final', 353, 357, 2, 1);
INSERT INTO public.games VALUES (50, 2018, 'Quarter-Final', 351, 358, 2, 0);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 354, 359, 2, 1);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 356, 360, 1, 0);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 353, 361, 3, 2);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 357, 362, 2, 0);
INSERT INTO public.games VALUES (55, 2018, 'Eighth-Final', 352, 363, 2, 1);
INSERT INTO public.games VALUES (56, 2018, 'Eighth-Final', 355, 364, 2, 1);
INSERT INTO public.games VALUES (57, 2018, 'Eighth-Final', 358, 365, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Eighth-Final', 351, 366, 4, 3);
INSERT INTO public.games VALUES (59, 2014, 'Final', 367, 366, 1, 0);
INSERT INTO public.games VALUES (60, 2014, 'Third Place', 368, 357, 3, 0);
INSERT INTO public.games VALUES (61, 2014, 'Semi-Final', 366, 368, 1, 0);
INSERT INTO public.games VALUES (62, 2014, 'Semi-Final', 367, 357, 7, 1);
INSERT INTO public.games VALUES (63, 2014, 'Quarter-Final', 368, 369, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Quarter-Final', 366, 353, 1, 0);
INSERT INTO public.games VALUES (65, 2014, 'Quarter-Final', 357, 359, 2, 1);
INSERT INTO public.games VALUES (66, 2014, 'Quarter-Final', 367, 351, 1, 0);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 357, 370, 2, 1);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 359, 358, 2, 0);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 351, 371, 2, 0);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 367, 372, 2, 1);
INSERT INTO public.games VALUES (71, 2014, 'Eighth-Final', 368, 362, 2, 1);
INSERT INTO public.games VALUES (72, 2014, 'Eighth-Final', 369, 373, 2, 1);
INSERT INTO public.games VALUES (73, 2014, 'Eighth-Final', 366, 360, 1, 0);
INSERT INTO public.games VALUES (74, 2014, 'Eighth-Final', 353, 374, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (351, 'France');
INSERT INTO public.teams VALUES (352, 'Croatia');
INSERT INTO public.teams VALUES (353, 'Belgium');
INSERT INTO public.teams VALUES (354, 'England');
INSERT INTO public.teams VALUES (355, 'Russia');
INSERT INTO public.teams VALUES (356, 'Sweden');
INSERT INTO public.teams VALUES (357, 'Brazil');
INSERT INTO public.teams VALUES (358, 'Uruguay');
INSERT INTO public.teams VALUES (359, 'Colombia');
INSERT INTO public.teams VALUES (360, 'Switzerland');
INSERT INTO public.teams VALUES (361, 'Japan');
INSERT INTO public.teams VALUES (362, 'Mexico');
INSERT INTO public.teams VALUES (363, 'Denmark');
INSERT INTO public.teams VALUES (364, 'Spain');
INSERT INTO public.teams VALUES (365, 'Portugal');
INSERT INTO public.teams VALUES (366, 'Argentina');
INSERT INTO public.teams VALUES (367, 'Germany');
INSERT INTO public.teams VALUES (368, 'Netherlands');
INSERT INTO public.teams VALUES (369, 'Costa Rica');
INSERT INTO public.teams VALUES (370, 'Chile');
INSERT INTO public.teams VALUES (371, 'Nigeria');
INSERT INTO public.teams VALUES (372, 'Algeria');
INSERT INTO public.teams VALUES (373, 'Greece');
INSERT INTO public.teams VALUES (374, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 74, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 374, true);


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

