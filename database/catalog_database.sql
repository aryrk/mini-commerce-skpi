--
-- PostgreSQL database dump
--

\restrict QK66Jf78rFWOIx0zx1pim4cnG1qfd8SKXzaEUv6lNaAK4XTRjU34VvUxmHga831

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
-- Name: products; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.products (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    sku character varying(255) NOT NULL,
    status smallint NOT NULL,
    stock integer NOT NULL,
    CONSTRAINT products_price_check CHECK ((price >= (1)::numeric)),
    CONSTRAINT products_status_check CHECK (((status >= 0) AND (status <= 1))),
    CONSTRAINT products_stock_check CHECK ((stock >= 0))
);


ALTER TABLE public.products OWNER TO "user";

--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.products (id, name, price, sku, status, stock) FROM stdin;
\.


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products ukfhmd06dsmj6k0n90swsh8ie9g; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT ukfhmd06dsmj6k0n90swsh8ie9g UNIQUE (sku);


--
-- PostgreSQL database dump complete
--

\unrestrict QK66Jf78rFWOIx0zx1pim4cnG1qfd8SKXzaEUv6lNaAK4XTRjU34VvUxmHga831

