--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.1

-- Started on 2025-01-26 08:48:02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 5 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: dyc_db_user
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO dyc_db_user;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16400)
-- Name: admin; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.admin (
    id_adm integer NOT NULL,
    email character varying(100),
    mdp character varying(100),
    nom character varying(100),
    image character varying(100)
);


ALTER TABLE public.admin OWNER TO dyc_db_user;

--
-- TOC entry 215 (class 1259 OID 16399)
-- Name: admin_id_adm_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.admin_id_adm_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_id_adm_seq OWNER TO dyc_db_user;

--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 215
-- Name: admin_id_adm_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.admin_id_adm_seq OWNED BY public.admin.id_adm;


--
-- TOC entry 218 (class 1259 OID 16408)
-- Name: blog; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.blog (
    id integer NOT NULL,
    image character varying(100),
    titre character varying(100),
    introduction text,
    developpement text,
    date date,
    id_adm integer
);


ALTER TABLE public.blog OWNER TO dyc_db_user;

--
-- TOC entry 217 (class 1259 OID 16407)
-- Name: blog_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.blog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 217
-- Name: blog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.blog_id_seq OWNED BY public.blog.id;


--
-- TOC entry 220 (class 1259 OID 16418)
-- Name: fichier; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.fichier (
    id integer NOT NULL,
    fichier bytea
);


ALTER TABLE public.fichier OWNER TO dyc_db_user;

--
-- TOC entry 219 (class 1259 OID 16417)
-- Name: fichier_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.fichier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.fichier_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 219
-- Name: fichier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.fichier_id_seq OWNED BY public.fichier.id;


--
-- TOC entry 222 (class 1259 OID 16427)
-- Name: message; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.message (
    id integer NOT NULL,
    nom character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    tel bigint NOT NULL,
    sujet character varying(100) NOT NULL,
    message text NOT NULL,
    date date NOT NULL
);


ALTER TABLE public.message OWNER TO dyc_db_user;

--
-- TOC entry 221 (class 1259 OID 16426)
-- Name: message_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.message_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 221
-- Name: message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.message_id_seq OWNED BY public.message.id;


--
-- TOC entry 224 (class 1259 OID 16436)
-- Name: projet; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.projet (
    id integer NOT NULL,
    image character varying(100),
    titre character varying(100),
    description text,
    fini character varying(100),
    lien text,
    languages character varying(100)
);


ALTER TABLE public.projet OWNER TO dyc_db_user;

--
-- TOC entry 223 (class 1259 OID 16435)
-- Name: projet_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.projet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projet_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 223
-- Name: projet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.projet_id_seq OWNED BY public.projet.id;


--
-- TOC entry 226 (class 1259 OID 16445)
-- Name: service; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.service (
    id integer NOT NULL,
    titre character varying(100),
    abreviation character varying(100),
    description text,
    svg text
);


ALTER TABLE public.service OWNER TO dyc_db_user;

--
-- TOC entry 225 (class 1259 OID 16444)
-- Name: service_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.service_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 225
-- Name: service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.service_id_seq OWNED BY public.service.id;


--
-- TOC entry 228 (class 1259 OID 16454)
-- Name: site; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.site (
    id integer NOT NULL,
    domaine character varying(100) NOT NULL,
    auteur character varying(100),
    tel bigint,
    emails character varying(100),
    adresse character varying(100),
    slug text
);


ALTER TABLE public.site OWNER TO dyc_db_user;

--
-- TOC entry 227 (class 1259 OID 16453)
-- Name: site_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.site_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 227
-- Name: site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.site_id_seq OWNED BY public.site.id;


--
-- TOC entry 230 (class 1259 OID 16463)
-- Name: social; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.social (
    id integer NOT NULL,
    url text,
    svg text
);


ALTER TABLE public.social OWNER TO dyc_db_user;

--
-- TOC entry 229 (class 1259 OID 16462)
-- Name: social_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.social_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.social_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 229
-- Name: social_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.social_id_seq OWNED BY public.social.id;


--
-- TOC entry 232 (class 1259 OID 16472)
-- Name: temoignage; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.temoignage (
    id integer NOT NULL,
    image character varying(100),
    nom character varying(100),
    metier character varying(100),
    description text
);


ALTER TABLE public.temoignage OWNER TO dyc_db_user;

--
-- TOC entry 231 (class 1259 OID 16471)
-- Name: temoignage_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.temoignage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.temoignage_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 231
-- Name: temoignage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.temoignage_id_seq OWNED BY public.temoignage.id;


--
-- TOC entry 234 (class 1259 OID 16481)
-- Name: visite; Type: TABLE; Schema: public; Owner: dyc_db_user
--

CREATE TABLE public.visite (
    id integer NOT NULL,
    interface character varying(100),
    device text,
    date date,
    heure character varying(100)
);


ALTER TABLE public.visite OWNER TO dyc_db_user;

--
-- TOC entry 233 (class 1259 OID 16480)
-- Name: visite_id_seq; Type: SEQUENCE; Schema: public; Owner: dyc_db_user
--

CREATE SEQUENCE public.visite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.visite_id_seq OWNER TO dyc_db_user;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 233
-- Name: visite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dyc_db_user
--

ALTER SEQUENCE public.visite_id_seq OWNED BY public.visite.id;


