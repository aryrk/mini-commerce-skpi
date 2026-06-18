--
-- PostgreSQL database dump
--

\restrict ioGanj5Rhil9dEgr9SjfAmMpu7Dt99AthlD6P80Sqs7QfYAkTuUQfJu1OZh44Cq

-- Dumped from database version 15.18
-- Dumped by pg_dump version 15.18

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
-- Name: order_items; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.order_items (
    id uuid NOT NULL,
    product_id uuid NOT NULL,
    product_name character varying(255) NOT NULL,
    product_price numeric(38,2) NOT NULL,
    quantity integer NOT NULL,
    order_id uuid NOT NULL,
    CONSTRAINT order_items_product_price_check CHECK ((product_price >= (1)::numeric)),
    CONSTRAINT order_items_quantity_check CHECK ((quantity >= 1))
);


ALTER TABLE public.order_items OWNER TO "user";

--
-- Name: orders; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.orders (
    id uuid NOT NULL,
    customer_email character varying(255) NOT NULL,
    customer_name character varying(255) NOT NULL,
    status smallint NOT NULL,
    total_amount numeric(38,2) NOT NULL,
    CONSTRAINT orders_status_check CHECK (((status >= 0) AND (status <= 2)))
);


ALTER TABLE public.orders OWNER TO "user";

--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.order_items (id, product_id, product_name, product_price, quantity, order_id) FROM stdin;
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.orders (id, customer_email, customer_name, status, total_amount) FROM stdin;
\.


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: order_items fkbioxgbv59vetrxe0ejfubep1w; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT fkbioxgbv59vetrxe0ejfubep1w FOREIGN KEY (order_id) REFERENCES public.orders(id);


--
-- PostgreSQL database dump complete
--

\unrestrict ioGanj5Rhil9dEgr9SjfAmMpu7Dt99AthlD6P80Sqs7QfYAkTuUQfJu1OZh44Cq

