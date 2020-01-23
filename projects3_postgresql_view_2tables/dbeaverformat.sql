--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-02 09:04:37

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 16 (class 2615 OID 16756)
-- Name: cpmaning; Type: SCHEMA; Schema: -; Owner: datama2mi181
--

CREATE SCHEMA cpmaning;


ALTER SCHEMA cpmaning OWNER TO datama2mi181;

SET default_tablespace = '';

--
-- TOC entry 350 (class 1259 OID 23165)
-- Name: bill; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.bill (
    id integer NOT NULL,
    hot_name character varying(45) NOT NULL,
    cus_fullname character varying(45) NOT NULL,
    bill_dmg integer,
    hotel_id integer NOT NULL
);


ALTER TABLE cpmaning.bill OWNER TO datama2mi181;

--
-- TOC entry 351 (class 1259 OID 23168)
-- Name: bill_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.bill_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.bill_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3377 (class 0 OID 0)
-- Dependencies: 351
-- Name: bill_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.bill_id_seq OWNED BY cpmaning.bill.id;


--
-- TOC entry 352 (class 1259 OID 23170)
-- Name: check_in_slip; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.check_in_slip (
    id integer NOT NULL,
    slip_cin date NOT NULL,
    slip_cout date NOT NULL,
    employee_id integer NOT NULL
);


ALTER TABLE cpmaning.check_in_slip OWNER TO datama2mi181;

--
-- TOC entry 353 (class 1259 OID 23173)
-- Name: check_in_slip_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.check_in_slip_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.check_in_slip_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3378 (class 0 OID 0)
-- Dependencies: 353
-- Name: check_in_slip_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.check_in_slip_id_seq OWNED BY cpmaning.check_in_slip.id;


--
-- TOC entry 354 (class 1259 OID 23175)
-- Name: customer; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.customer (
    id integer NOT NULL,
    cus_fname character varying(45) DEFAULT NULL::character varying,
    cus_lname character varying(45) DEFAULT NULL::character varying,
    cus_initial character varying(45) DEFAULT NULL::character varying,
    cus_fullname character varying(45) NOT NULL,
    cus_add character varying(45) NOT NULL,
    cus_cont integer NOT NULL,
    cus_email character varying(45) DEFAULT NULL::character varying,
    cus_crdt integer NOT NULL,
    employee_id integer NOT NULL,
    check_in_slip_id integer NOT NULL
);


ALTER TABLE cpmaning.customer OWNER TO datama2mi181;

--
-- TOC entry 355 (class 1259 OID 23182)
-- Name: customer_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.customer_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3379 (class 0 OID 0)
-- Dependencies: 355
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.customer_id_seq OWNED BY cpmaning.customer.id;


--
-- TOC entry 356 (class 1259 OID 23184)
-- Name: employee; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.employee (
    id integer NOT NULL,
    emp_fname character varying(45) DEFAULT NULL::character varying,
    emp_lname character varying(45) DEFAULT NULL::character varying,
    emp_initial character varying(45) DEFAULT NULL::character varying,
    emp_fullname character varying(45) NOT NULL,
    emp_add character varying(45) NOT NULL,
    emp_cont integer NOT NULL,
    emp_email character varying(45) NOT NULL,
    emp_type character varying(45) NOT NULL
);


ALTER TABLE cpmaning.employee OWNER TO datama2mi181;

--
-- TOC entry 357 (class 1259 OID 23190)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.employee_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3380 (class 0 OID 0)
-- Dependencies: 357
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.employee_id_seq OWNED BY cpmaning.employee.id;


--
-- TOC entry 358 (class 1259 OID 23192)
-- Name: hotel; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.hotel (
    id integer NOT NULL,
    hot_name character varying(45) DEFAULT NULL::character varying,
    hot_type character varying(45) DEFAULT NULL::character varying,
    hot_add character varying(255) DEFAULT NULL::character varying,
    hot_cont integer
);


ALTER TABLE cpmaning.hotel OWNER TO datama2mi181;

--
-- TOC entry 359 (class 1259 OID 23198)
-- Name: hotel_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.hotel_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3381 (class 0 OID 0)
-- Dependencies: 359
-- Name: hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.hotel_id_seq OWNED BY cpmaning.hotel.id;


--
-- TOC entry 360 (class 1259 OID 23200)
-- Name: key; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.key (
    id integer NOT NULL,
    key_holder character varying(45) NOT NULL
);


ALTER TABLE cpmaning.key OWNER TO datama2mi181;

--
-- TOC entry 361 (class 1259 OID 23203)
-- Name: key_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.key_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.key_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3382 (class 0 OID 0)
-- Dependencies: 361
-- Name: key_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.key_id_seq OWNED BY cpmaning.key.id;


--
-- TOC entry 362 (class 1259 OID 23205)
-- Name: room; Type: TABLE; Schema: cpmaning; Owner: datama2mi181
--

CREATE TABLE cpmaning.room (
    id integer NOT NULL,
    room_type character varying(45) NOT NULL,
    room_cpcty integer NOT NULL,
    room_cont integer NOT NULL,
    room_price integer NOT NULL,
    hotel_id integer NOT NULL,
    key_id integer NOT NULL
);


ALTER TABLE cpmaning.room OWNER TO datama2mi181;

--
-- TOC entry 363 (class 1259 OID 23208)
-- Name: room_id_seq; Type: SEQUENCE; Schema: cpmaning; Owner: datama2mi181
--

CREATE SEQUENCE cpmaning.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpmaning.room_id_seq OWNER TO datama2mi181;

--
-- TOC entry 3383 (class 0 OID 0)
-- Dependencies: 363
-- Name: room_id_seq; Type: SEQUENCE OWNED BY; Schema: cpmaning; Owner: datama2mi181
--

