

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body) VALUES ('f97df810-f0d1-4bb5-a88b-fb5c642fd24c', 'p1', 'Here is my first post, yay!');
INSERT INTO public.posts (id, title, body) VALUES ('9a9ef357-54e1-4704-a041-22641e236dc8', 'fdasfdsa', 'fdsfsafd');
INSERT INTO public.posts (id, title, body) VALUES ('1ed9693c-776e-4592-b860-c42c68a1cb5c', 'post1', 'body of post1');
INSERT INTO public.posts (id, title, body) VALUES ('4d032f79-0f91-4eca-857b-79c60f7ff08b', 'post2', 'body of post2');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


