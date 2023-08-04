--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

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
-- Name: account; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.account (
    idaccount integer NOT NULL,
    idpeople integer,
    token character(1000) NOT NULL,
    role character varying(200) NOT NULL,
    avatar text,
    password character varying(200) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);


ALTER TABLE public.account OWNER TO dbadmin;

--
-- Name: account_idaccount_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.account_idaccount_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_idaccount_seq OWNER TO dbadmin;

--
-- Name: account_idaccount_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.account_idaccount_seq OWNED BY public.account.idaccount;


--
-- Name: accountstatus; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.accountstatus (
    idaccountstatus integer NOT NULL,
    idaccount integer,
    status character varying(200) NOT NULL
);


ALTER TABLE public.accountstatus OWNER TO dbadmin;

--
-- Name: accountstatus_idaccountstatus_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.accountstatus_idaccountstatus_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accountstatus_idaccountstatus_seq OWNER TO dbadmin;

--
-- Name: accountstatus_idaccountstatus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.accountstatus_idaccountstatus_seq OWNED BY public.accountstatus.idaccountstatus;


--
-- Name: companyltde; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.companyltde (
    idcompanyltde integer NOT NULL,
    idpeople integer,
    crn character varying(50) NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);


ALTER TABLE public.companyltde OWNER TO dbadmin;

--
-- Name: companyltde_idcompanyltde_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.companyltde_idcompanyltde_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.companyltde_idcompanyltde_seq OWNER TO dbadmin;

--
-- Name: companyltde_idcompanyltde_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.companyltde_idcompanyltde_seq OWNED BY public.companyltde.idcompanyltde;


