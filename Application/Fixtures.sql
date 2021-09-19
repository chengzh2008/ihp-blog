

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

INSERT INTO public.posts (id, title, body, created_at) VALUES ('f97df810-f0d1-4bb5-a88b-fb5c642fd24c', 'p1', 'Here is my first post, yay!', '2021-09-19 10:24:45.59364-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('9a9ef357-54e1-4704-a041-22641e236dc8', 'fdasfdsa', 'fdsfsafd', '2021-09-19 10:24:45.594334-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('1ed9693c-776e-4592-b860-c42c68a1cb5c', 'post1', 'body of post1', '2021-09-19 10:24:45.594495-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('4d032f79-0f91-4eca-857b-79c60f7ff08b', 'post2', '# post title \n ## post subtitle ', '2021-09-19 10:24:45.594629-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('87eaf755-ba23-4b1f-aea8-014e44e16ef5', 'post 112', '# ABC
## subtitle 

| table | col1 | col2
|:----:|:-----:|:------:|
|x|y|z|
|a|b|c|', '2021-09-19 10:47:54.687075-07');
INSERT INTO public.posts (id, title, body, created_at) VALUES ('144c3c32-ca4e-479e-89e0-84b274cbb804', 'fdsfdsa', '', '2021-09-19 10:48:29.981001-07');


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('8a9461aa-5600-4e30-b6bb-93b1fcd38b37', '144c3c32-ca4e-479e-89e0-84b274cbb804', 'author3', 'Here is the comment', '2021-09-19 11:21:53.046901-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('28cdbcf0-d414-4306-b1df-29d1907940bf', '144c3c32-ca4e-479e-89e0-84b274cbb804', 'fdsafds', 'fdsafsaf', '2021-09-19 11:21:53.047536-07');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


