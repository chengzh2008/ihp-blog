

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



ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('8a9461aa-5600-4e30-b6bb-93b1fcd38b37', '144c3c32-ca4e-479e-89e0-84b274cbb804', 'author3', 'Here is the comment', '2021-09-19 11:21:53.046901-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('28cdbcf0-d414-4306-b1df-29d1907940bf', '144c3c32-ca4e-479e-89e0-84b274cbb804', 'fdsafds', 'fdsafsaf', '2021-09-19 11:21:53.047536-07');
INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('125c6661-65aa-475f-8429-1a69a0d0d747', 'b3b22ffa-283c-4af2-876a-8e6ed421ee93', 'zhihong', 'Really?!', '2021-09-19 20:37:57.750607-07');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