--
-- Name: courrier; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.courrier (
    idcourrier integer NOT NULL,
    idpeople integer,
    documents character varying,
    vehicletype character varying(255),
    vehiclecurrent character varying(100),
    vehicles character varying(255),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.courrier OWNER TO dbadmin;

--
-- Name: courrier_idcourrier_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.courrier_idcourrier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courrier_idcourrier_seq OWNER TO dbadmin;

--
-- Name: courrier_idcourrier_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.courrier_idcourrier_seq OWNED BY public.courrier.idcourrier;


--
-- Name: deliver; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.deliver (
    iddeliver integer NOT NULL,
    idpeople integer,
    documents character varying,
    vehicletype character varying(100),
    created_at timestamp without time zone DEFAULT now(),
    fleet_id text,
    updated_at timestamp without time zone
);


ALTER TABLE public.deliver OWNER TO dbadmin;

--
-- Name: deliver_iddeliver_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.deliver_iddeliver_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deliver_iddeliver_seq OWNER TO dbadmin;

--
-- Name: deliver_iddeliver_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.deliver_iddeliver_seq OWNED BY public.deliver.iddeliver;


--
-- Name: location; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.location (
    idaddress integer NOT NULL,
    idpeople integer,
    address character varying(100) NOT NULL,
    flat character varying(10) NOT NULL,
    number character varying(10) NOT NULL,
    countrycode character varying(20) NOT NULL,
    country character varying(20) NOT NULL,
    city character varying(100) NOT NULL,
    postcode character varying(20) NOT NULL,
    latitude double precision NOT NULL,
    longitude double precision NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);


ALTER TABLE public.location OWNER TO dbadmin;

--
-- Name: location_idaddress_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.location_idaddress_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.location_idaddress_seq OWNER TO dbadmin;

--
-- Name: location_idaddress_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.location_idaddress_seq OWNED BY public.location.idaddress;


--
-- Name: memberpersonaldetailschecklist; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.memberpersonaldetailschecklist (
    idmemberpdc integer NOT NULL,
    idpeople integer,
    list text NOT NULL
);


ALTER TABLE public.memberpersonaldetailschecklist OWNER TO dbadmin;

--
-- Name: memberpersonaldetailschecklist_idmemberpdc_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.memberpersonaldetailschecklist_idmemberpdc_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.memberpersonaldetailschecklist_idmemberpdc_seq OWNER TO dbadmin;

--
-- Name: memberpersonaldetailschecklist_idmemberpdc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.memberpersonaldetailschecklist_idmemberpdc_seq OWNED BY public.memberpersonaldetailschecklist.idmemberpdc;


--
-- Name: people; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.people (
    idpeople integer NOT NULL,
    name character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    email character varying(200) NOT NULL,
    mobilenumber character varying(30),
    countrydialcode character varying(10),
    phonenumber character varying(30),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);


ALTER TABLE public.people OWNER TO dbadmin;

--
-- Name: people_idpeople_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.people_idpeople_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.people_idpeople_seq OWNER TO dbadmin;

--
-- Name: people_idpeople_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.people_idpeople_seq OWNED BY public.people.idpeople;


--
-- Name: soletrader; Type: TABLE; Schema: public; Owner: dbadmin
--

CREATE TABLE public.soletrader (
    idsoletrader integer NOT NULL,
    idpeople integer,
    utr character varying(100),
    surname character varying(200) NOT NULL,
    dtaborn character varying(20) NOT NULL,
    sharedcode character varying(100),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone
);


ALTER TABLE public.soletrader OWNER TO dbadmin;

--
-- Name: soletrader_idsoletrader_seq; Type: SEQUENCE; Schema: public; Owner: dbadmin
--

CREATE SEQUENCE public.soletrader_idsoletrader_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.soletrader_idsoletrader_seq OWNER TO dbadmin;

--
-- Name: soletrader_idsoletrader_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbadmin
--

ALTER SEQUENCE public.soletrader_idsoletrader_seq OWNED BY public.soletrader.idsoletrader;


--
-- Name: account idaccount; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.account ALTER COLUMN idaccount SET DEFAULT nextval('public.account_idaccount_seq'::regclass);


--
-- Name: accountstatus idaccountstatus; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.accountstatus ALTER COLUMN idaccountstatus SET DEFAULT nextval('public.accountstatus_idaccountstatus_seq'::regclass);


--
-- Name: companyltde idcompanyltde; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.companyltde ALTER COLUMN idcompanyltde SET DEFAULT nextval('public.companyltde_idcompanyltde_seq'::regclass);


--
-- Name: courrier idcourrier; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.courrier ALTER COLUMN idcourrier SET DEFAULT nextval('public.courrier_idcourrier_seq'::regclass);


--
-- Name: deliver iddeliver; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.deliver ALTER COLUMN iddeliver SET DEFAULT nextval('public.deliver_iddeliver_seq'::regclass);


--
-- Name: location idaddress; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.location ALTER COLUMN idaddress SET DEFAULT nextval('public.location_idaddress_seq'::regclass);


--
-- Name: memberpersonaldetailschecklist idmemberpdc; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.memberpersonaldetailschecklist ALTER COLUMN idmemberpdc SET DEFAULT nextval('public.memberpersonaldetailschecklist_idmemberpdc_seq'::regclass);


--
-- Name: people idpeople; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.people ALTER COLUMN idpeople SET DEFAULT nextval('public.people_idpeople_seq'::regclass);


--
-- Name: soletrader idsoletrader; Type: DEFAULT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.soletrader ALTER COLUMN idsoletrader SET DEFAULT nextval('public.soletrader_idsoletrader_seq'::regclass);


--
-- Data for Name: account; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.account (idaccount, idpeople, token, role, avatar, password, created_at, updated_at) FROM stdin;
212	267	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2ODI0NTE4MDh9.VkXMNIrEdEUPWidnnLVP62ugc4BM1CTbCGMrvhxdkmg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               	customer		$2b$12$cAQaee3KQXAbTY85eE1W8e/m7IUsJb4f0Ei5DaXlwex22uUKeFNgq	2023-04-25 19:43:28.78645	\N
213	268	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2ODI0NTMxOTV9.JAF8xMrI44XnP-aaZGoeBenbk4PaB2fPmAZDSw6pMl8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               	prospect		$2b$12$56yipi3AD9JaML6UBJKI..jNLXqFhOvq/fbwI0vbEVLfPytx47nvi	2023-04-25 20:06:35.966191	\N
215	297	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGFjY291bnQiOiI4M2ZlY2Q1ZDg4NmQyZmNkYmYyZmFiMzgiLCJpZHBlb3BsZSI6ImFueV9pZCIsInRlc3QiOiJDbGVyaXN0b24iLCJyb2xlIjoiY29zdHVtZSIsIm5hbWUiOiJTdGVsbGEiLCJlbWFpbCI6IldpbGxhcmQuRWZmZXJ0ejQxQHlhaG9vLmNvbSIsImlhdCI6MTY4OTA5ODMwMH0.dPztm-RdMmOPxCLV7XD4jgYczTkL1WHryl_wAHTBS_U                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	string	\N	$2b$12$jPVL4w3tZr/Gomp4bupCB.JdvM5Rpj2hzZ7K1EK6y6ACpdk8Jpqqq	2023-07-11 17:58:20.683229	\N
217	300	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGFjY291bnQiOiJkNTMzMTRhNTYxZDlhZTRiZmMxOWY3YWMiLCJpZHBlb3BsZSI6ImFueV9pZCIsInRlc3QiOiJDbGVyaXN0b24iLCJyb2xlIjoiY29zdHVtZSIsIm5hbWUiOiJFcnluIiwiZW1haWwiOiJDbGV2ZWxhbmQuV2Vpc3NuYXQwQHlhaG9vLmNvbSIsImlhdCI6MTY4OTA5ODcyOH0.0YIjjed3A30_EJw8gudFpzzAdwuzcjc2M8j1R4FuNDg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        	deliver	\N	$2b$12$PlRqxagqH90oHAR69XoaXuvSGrc0VB0JWeQ9pGfis.BnbHGsLmJVu	2023-07-11 18:05:29.171602	\N
220	304	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGFjY291bnQiOiIwOTNkZWRjOWNkY2JkODVkNGY5ZmM4ZTEiLCJpZHBlb3BsZSI6ImFueV9pZCIsInRlc3QiOiJDbGVyaXN0b24iLCJyb2xlIjoiY29zdHVtZSIsIm5hbWUiOiJEaWxsYW4iLCJlbWFpbCI6IkNhbWlsYTNAaG90bWFpbC5jb20iLCJpYXQiOjE2ODkxNTI3MTJ9.8XF9iufZf8goeWiNyWT47aPqIkQ8GLJa__z6J9WVy4E                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   	string	\N	$2b$12$c5KkdMpjmEGkcwAx3vWMCeTxT84akYPcc2BDsDt0DBwa7RuWoxiEy	2023-07-12 09:05:13.222496	\N
221	305	eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGFjY291bnQiOiI1NzMxYWE1YWY0NWQwZmJiZGNlMDVlOTciLCJpZHBlb3BsZSI6ImFueV9pZCIsInRlc3QiOiJDbGVyaXN0b24iLCJyb2xlIjoiY29zdHVtZSIsIm5hbWUiOiJFbWVyeSIsImVtYWlsIjoiTmF0YWxpZS5LdWhpYzM4QGdtYWlsLmNvbSIsImlhdCI6MTY4OTE4MTU1N30.1hGMrFM08Sxt2LWu4O_PPXPun0h06kc4A7NEh1kC3Gw                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            	string	\N	$2b$12$1w86uY1N9Wp7wo8kVclwmutkzXU3jwg6SgsAwhVHAZ.1oxktbaJWW	2023-07-12 17:05:57.364859	\N
\.


--
-- Data for Name: accountstatus; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.accountstatus (idaccountstatus, idaccount, status) FROM stdin;
118	215	pendent_data
120	217	pendent_data
123	220	pendent_data
124	221	pendent_data
\.


--
-- Data for Name: companyltde; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.companyltde (idcompanyltde, idpeople, crn, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: courrier; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.courrier (idcourrier, idpeople, documents, vehicletype, vehiclecurrent, vehicles, created_at) FROM stdin;
\.


--
-- Data for Name: deliver; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.deliver (iddeliver, idpeople, documents, vehicletype, created_at, fleet_id, updated_at) FROM stdin;
76	300	\N	\N	2023-07-11 18:05:29.171602	\N	\N
\.


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.location (idaddress, idpeople, address, flat, number, countrycode, country, city, postcode, latitude, longitude, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: memberpersonaldetailschecklist; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.memberpersonaldetailschecklist (idmemberpdc, idpeople, list) FROM stdin;
58	267	{"avatar":false,"industry":false,"token":true,"name":true,"contact":false,"location":false}
59	268	{"avatar":false,"industry":false,"token":true,"name":true,"contact":false,"location":false}
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.people (idpeople, name, type, email, mobilenumber, countrydialcode, phonenumber, created_at, updated_at) FROM stdin;
267	Cleriston	sole_trader	cleriston.mari@gmail.com	0.2334488020842307	null	0.2334488020842307	2023-04-25 19:43:27.965306	\N
268	dsds	sole_trader	toniclt@hotmail.com	0.3261235032505092	null	0.3261235032505092	2023-04-25 20:06:35.413049	\N
284	name	type	cleriston@gmail.com	\N	\N	\N	2023-07-11 17:37:17.551296	\N
297	string	sole_trader	cleriston@coplandpost.com	\N	\N	\N	2023-07-11 17:58:20.683229	\N
300	string	sole_trader	cleristons@coplandpost.com	\N	\N	\N	2023-07-11 18:05:29.171602	\N
304	tes	sole_trader	toniclts@hotmail.com	\N	\N	\N	2023-07-12 09:05:13.222496	\N
305	string	string	string	\N	\N	\N	2023-07-12 17:05:57.364859	\N
\.


--
-- Data for Name: soletrader; Type: TABLE DATA; Schema: public; Owner: dbadmin
--

COPY public.soletrader (idsoletrader, idpeople, utr, surname, dtaborn, sharedcode, created_at, updated_at) FROM stdin;
219	267	null	undefined	null	null	2023-04-25 19:43:28.116478	\N
220	268	null	undefined	null	null	2023-04-25 20:06:35.445622	\N
223	304	\N	martins	2023	updated	2023-07-12 09:05:13.222496	\N
224	305	\N	string	string	string	2023-07-12 17:05:57.364859	\N
\.


--
-- Name: account_idaccount_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.account_idaccount_seq', 221, true);


--
-- Name: accountstatus_idaccountstatus_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.accountstatus_idaccountstatus_seq', 124, true);


--
-- Name: companyltde_idcompanyltde_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.companyltde_idcompanyltde_seq', 47, true);


--
-- Name: courrier_idcourrier_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.courrier_idcourrier_seq', 1, false);


--
-- Name: deliver_iddeliver_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.deliver_iddeliver_seq', 76, true);


--
-- Name: location_idaddress_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.location_idaddress_seq', 130, true);


--
-- Name: memberpersonaldetailschecklist_idmemberpdc_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.memberpersonaldetailschecklist_idmemberpdc_seq', 59, true);


--
-- Name: people_idpeople_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.people_idpeople_seq', 306, true);


--
-- Name: soletrader_idsoletrader_seq; Type: SEQUENCE SET; Schema: public; Owner: dbadmin
--

SELECT pg_catalog.setval('public.soletrader_idsoletrader_seq', 224, true);


--
-- Name: account account_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_idpeople_key UNIQUE (idpeople);


--
-- Name: account account_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (idaccount);


--
-- Name: accountstatus accountstatus_idaccount_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.accountstatus
    ADD CONSTRAINT accountstatus_idaccount_key UNIQUE (idaccount);


--
-- Name: accountstatus accountstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.accountstatus
    ADD CONSTRAINT accountstatus_pkey PRIMARY KEY (idaccountstatus);


--
-- Name: companyltde companyltde_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.companyltde
    ADD CONSTRAINT companyltde_idpeople_key UNIQUE (idpeople);


--
-- Name: companyltde companyltde_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.companyltde
    ADD CONSTRAINT companyltde_pkey PRIMARY KEY (idcompanyltde);


--
-- Name: courrier courrier_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.courrier
    ADD CONSTRAINT courrier_idpeople_key UNIQUE (idpeople);


--
-- Name: courrier courrier_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.courrier
    ADD CONSTRAINT courrier_pkey PRIMARY KEY (idcourrier);


--
-- Name: deliver deliver_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.deliver
    ADD CONSTRAINT deliver_idpeople_key UNIQUE (idpeople);


--
-- Name: deliver deliver_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.deliver
    ADD CONSTRAINT deliver_pkey PRIMARY KEY (iddeliver);


--
-- Name: location location_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_idpeople_key UNIQUE (idpeople);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (idaddress);


--
-- Name: memberpersonaldetailschecklist memberpersonaldetailschecklist_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.memberpersonaldetailschecklist
    ADD CONSTRAINT memberpersonaldetailschecklist_idpeople_key UNIQUE (idpeople);


--
-- Name: memberpersonaldetailschecklist memberpersonaldetailschecklist_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.memberpersonaldetailschecklist
    ADD CONSTRAINT memberpersonaldetailschecklist_pkey PRIMARY KEY (idmemberpdc);


--
-- Name: people people_email_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_email_key UNIQUE (email);


--
-- Name: people people_mobilenumber_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_mobilenumber_key UNIQUE (mobilenumber);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (idpeople);


--
-- Name: soletrader soletrader_idpeople_key; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.soletrader
    ADD CONSTRAINT soletrader_idpeople_key UNIQUE (idpeople);


--
-- Name: soletrader soletrader_pkey; Type: CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.soletrader
    ADD CONSTRAINT soletrader_pkey PRIMARY KEY (idsoletrader);


--
-- Name: account account_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: accountstatus accountstatus_idaccount_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.accountstatus
    ADD CONSTRAINT accountstatus_idaccount_fkey FOREIGN KEY (idaccount) REFERENCES public.account(idaccount) ON DELETE CASCADE;


--
-- Name: companyltde companyltde_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.companyltde
    ADD CONSTRAINT companyltde_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: courrier courrier_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.courrier
    ADD CONSTRAINT courrier_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: deliver deliver_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.deliver
    ADD CONSTRAINT deliver_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: location location_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: memberpersonaldetailschecklist memberpersonaldetailschecklist_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.memberpersonaldetailschecklist
    ADD CONSTRAINT memberpersonaldetailschecklist_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- Name: soletrader soletrader_idpeople_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbadmin
--

ALTER TABLE ONLY public.soletrader
    ADD CONSTRAINT soletrader_idpeople_fkey FOREIGN KEY (idpeople) REFERENCES public.people(idpeople) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