ALTER SEQUENCE cpmaning.room_id_seq OWNED BY cpmaning.room.id;


--
-- TOC entry 364 (class 1259 OID 23230)
-- Name: viewview; Type: VIEW; Schema: cpmaning; Owner: datama2mi181
--

CREATE VIEW cpmaning.viewview AS
 SELECT employee.emp_fname,
    employee.emp_lname,
    hotel.id
   FROM (cpmaning.employee
     LEFT JOIN cpmaning.hotel ON ((employee.id = hotel.id)));


ALTER TABLE cpmaning.viewview OWNER TO datama2mi181;

--
-- TOC entry 3197 (class 2604 OID 23210)
-- Name: bill id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.bill ALTER COLUMN id SET DEFAULT nextval('cpmaning.bill_id_seq'::regclass);


--
-- TOC entry 3198 (class 2604 OID 23211)
-- Name: check_in_slip id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.check_in_slip ALTER COLUMN id SET DEFAULT nextval('cpmaning.check_in_slip_id_seq'::regclass);


--
-- TOC entry 3203 (class 2604 OID 23212)
-- Name: customer id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.customer ALTER COLUMN id SET DEFAULT nextval('cpmaning.customer_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 23213)
-- Name: employee id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.employee ALTER COLUMN id SET DEFAULT nextval('cpmaning.employee_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 23214)
-- Name: hotel id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.hotel ALTER COLUMN id SET DEFAULT nextval('cpmaning.hotel_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 23215)
-- Name: key id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.key ALTER COLUMN id SET DEFAULT nextval('cpmaning.key_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 23216)
-- Name: room id; Type: DEFAULT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.room ALTER COLUMN id SET DEFAULT nextval('cpmaning.room_id_seq'::regclass);


--
-- TOC entry 3358 (class 0 OID 23165)
-- Dependencies: 350
-- Data for Name: bill; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.bill VALUES (1, 'Shangrila Makati', 'Ralph Dedumo', 0, 1);


--
-- TOC entry 3360 (class 0 OID 23170)
-- Dependencies: 352
-- Data for Name: check_in_slip; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.check_in_slip VALUES (1, '2019-11-11', '2019-11-11', 1);


--
-- TOC entry 3362 (class 0 OID 23175)
-- Dependencies: 354
-- Data for Name: customer; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.customer VALUES (1, 'Ralph', 'Dedumo', 'A', 'Ralph Dedumo', 'Laguna', 1909090909, 'radedumo@gmail.com', 909090909, 1, 1);


--
-- TOC entry 3364 (class 0 OID 23184)
-- Dependencies: 356
-- Data for Name: employee; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.employee VALUES (1, 'Darline', 'Mendoza', 'D', 'Darline D Mendoza', 'Laguna', 909090901, 'darline@yahoo.com', 'Hotel Clerk');


--
-- TOC entry 3366 (class 0 OID 23192)
-- Dependencies: 358
-- Data for Name: hotel; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.hotel VALUES (1, 'Shangrila Makati', 'Luxury and High-End Hotels', 'Makati City', 81694088);


--
-- TOC entry 3368 (class 0 OID 23200)
-- Dependencies: 360
-- Data for Name: key; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.key VALUES (1, 'Darlyn D Mendoza');


--
-- TOC entry 3370 (class 0 OID 23205)
-- Dependencies: 362
-- Data for Name: room; Type: TABLE DATA; Schema: cpmaning; Owner: datama2mi181
--

INSERT INTO cpmaning.room VALUES (1, 'Single', 1, 89802141, 8000, 1, 1);
INSERT INTO cpmaning.room VALUES (2, 'Double', 2, 89802351, 8000, 2, 2);
INSERT INTO cpmaning.room VALUES (3, 'King', 2, 49802351, 10000, 3, 3);


--
-- TOC entry 3384 (class 0 OID 0)
-- Dependencies: 351
-- Name: bill_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.bill_id_seq', 1, true);


--
-- TOC entry 3385 (class 0 OID 0)
-- Dependencies: 353
-- Name: check_in_slip_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.check_in_slip_id_seq', 1, true);


--
-- TOC entry 3386 (class 0 OID 0)
-- Dependencies: 355
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.customer_id_seq', 1, true);


--
-- TOC entry 3387 (class 0 OID 0)
-- Dependencies: 357
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.employee_id_seq', 1, true);


--
-- TOC entry 3388 (class 0 OID 0)
-- Dependencies: 359
-- Name: hotel_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.hotel_id_seq', 1, true);


--
-- TOC entry 3389 (class 0 OID 0)
-- Dependencies: 361
-- Name: key_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.key_id_seq', 1, true);


--
-- TOC entry 3390 (class 0 OID 0)
-- Dependencies: 363
-- Name: room_id_seq; Type: SEQUENCE SET; Schema: cpmaning; Owner: datama2mi181
--

SELECT pg_catalog.setval('cpmaning.room_id_seq', 3, true);


--
-- TOC entry 3215 (class 2606 OID 23218)
-- Name: check_in_slip check_in_slip_pkey; Type: CONSTRAINT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.check_in_slip
    ADD CONSTRAINT check_in_slip_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 23220)
-- Name: hotel hotel_pkey; Type: CONSTRAINT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 23222)
-- Name: key key_pkey; Type: CONSTRAINT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.key
    ADD CONSTRAINT key_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 23224)
-- Name: room room_pkey; Type: CONSTRAINT; Schema: cpmaning; Owner: datama2mi181
--

ALTER TABLE ONLY cpmaning.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);


-- Completed on 2019-12-02 09:04:38

--
-- PostgreSQL database dump complete
--