--
-- TOC entry 3252 (class 2604 OID 16403)
-- Name: admin id_adm; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.admin ALTER COLUMN id_adm SET DEFAULT nextval('public.admin_id_adm_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 16411)
-- Name: blog id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.blog ALTER COLUMN id SET DEFAULT nextval('public.blog_id_seq'::regclass);


--
-- TOC entry 3254 (class 2604 OID 16421)
-- Name: fichier id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.fichier ALTER COLUMN id SET DEFAULT nextval('public.fichier_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 16430)
-- Name: message id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.message ALTER COLUMN id SET DEFAULT nextval('public.message_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 16439)
-- Name: projet id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.projet ALTER COLUMN id SET DEFAULT nextval('public.projet_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 16448)
-- Name: service id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.service ALTER COLUMN id SET DEFAULT nextval('public.service_id_seq'::regclass);


--
-- TOC entry 3258 (class 2604 OID 16457)
-- Name: site id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.site ALTER COLUMN id SET DEFAULT nextval('public.site_id_seq'::regclass);


--
-- TOC entry 3259 (class 2604 OID 16466)
-- Name: social id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.social ALTER COLUMN id SET DEFAULT nextval('public.social_id_seq'::regclass);


--
-- TOC entry 3260 (class 2604 OID 16475)
-- Name: temoignage id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.temoignage ALTER COLUMN id SET DEFAULT nextval('public.temoignage_id_seq'::regclass);


--
-- TOC entry 3261 (class 2604 OID 16484)
-- Name: visite id; Type: DEFAULT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.visite ALTER COLUMN id SET DEFAULT nextval('public.visite_id_seq'::regclass);


--
-- TOC entry 3426 (class 0 OID 16400)
-- Dependencies: 216
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.admin (id_adm, email, mdp, nom, image) FROM stdin;
1	dycathecorde@gmail.com	Metal@slug2	Junior Sineno	1.png
\.


--
-- TOC entry 3428 (class 0 OID 16408)
-- Dependencies: 218
-- Data for Name: blog; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.blog (id, image, titre, introduction, developpement, date, id_adm) FROM stdin;
1	6777615c0053f.jpg	Top 10 Frontend Tools en 2024	Top 10 Frontend Tools en 2024	<ul class="ul">\r\n    <!-- Uiverse.io -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://uiverse.io/" target="_blank">Uiverse.io</a>\r\n        </h3>\r\n        <p>\r\n            Uiverse.io est une plateforme dédiée aux composants UI animés et interactifs. Les développeurs peuvent y trouver des boutons, cartes, et autres éléments stylés avec CSS, facilement intégrables dans leurs projets. Idéal pour ajouter des interactions modernes à vos interfaces.\r\n        </p>\r\n    </li>\r\n    <!-- UIGradients -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://uigradients.com/" target="_blank">UI Gradients</a>\r\n        </h3>\r\n        <p>\r\n            UI Gradients propose une vaste collection de dégradés CSS prêts à l’emploi. Avec des centaines de combinaisons de couleurs modernes, il est parfait pour enrichir le design de vos applications ou sites web. Simple, rapide, et efficace pour donner un aspect premium à vos interfaces.\r\n        </p>\r\n    </li>\r\n    <!-- CSS Gradient -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://cssgradient.io/" target="_blank">CSS Gradient</a>\r\n        </h3>\r\n        <p>\r\n            CSS Gradient est un générateur puissant de dégradés CSS. Il offre une interface intuitive pour créer des dégradés personnalisés et les intégrer directement dans vos projets. Ce site est aussi une source d’inspiration pour découvrir des palettes tendance.\r\n        </p>\r\n    </li>\r\n    <!-- Coolors -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://coolors.co/" target="_blank">Coolors</a>\r\n        </h3>\r\n        <p>\r\n            Coolors est un outil interactif pour générer des palettes de couleurs harmonieuses. Grâce à son interface intuitive, les designers peuvent trouver rapidement des combinaisons adaptées à leur projet. Un must-have pour le design UI/UX moderne.\r\n        </p>\r\n    </li>\r\n    <!-- CodePen -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://codepen.io/" target="_blank">CodePen</a>\r\n        </h3>\r\n        <p>\r\n            CodePen est une plateforme où les développeurs partagent leurs créations front-end. Elle regorge de snippets HTML, CSS, et JavaScript, incluant des animations et des composants interactifs. Idéal pour trouver des exemples pratiques et booster votre productivité.\r\n        </p>\r\n    </li>\r\n    <!-- Animista -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://animista.net/" target="_blank">Animista</a>\r\n        </h3>\r\n        <p>\r\n            Animista propose une collection de transitions et d’animations CSS personnalisables. Les développeurs peuvent les tester en direct et copier le code pour les intégrer facilement. C’est une ressource précieuse pour dynamiser vos projets front-end.\r\n        </p>\r\n    </li>\r\n    <!-- CSS Tricks -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://css-tricks.com/" target="_blank">7. CSS Tricks</a>\r\n        </h3>\r\n        <p>\r\n            CSS Tricks est un blog et une ressource incontournable pour les développeurs front-end. Il couvre une multitude de sujets, notamment des tutoriels, astuces CSS, et des techniques pour perfectionner vos designs web interactifs.\r\n        </p>\r\n    </li>\r\n    <!-- Fancy Buttons -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://fancy-buttons.cssscript.com/" target="_blank">8. Fancy Buttons</a>\r\n        </h3>\r\n        <p>\r\n            Fancy Buttons propose une large gamme de boutons stylisés et animés en CSS. Les développeurs peuvent y trouver des designs uniques pour embellir leurs projets sans effort. Les animations fluides rendent chaque interaction utilisateur mémorable.\r\n        </p>\r\n    </li>\r\n    <!-- Hover CSS -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://ianlunn.github.io/Hover/" target="_blank">Hover CSS</a>\r\n        </h3>\r\n        <p>\r\n            Hover CSS est une collection d'effets de survol CSS. Idéal pour ajouter des interactions visuelles aux liens, boutons et images, il est léger et simple à intégrer dans n’importe quel projet front-end.\r\n        </p>\r\n    </li>\r\n    <!-- Glassmorphism -->\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://hype4.academy/tools/glassmorphism-generator" target="_blank">Glassmorphism Generator</a>\r\n        </h3>\r\n        <p>\r\n            Ce générateur vous aide à concevoir des designs inspirés du glassmorphism, un style moderne avec des effets de flou et de transparence. Il génère directement le code CSS pour un look minimaliste et élégant.\r\n        </p>\r\n    </li>\r\n</ul>\r\n	2025-01-03	1
2	677761a3cebec.webp	Top Framework front-end JS	Les frameworks front-end JavaScript dominent le développement web grâce à leur capacité à créer des interfaces modernes et performantes. Que vous cherchiez simplicité, performances ou scalabilité, ces outils s'adaptent à tous les besoins. React et Vue.js excellent dans les projets interactifs, Angular répond aux exigences d’entreprise, tandis que Svelte et Lit misent sur la légèreté. Next.js et Nuxt.js renforcent le SEO avec un rendu côté serveur, et des microframeworks comme Alpine.js offrent des solutions minimalistes. Découvrez comment ces frameworks façonnent le web en 2024.	<ul class="ul">\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://react.dev/" target="_blank">React.js</a>\r\n        </h3>\r\n        <p>\r\n            React est une bibliothèque front-end populaire pour créer des interfaces dynamiques avec des composants réutilisables. Doté d’un écosystème robuste et d’une grande communauté, il est parfait pour les applications nécessitant une interactivité complexe. Il se combine facilement avec des outils comme Next.js pour des applications universelles.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://vuejs.org/" target="_blank">Vue.js</a>\r\n        </h3>\r\n        <p>\r\n            Vue.js est un framework progressif connu pour sa facilité d’apprentissage et sa flexibilité. Il est adapté aux projets de toutes tailles, grâce à des outils comme Vue Router pour les applications monopages (SPA) et Vuex pour la gestion d’état. Idéal pour des applications légères et modernes.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://angular.io/" target="_blank">Angular</a>\r\n        </h3>\r\n        <p>\r\n            Angular, développé par Google, est un framework front-end complet basé sur TypeScript. Il offre une architecture robuste pour créer des applications d’entreprise complexes. Avec des fonctionnalités intégrées comme le routage et la gestion d’état, Angular est un choix tout-en-un pour les projets ambitieux.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://svelte.dev/" target="_blank">Svelte</a>\r\n        </h3>\r\n        <p>\r\n            Svelte révolutionne le développement front-end en compilant le code à la construction, supprimant ainsi le besoin d’un runtime lourd. Ce framework offre une gestion d’état simplifiée et des performances exceptionnelles. Parfait pour des applications légères et rapides.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://nextjs.org/" target="_blank">Next.js</a>\r\n        </h3>\r\n        <p>\r\n            Next.js, basé sur React, offre des fonctionnalités avancées comme le rendu côté serveur (SSR) et la génération de sites statiques (SSG). Il est idéal pour créer des applications universelles optimisées pour le SEO, avec un routage automatique et des pages dynamiques.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://nuxtjs.org/" target="_blank">Nuxt.js</a>\r\n        </h3>\r\n        <p>\r\n            Nuxt.js est un framework basé sur Vue.js, conçu pour le rendu côté serveur et la génération de sites statiques. Avec son architecture simplifiée et ses outils intégrés, Nuxt facilite la création d’applications modernes et universelles.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://emberjs.com/" target="_blank">Ember.js</a>\r\n        </h3>\r\n        <p>\r\n            Ember.js est un framework orienté productivité, offrant une approche "convention over configuration". Idéal pour des projets d’envergure, il inclut des outils pour le routage, la gestion d’état et les tests, permettant de maintenir une structure stricte et évolutive.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://alpinejs.dev/" target="_blank">Alpine.js</a>\r\n        </h3>\r\n        <p>\r\n            Alpine.js est un microframework léger, parfait pour ajouter des interactions simples sans dépendances lourdes. Fonctionnant directement dans le DOM, il est idéal pour des projets nécessitant une configuration rapide et des fonctionnalités légères.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://qwik.builder.io/" target="_blank">Qwik</a>\r\n        </h3>\r\n        <p>\r\n            Qwik est un framework révolutionnaire conçu pour des performances maximales avec un rendu instantané côté serveur et un chargement progressif. Idéal pour les projets où la vitesse et l'expérience utilisateur sont des priorités.\r\n        </p>\r\n    </li>\r\n    <li class="li">\r\n        <h3>\r\n            <a href="https://lit.dev/" target="_blank">Lit</a>\r\n        </h3>\r\n        <p>\r\n            Lit est un framework basé sur les web components, permettant de créer des éléments UI réutilisables et légers. Avec une empreinte minimale, il est parfait pour les développeurs cherchant à utiliser des standards natifs tout en conservant des performances optimales.\r\n        </p>\r\n    </li>\r\n</ul>\r\n	2025-01-03	1
\.


--
-- TOC entry 3430 (class 0 OID 16418)
-- Dependencies: 220
-- Data for Name: fichier; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.fichier (id, fichier) FROM stdin;
\.


--
-- TOC entry 3432 (class 0 OID 16427)
-- Dependencies: 222
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.message (id, nom, email, tel, sujet, message, date) FROM stdin;
1	dyCathecode	dycathecorde@gmail.com	688229889	php	valider	2024-12-16
2	Junior sineno	juniorsineno@gmail.com de	677019829	Test	Mgd	2025-01-02
3	Dzudjom	eurastelouisben@gmail.com	696522672	React	Besoin de tes services\r\nà combien peux tu faire un site statique ?	2025-01-05
\.


--
-- TOC entry 3434 (class 0 OID 16436)
-- Dependencies: 224
-- Data for Name: projet; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.projet (id, image, titre, description, fini, lien, languages) FROM stdin;
6	6.png	Site Vitrine pour GROUP FAH'SI	Un site vitrine pour GROUP FAH'SI dans le domaine architectural mettrait en avant l’expertise et les réalisations du groupe, tout en reflétant son professionnalisme.	Non		HTML, CSS, JS, PHP
5	5.png	Portfolio DyC	Mettrait en avant vos compétences et réalisations en web design, développement backend (PHP, Laravel), et intégration front-end.	oui	https://dyc-c6rx.onrender.com	HTML, CSS, JS, PHP, JQUERY
1	1.png	Tableau de bord pour site vitrine	Un tableau de bord pour site vitrine permet de gérer efficacement le contenu et les fonctionnalités. Il inclut des sections pour modifier les textes, images, témoignages, et optimiser l’affichage. Facile à utiliser, il offre un contrôle total.	oui	https://dyc-c6rx.onrender.com/admin	HTML, CSS, JS, PHP, JQUERY
2	2.png	Site de vente en ligne	Un site de vente en ligne permet de présenter et vendre des produits ou services. Il inclut un catalogue, un panier, des options de paiement sécurisé, et un espace client. Optimisé pour le SEO, il améliore l’expérience utilisateur et favorise les ventes.	Non		HTML, CSS, JS, PHP
3	3.png	Site vitrine de T-CONTRACTORS	Un site vitrine pour T-CONTRACTORS mettrait en avant les services, réalisations, et l’identité de l’entreprise. Avec une navigation intuitive, des sections sur l’expertise, un formulaire de contact, et un design professionnel, il renforcerait la crédibilité et attirerait des clients potentiels.	oui	https://t-contractors.net/	HTML, CSS, JS, PHP
4	4.png	Tableau de bord pour un site de vente en ligne	Un tableau de bord pour un site de vente en ligne offre une gestion centralisée. Il inclut des fonctionnalités pour gérer les produits, les catégories, les commandes, les clients, les statistiques de vente, et les promotions. Intuitif et sécurisé, il simplifie l’administration quotidienne et optimise les performances du site.	Non		HTML, CSS, JS, PHP
\.


--
-- TOC entry 3436 (class 0 OID 16445)
-- Dependencies: 226
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.service (id, titre, abreviation, description, svg) FROM stdin;
1	Responsive Design (css)	CSS	Le responsive design en CSS garantit une adaptation parfaite des sites web à tous les écrans. Grâce à des techniques comme les media queries et les unités flexibles, il optimise l’affichage sur mobiles, tablettes et ordinateurs.	<svg width="25px" height="25px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">\r\n                                <path d="M8 5C7.44772 5 7 5.44772 7 6C7 6.55228 7.44772 7 8 7H12.2344L8.50386 9.13176C8.11017 9.35672 7.91712 9.81842 8.0335 10.2567C8.14988 10.6949 8.54657 11 9 11H13.8C13.9105 11 14 11.0895 14 11.2V13.5029C14 13.556 13.9789 13.6069 13.9414 13.6444L12.1414 15.4444C12.0633 15.5225 11.9367 15.5225 11.8586 15.4444L9.70711 13.2929C9.31658 12.9024 8.68342 12.9024 8.2929 13.2929C7.90237 13.6834 7.90237 14.3166 8.2929 14.7071L11.2929 17.7071C11.6834 18.0976 12.3166 18.0976 12.7071 17.7071L15.7071 14.7071C15.8946 14.5196 16 14.2652 16 14V10C16 9.44772 15.5523 9 15 9H12.7656L16.4961 6.86824C16.8898 6.64328 17.0829 6.18158 16.9665 5.74333C16.8501 5.30509 16.4534 5 16 5H8Z"></path>\r\n                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.30602 1C2.48038 1 1.07799 2.61696 1.33617 4.42426L2.90519 15.4074C3.00668 16.1178 3.35946 16.7683 3.89953 17.2409L10.0245 22.6002C11.1556 23.5899 12.8444 23.5899 13.9755 22.6002L20.1005 17.2409C20.6405 16.7683 20.9933 16.1178 21.0948 15.4074L22.6638 4.42426C22.922 2.61696 21.5196 1 19.694 1H4.30602ZM3.31607 4.14142C3.23001 3.53899 3.69747 3 4.30602 3H19.694C20.3025 3 20.77 3.53899 20.6839 4.14142L19.1149 15.1245C19.0811 15.3613 18.9635 15.5782 18.7835 15.7357L12.6585 21.095C12.2815 21.4249 11.7185 21.4249 11.3415 21.095L5.21653 15.7357C5.03651 15.5782 4.91892 15.3613 4.88509 15.1245L3.31607 4.14142Z"></path>\r\n                                </svg>
2	Intégration Front-End(HTML et CSS)	HTML-CSS	L'intégration Front-End en HTML CSS et JS transforme les maquettes en interfaces fonctionnelles. En structurant le contenu avec HTML et en stylisant avec CSS, elle garantit des sites esthétiques, accessibles et adaptés à tous les appareils.	<svg width="25px" height="25px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">\r\n                                <path d="M7.99999 5C7.69206 5 7.4013 5.14187 7.21179 5.38459C7.02228 5.6273 6.95517 5.94379 7.02985 6.24254L8.02985 10.2425C8.14114 10.6877 8.54113 11 8.99999 11H13.8C13.9105 11 14 11.0895 14 11.2V13.5029C14 13.556 13.9789 13.6069 13.9414 13.6444L12.1414 15.4444C12.0633 15.5225 11.9367 15.5225 11.8586 15.4444L9.7071 13.2929C9.31658 12.9024 8.68341 12.9024 8.29289 13.2929C7.90236 13.6834 7.90236 14.3166 8.29289 14.7071L11.2929 17.7071C11.6834 18.0976 12.3166 18.0976 12.7071 17.7071L15.7071 14.7071C15.8946 14.5196 16 14.2652 16 14V10C16 9.44772 15.5523 9 15 9H9.93693C9.84515 9 9.76516 8.93754 9.7429 8.84851L9.3429 7.24851C9.31134 7.12228 9.40681 7 9.53693 7H16C16.5523 7 17 6.55228 17 6C17 5.44772 16.5523 5 16 5H7.99999Z"></path>\r\n                                <path fill-rule="evenodd" clip-rule="evenodd" d="M4.30601 1C2.48037 1 1.07798 2.61696 1.33617 4.42426L2.90518 15.4074C3.00667 16.1178 3.35945 16.7683 3.89952 17.2409L10.0245 22.6002C11.1556 23.5899 12.8444 23.5899 13.9755 22.6002L20.1005 17.2409C20.6405 16.7683 20.9933 16.1178 21.0948 15.4074L22.6638 4.42426C22.922 2.61696 21.5196 1 19.694 1H4.30601ZM3.31606 4.14142C3.23 3.53899 3.69746 3 4.30601 3H19.694C20.3025 3 20.77 3.53899 20.6839 4.14142L19.1149 15.1245C19.0811 15.3613 18.9635 15.5782 18.7835 15.7357L12.6585 21.095C12.2815 21.4249 11.7185 21.4249 11.3415 21.095L5.21653 15.7357C5.0365 15.5782 4.91891 15.3613 4.88508 15.1245L3.31606 4.14142Z"></path>\r\n                                </svg>
3	Backend  dev (Php,laravel,js)	PHP	Le développement backend avec PHP et Laravel se concentre sur la gestion des données et la logique métier. Laravel, avec son framework robuste, simplifie la création d’API, l’authentification, et les opérations CRUD, garantissant sécurité et performance.	<svg fill="#000000" width="24px" height="24px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" xml:space="preserve"><path d="M5.265 13.38c.596 0 1.041-.112 1.323-.332.279-.218.471-.595.572-1.122.094-.492.058-.836-.106-1.021-.168-.189-.532-.286-1.082-.286h-.954L4.49 13.38h.775zm-3.117 3.401a.146.146 0 0 1-.114-.055.151.151 0 0 1-.031-.125l1.4-7.316a.15.15 0 0 1 .146-.122h3.017c.948 0 1.654.262 2.098.777.446.519.584 1.243.409 2.155a3.457 3.457 0 0 1-.363 1.025c-.17.309-.395.595-.668.85a2.923 2.923 0 0 1-1.099.669c-.395.131-.903.197-1.51.197H4.212l-.349 1.824a.15.15 0 0 1-.145.122h-1.57v-.001zm10.645-1.945a.144.144 0 0 1-.113-.055.154.154 0 0 1-.031-.124l.611-3.237c.058-.308.044-.529-.04-.622-.051-.057-.206-.153-.664-.153h-1.108l-.769 4.07a.148.148 0 0 1-.144.122H9a.144.144 0 0 1-.113-.055.154.154 0 0 1-.031-.124l1.382-7.316a.148.148 0 0 1 .144-.122h1.537c.044 0 .085.02.113.055.028.035.039.08.031.125l-.333 1.766h1.192c.908 0 1.523.165 1.882.503.365.346.479.898.339 1.642l-.643 3.405a.148.148 0 0 1-.144.122h-1.563v-.002zm5.177-1.456c.619 0 1.081-.112 1.374-.332.289-.218.489-.595.594-1.122.098-.492.06-.836-.111-1.021-.175-.189-.553-.286-1.124-.286h-.989l-.549 2.761h.805zm-3.236 3.401a.156.156 0 0 1-.119-.055.149.149 0 0 1-.032-.125l1.454-7.316a.153.153 0 0 1 .151-.122h3.133c.985 0 1.718.262 2.178.777.463.519.606 1.243.425 2.155-.074.371-.2.716-.377 1.024-.176.309-.41.595-.693.85-.34.311-.724.536-1.141.669-.411.131-.938.197-1.568.197h-1.269l-.362 1.823a.153.153 0 0 1-.151.122h-1.629v.001z"/></svg>
4	SEO Design (Optimisation pour les Moteurs de Recherche)	SEO	Le SEO Design optimise les sites pour les moteurs de recherche en améliorant structure et contenu. Avec des balises HTML stratégiques, des temps de chargement rapides et un design responsive, il augmente la visibilité et le trafic organique.	\r\n<svg fill="#000000" height="25px" width="25px" version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" xmlns:xlink="http://www.w3.org/1999/xlink" enable-background="new 0 0 512 512">\r\n  <g>\r\n    <g>\r\n      <path d="m437.5,239.9c1-7.3 2.1-13.5 2.1-20.8 0-70.6-57.2-127.7-128-127.7-37.5,0-71.8,15.6-95.7,42.6-13.5-7.3-29.1-11.4-44.7-11.4-48.9,0-89.5,35.3-96.8,83.1-38.4,18.6-63.4,58.1-63.4,101.7 0,62.3 51,113.2 113.4,113.2h281.9c52,0 93.6-41.5 94.7-92.4 5.68434e-14-40.5-26-75.8-63.5-88.3zm-31.2,159.9h-281.9c-51,0-92.6-41.5-92.6-92.4 0-37.4 21.8-70.6 56.2-85.1 3.1-1 6.2-4.2 6.2-8.3 3.1-40.5 35.4-70.6 75.9-70.6 15.6,0 29.1,4.2 43.7,10.4 4.2,3.1 10.4,2.1 13.5-2.1 19.8-26 51-41.5 84.3-41.5 59.3,0 107.2,47.8 107.2,106.9 0,8.3-1,17.6-3.1,26-2.8,9.2 4.2,12.5 7.3,13.5 33.3,7.3 56.2,36.3 56.2,70.6 0,40.4-32.3,72.6-72.9,72.6z"/>\r\n      <path d="m161.1,232.3c11.5,0 20.9,9.3 20.9,20.8 0,3.9 3.1,7 7,7s7-3.1 7-7c0-19.2-15.7-34.8-34.9-34.8-19.3,0-34.9,15.6-34.9,34.8s15.7,34.8 34.9,34.8c11.5,0 20.9,9.3 20.9,20.8 0,11.5-9.4,20.8-20.9,20.8s-20.9-9.3-20.9-20.8c0-3.9-3.1-7-7-7-3.9,0-7,3.1-7,7 0,19.2 15.7,34.8 34.9,34.8 19.3,0 34.9-15.6 34.9-34.8s-15.7-34.7-34.9-34.7c-11.5,0-20.9-9.3-20.9-20.8s9.4-20.9 20.9-20.9z"/>\r\n      <path d="M276,232.3c3.9,0,7-3.1,7-7s-3.1-7-7-7h-56.6c-3.9,0-7,3.1-7,7v111.4c0,3.9,3.1,7,7,7H276c3.9,0,7-3.1,7-7s-3.1-7-7-7    h-49.6V288H276c3.9,0,7-3.1,7-7s-3.1-7-7-7h-49.6v-41.7H276z"/>\r\n      <path d="m338.7,218.3c-13,0-25.1,6.8-34.1,19.2-8.4,11.7-13.1,27.1-13.1,43.5s4.6,31.8 13.1,43.5c8.9,12.4 21,19.2 34.1,19.2s25.1-6.8 34.1-19.2c8.4-11.7 13.1-27.1 13.1-43.5s-4.6-31.8-13.1-43.5c-9-12.4-21.1-19.2-34.1-19.2zm0,111.3c-18.3,0-33.1-21.8-33.1-48.7 0-26.8 14.9-48.7 33.1-48.7 18.3,0 33.1,21.8 33.1,48.7 0,26.9-14.8,48.7-33.1,48.7z"/>\r\n    </g>\r\n  </g>\r\n</svg>
5	Design UX/UI (Expérience et Interface Utilisateur)	UX-UI	Le design UX/UI combine esthétique et expérience utilisateur. Il crée des interfaces intuitives, fluides et engageantes. En analysant les besoins des utilisateurs, il optimise l’interaction et améliore la satisfaction, favorisant ainsi l’engagement et la conversion.	<svg width="25px" height="26px" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="none"><path  fill-rule="evenodd" d="M1 12C1 5.925 5.925 1 12 1s11 4.925 11 11-4.925 11-11 11S1 18.075 1 12zm13.8-2.6a1 1 0 0 0-1.6 1.2l1.05 1.4-1.05 1.4a1 1 0 0 0 1.6 1.2l.7-.933.7.933a1 1 0 0 0 1.6-1.2L16.75 12l1.05-1.4a1 1 0 0 0-1.6-1.2l-.7.933-.7-.933zM8 10a1 1 0 1 0-2 0v2c0 .493.14 1.211.588 1.834C7.074 14.51 7.874 15 9 15s1.926-.492 2.412-1.166c.448-.623.588-1.34.588-1.834v-2a1 1 0 1 0-2 0v2c0 .173-.06.456-.212.666-.114.159-.314.334-.788.334-.474 0-.674-.175-.788-.334A1.239 1.239 0 0 1 8 12v-2z" clip-rule="evenodd"/></svg>
6	Design pour les Applications Web	DESIGN	Le design pour les applications web crée des interfaces intuitives et interactives. Il se concentre sur l’expérience utilisateur, la fluidité des interactions et l’adaptabilité, garantissant une navigation optimale et une efficacité accrue sur diverses plateformes.	<svg version="1.1" id="Uploaded to svgrepo.com" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" \r\n\t width="25px" height="25px" viewBox="0 0 32 32" xml:space="preserve">\r\n<path class="stone_een" d="M15,10h2v2h-2V10z M6.5,10C6.224,10,6,10.224,6,10.5S6.224,11,6.5,11S7,10.776,7,10.5S6.776,10,6.5,10z\r\n\t M21.5,29H20v-2h-8v2h-1.5c-0.276,0-0.5,0.224-0.5,0.5c0,0.276,0.224,0.5,0.5,0.5h11c0.276,0,0.5-0.224,0.5-0.5\r\n\tC22,29.224,21.776,29,21.5,29z M32,7v16c0,1.657-1.343,3-3,3H3c-1.657,0-3-1.343-3-3V7c0-1.657,1.343-3,3-3h26\r\n\tC30.657,4,32,5.343,32,7z M26.966,10.174c-0.12-0.572-0.587-1.03-1.16-1.144c-0.782-0.154-1.475,0.3-1.713,0.97H18V9h-4v1H7.908\r\n\tC7.67,9.33,6.976,8.876,6.195,9.03c-0.573,0.113-1.04,0.572-1.16,1.144C4.83,11.145,5.565,12,6.5,12c0.652,0,1.202-0.419,1.408-1H14\r\n\tv0.224c-4.388,0.897-7.745,4.658-7.986,9.246C5.999,20.757,6.227,21,6.515,21h0c0.263,0,0.484-0.204,0.497-0.467\r\n\tc0.209-4.065,3.134-7.41,6.988-8.289V13h4v-0.757c3.854,0.88,6.779,4.225,6.988,8.289C25.002,20.796,25.222,21,25.485,21h0\r\n\tc0.288,0,0.516-0.243,0.501-0.53c-0.241-4.588-3.598-8.349-7.986-9.246V11h6.092c0.207,0.581,0.756,1,1.408,1\r\n\tC26.435,12,27.17,11.145,26.966,10.174z M25.5,10c-0.276,0-0.5,0.224-0.5,0.5s0.224,0.5,0.5,0.5s0.5-0.224,0.5-0.5\r\n\tS25.776,10,25.5,10z"/>\r\n</svg>
\.


--
-- TOC entry 3438 (class 0 OID 16454)
-- Dependencies: 228
-- Data for Name: site; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.site (id, domaine, auteur, tel, emails, adresse, slug) FROM stdin;
1	https://dyc-c6rx.onrender.com	DyCathecorde	620904706	junior.sineno@loopcv.com	Carrefour Combie, Douala	Création front-end de site web
\.


--
-- TOC entry 3440 (class 0 OID 16463)
-- Dependencies: 230
-- Data for Name: social; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.social (id, url, svg) FROM stdin;
2	https://wa.me/message/NFKXUGUYJDE2F1	\r\n<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">\r\n<path fill-rule="evenodd" clip-rule="evenodd" d="M16 31C23.732 31 30 24.732 30 17C30 9.26801 23.732 3 16 3C8.26801 3 2 9.26801 2 17C2 19.5109 2.661 21.8674 3.81847 23.905L2 31L9.31486 29.3038C11.3014 30.3854 13.5789 31 16 31ZM16 28.8462C22.5425 28.8462 27.8462 23.5425 27.8462 17C27.8462 10.4576 22.5425 5.15385 16 5.15385C9.45755 5.15385 4.15385 10.4576 4.15385 17C4.15385 19.5261 4.9445 21.8675 6.29184 23.7902L5.23077 27.7692L9.27993 26.7569C11.1894 28.0746 13.5046 28.8462 16 28.8462Z" fill="#BFC8D0"/>\r\n<path d="M28 16C28 22.6274 22.6274 28 16 28C13.4722 28 11.1269 27.2184 9.19266 25.8837L5.09091 26.9091L6.16576 22.8784C4.80092 20.9307 4 18.5589 4 16C4 9.37258 9.37258 4 16 4C22.6274 4 28 9.37258 28 16Z" fill="url(#paint0_linear_87_7264)"/>\r\n<path fill-rule="evenodd" clip-rule="evenodd" d="M16 30C23.732 30 30 23.732 30 16C30 8.26801 23.732 2 16 2C8.26801 2 2 8.26801 2 16C2 18.5109 2.661 20.8674 3.81847 22.905L2 30L9.31486 28.3038C11.3014 29.3854 13.5789 30 16 30ZM16 27.8462C22.5425 27.8462 27.8462 22.5425 27.8462 16C27.8462 9.45755 22.5425 4.15385 16 4.15385C9.45755 4.15385 4.15385 9.45755 4.15385 16C4.15385 18.5261 4.9445 20.8675 6.29184 22.7902L5.23077 26.7692L9.27993 25.7569C11.1894 27.0746 13.5046 27.8462 16 27.8462Z" fill="white"/>\r\n<path d="M12.5 9.49989C12.1672 8.83131 11.6565 8.8905 11.1407 8.8905C10.2188 8.8905 8.78125 9.99478 8.78125 12.05C8.78125 13.7343 9.52345 15.578 12.0244 18.3361C14.438 20.9979 17.6094 22.3748 20.2422 22.3279C22.875 22.2811 23.4167 20.0154 23.4167 19.2503C23.4167 18.9112 23.2062 18.742 23.0613 18.696C22.1641 18.2654 20.5093 17.4631 20.1328 17.3124C19.7563 17.1617 19.5597 17.3656 19.4375 17.4765C19.0961 17.8018 18.4193 18.7608 18.1875 18.9765C17.9558 19.1922 17.6103 19.083 17.4665 19.0015C16.9374 18.7892 15.5029 18.1511 14.3595 17.0426C12.9453 15.6718 12.8623 15.2001 12.5959 14.7803C12.3828 14.4444 12.5392 14.2384 12.6172 14.1483C12.9219 13.7968 13.3426 13.254 13.5313 12.9843C13.7199 12.7145 13.5702 12.305 13.4803 12.05C13.0938 10.953 12.7663 10.0347 12.5 9.49989Z" fill="white"/>\r\n<defs>\r\n<linearGradient id="paint0_linear_87_7264" x1="26.5" y1="7" x2="4" y2="28" gradientUnits="userSpaceOnUse">\r\n<stop stop-color="#5BD066"/>\r\n<stop offset="1" stop-color="#27B43E"/>\r\n</linearGradient>\r\n</defs>\r\n</svg>
1	https://www.linkedin.com/in/junior-sineno-a25109196?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app	<svg viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">\n<circle cx="24" cy="24" r="20" fill="#0077B5"/>\n<path fill-rule="evenodd" clip-rule="evenodd" d="M18.7747 14.2839C18.7747 15.529 17.8267 16.5366 16.3442 16.5366C14.9194 16.5366 13.9713 15.529 14.0007 14.2839C13.9713 12.9783 14.9193 12 16.3726 12C17.8267 12 18.7463 12.9783 18.7747 14.2839ZM14.1199 32.8191V18.3162H18.6271V32.8181H14.1199V32.8191Z" fill="white"/>\n<path fill-rule="evenodd" clip-rule="evenodd" d="M22.2393 22.9446C22.2393 21.1357 22.1797 19.5935 22.1201 18.3182H26.0351L26.2432 20.305H26.3322C26.9254 19.3854 28.4079 17.9927 30.8101 17.9927C33.7752 17.9927 35.9995 19.9502 35.9995 24.219V32.821H31.4922V24.7838C31.4922 22.9144 30.8404 21.6399 29.2093 21.6399C27.9633 21.6399 27.2224 22.4999 26.9263 23.3297C26.8071 23.6268 26.7484 24.0412 26.7484 24.4574V32.821H22.2411V22.9446H22.2393Z" fill="white"/>\n</svg>
\.


--
-- TOC entry 3442 (class 0 OID 16472)
-- Dependencies: 232
-- Data for Name: temoignage; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.temoignage (id, image, nom, metier, description) FROM stdin;
1	1.jpg	M. TJEGA MOISE JUNIOR	CEO MULEMA CCHU	Sineno est un développeur web exceptionnel, avec des compétences en HTML, CSS, JavaScript et plus. Il crée des sites web et applications de haute qualité, résout des problèmes complexes et améliore l'expérience utilisateur. Je le recommande vivement pour ses compétences et sa détermination.
2	2.jpg	M. Fabrice Armel NOUBAYOU NGAMBOU	Designer professionnel 	Ce développeur web est compétent, avec une bonne compréhension des technologies web. Il crée des solutions efficaces et répond aux besoins des clients. Globalement, il fait du bon travail.
\.


--
-- TOC entry 3444 (class 0 OID 16481)
-- Dependencies: 234
-- Data for Name: visite; Type: TABLE DATA; Schema: public; Owner: dyc_db_user
--

COPY public.visite (id, interface, device, date, heure) FROM stdin;
1	PC	Go-http-client/1.1	2025-01-02	04:32:33
2	PC	Go-http-client/2.0	2025-01-02	04:32:42
3	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	2025-01-02	04:34:04
4	PC	Go-http-client/1.1	2025-01-02	04:35:31
5	PC	Go-http-client/2.0	2025-01-02	04:35:43
6	PC	Go-http-client/1.1	2025-01-02	04:42:32
7	PC	Go-http-client/2.0	2025-01-02	04:42:42
8	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	2025-01-02	04:42:51
9	PC	Go-http-client/1.1	2025-01-02	13:49:33
10	Mobile	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36	2025-01-02	19:55:09
11	PC	Go-http-client/1.1	2025-01-03	02:07:14
12	PC	Go-http-client/2.0	2025-01-03	02:07:17
13	PC	Go-http-client/1.1	2025-01-03	03:07:24
14	PC	Go-http-client/2.0	2025-01-03	03:07:34
15	PC	Go-http-client/1.1	2025-01-03	03:09:20
16	PC	Go-http-client/2.0	2025-01-03	03:09:30
17	PC	Go-http-client/1.1	2025-01-03	03:20:52
18	PC	Go-http-client/2.0	2025-01-03	03:21:01
19	PC	Go-http-client/1.1	2025-01-03	23:49:46
20	PC	Go-http-client/2.0	2025-01-03	23:49:53
21	PC	Go-http-client/1.1	2025-01-03	23:57:10
22	PC	Go-http-client/2.0	2025-01-03	23:57:15
23	PC	Go-http-client/1.1	2025-01-04	00:02:49
24	PC	Go-http-client/2.0	2025-01-04	00:02:59
25	PC	Go-http-client/1.1	2025-01-04	00:07:07
26	PC	Go-http-client/2.0	2025-01-04	00:07:13
27	PC	Go-http-client/1.1	2025-01-04	04:02:48
28	PC	Go-http-client/2.0	2025-01-04	04:02:59
29	PC	Go-http-client/1.1	2025-01-04	04:08:35
30	PC	Go-http-client/2.0	2025-01-04	04:08:44
31	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.114 Safari/537.36	2025-01-04	09:07:53
32	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.141 Safari/537.36	2025-01-04	09:08:34
33	Mobile	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36	2025-01-05	05:01:30
34	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-05	05:01:36
35	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-05	05:01:38
36	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-05	05:01:38
37	Mobile	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36	2025-01-05	05:02:09
38	PC	facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)	2025-01-05	05:09:43
39	PC	facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)	2025-01-05	05:09:43
40	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36	2025-01-05	05:22:52
41	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36	2025-01-05	05:25:50
42	PC	facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)	2025-01-05	05:26:41
43	Mobile	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36	2025-01-05	05:30:37
44	Mobile	Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/27.0 Chrome/125.0.0.0 Mobile Safari/537.36	2025-01-05	05:30:43
45	Mobile	Mozilla/5.0 (iPhone; CPU iPhone OS 17_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/21G93 [FBAN/FBIOS;FBAV/494.0.0.50.98;FBBV/675122596;FBDV/iPhone12,5;FBMD/iPhone;FBSN/iOS;FBSV/17.6.1;FBSS/3;FBID/phone;FBLC/fr_FR;FBOP/5;FBRV/680644226;IABMV/1]	2025-01-05	05:34:57
46	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	2025-01-05	18:23:13
47	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0	2025-01-05	18:25:28
48	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-06	07:33:30
49	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-06	07:33:31
50	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-06	07:33:32
51	Mobile	Mozilla/5.0 (Linux; Android 10; TECNO B1g Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.135 Mobile Safari/537.36[FBAN/EMA;FBLC/fr_FR;FBAV/438.0.0.13.102;FBCX/modulariab;]	2025-01-06	07:37:10
52	Mobile	Mozilla/5.0 (Linux; Android 10; JSN-L21 Build/HONORJSN-L21; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/494.0.0.55.73;IABMV/1;]	2025-01-06	10:27:26
53	Mobile	Mozilla/5.0 (Linux; Android 10; JSN-L21 Build/HONORJSN-L21; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.131 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/494.0.0.55.73;IABMV/1;] FBNV/5	2025-01-06	10:28:49
54	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.6523.4 Safari/537.36	2025-01-10	19:52:15
55	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.6422.78 Safari/537.36	2025-01-10	19:53:31
56	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-11	07:36:13
57	Mobile	Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)	2025-01-11	07:36:14
58	Mobile	Mozilla/5.0 (Linux; Android 11; M2004J19C Build/RP1A.200720.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.201 Mobile Safari/537.36 WpsMoffice/18.12.1/arm64-v8a/1513	2025-01-11	07:55:24
59	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36	2025-01-17	02:48:40
60	PC	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/600.3.18 (KHTML, like Gecko) Version/8.0.3 Safari/600.3.18	2025-01-17	02:48:56
61	PC	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36	2025-01-17	02:48:57
62	PC	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_2) AppleWebKit/600.3.18 (KHTML, like Gecko) Version/8.0.3 Safari/600.3.18	2025-01-17	02:48:58
\.


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 215
-- Name: admin_id_adm_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.admin_id_adm_seq', 1, false);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 217
-- Name: blog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.blog_id_seq', 2, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 219
-- Name: fichier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.fichier_id_seq', 1, false);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 221
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.message_id_seq', 3, true);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 223
-- Name: projet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.projet_id_seq', 6, true);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 225
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.service_id_seq', 6, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 227
-- Name: site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.site_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 229
-- Name: social_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.social_id_seq', 2, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 231
-- Name: temoignage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.temoignage_id_seq', 2, true);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 233
-- Name: visite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dyc_db_user
--

SELECT pg_catalog.setval('public.visite_id_seq', 62, true);


--
-- TOC entry 3263 (class 2606 OID 16405)
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (id_adm);


--
-- TOC entry 3265 (class 2606 OID 16415)
-- Name: blog blog_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.blog
    ADD CONSTRAINT blog_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 16425)
-- Name: fichier fichier_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.fichier
    ADD CONSTRAINT fichier_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16434)
-- Name: message message_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 16443)
-- Name: projet projet_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 16452)
-- Name: service service_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 16461)
-- Name: site site_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.site
    ADD CONSTRAINT site_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 16470)
-- Name: social social_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.social
    ADD CONSTRAINT social_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 16479)
-- Name: temoignage temoignage_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.temoignage
    ADD CONSTRAINT temoignage_pkey PRIMARY KEY (id);


--
-- TOC entry 3281 (class 2606 OID 16488)
-- Name: visite visite_pkey; Type: CONSTRAINT; Schema: public; Owner: dyc_db_user
--

ALTER TABLE ONLY public.visite
    ADD CONSTRAINT visite_pkey PRIMARY KEY (id);


--
-- TOC entry 2084 (class 826 OID 16391)
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO dyc_db_user;


--
-- TOC entry 2086 (class 826 OID 16393)
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO dyc_db_user;


--
-- TOC entry 2085 (class 826 OID 16392)
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO dyc_db_user;


--
-- TOC entry 2083 (class 826 OID 16390)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT SELECT,INSERT,REFERENCES,DELETE,TRIGGER,TRUNCATE,UPDATE ON TABLES TO dyc_db_user;


-- Completed on 2025-01-26 08:49:30

--
-- PostgreSQL database dump complete
--

