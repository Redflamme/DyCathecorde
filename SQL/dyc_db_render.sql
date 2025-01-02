-- Structure de la table admin
DROP TABLE IF EXISTS admin;
CREATE TABLE admin (
    id_adm SERIAL PRIMARY KEY,
    email VARCHAR(100),
    mdp VARCHAR(100),
    nom VARCHAR(100),
    image VARCHAR(100)
);

-- Données de la table admin
INSERT INTO admin (id_adm, email, mdp, nom, image) VALUES
(1, 'dycathecorde@gmail.com', 'Metal@slug2', 'Junior Sineno', '1.png');

-- Structure de la table blog
DROP TABLE IF EXISTS blog;
CREATE TABLE blog (
    id SERIAL PRIMARY KEY,
    image VARCHAR(100),
    titre VARCHAR(100),
    introduction TEXT,
    developpement TEXT,
    date DATE,
    id_adm INT
);

-- Données de la table blog
INSERT INTO blog (id, image, titre, introduction, developpement, date, id_adm) VALUES
(4, '676da9de42bc2.png', 'Creation de site web design!', 'Introduction content', 'Developpement content', '2024-12-26', 1);

-- Structure de la table fichier
DROP TABLE IF EXISTS fichier;
CREATE TABLE fichier (
    id SERIAL PRIMARY KEY,
    fichier BYTEA
);

-- Structure de la table message
DROP TABLE IF EXISTS message;
CREATE TABLE message (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    tel BIGINT NOT NULL,
    sujet VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    date DATE NOT NULL
);

-- Données de la table message
INSERT INTO message (id, nom, email, tel, sujet, message, date) VALUES
(1, 'dyCathecode', 'dycathecorde@gmail.com', 688229889, 'php', 'valider', '2024-12-16');

-- Structure de la table projet
DROP TABLE IF EXISTS projet;
CREATE TABLE projet (
    id SERIAL PRIMARY KEY,
    image VARCHAR(100),
    titre VARCHAR(100),
    description TEXT,
    fini VARCHAR(100),
    lien TEXT,
    languages VARCHAR(100)
);

-- Données de la table projet
INSERT INTO projet (id, image, titre, description, fini, lien, languages) VALUES
(19, '19.PNG', 'Login', 'Front', 'Non', '', 'web');

-- Structure de la table service
DROP TABLE IF EXISTS service;
CREATE TABLE service (
    id SERIAL PRIMARY KEY,
    titre VARCHAR(100),
    abreviation VARCHAR(100),
    description TEXT,
    svg TEXT
);

-- Structure de la table site
DROP TABLE IF EXISTS site;
CREATE TABLE site (
    id SERIAL PRIMARY KEY,
    domaine VARCHAR(100) NOT NULL,
    auteur VARCHAR(100),
    tel BIGINT,
    emails VARCHAR(100),
    adresse VARCHAR(100),
    slug TEXT
);

-- Données de la table site
INSERT INTO site (id, domaine, auteur, tel, emails, adresse, slug) VALUES
(1, 'DyC.cm', 'DyCathecorde', 620904706, 'Juniorsinenno@gmail.com', 'Carrefour Combie, Douala', 'Création front-end de site web');

-- Structure de la table social
DROP TABLE IF EXISTS social;
CREATE TABLE social (
    id SERIAL PRIMARY KEY,
    url VARCHAR(100),
    svg TEXT
);

-- Structure de la table temoignage
DROP TABLE IF EXISTS temoignage;
CREATE TABLE temoignage (
    id SERIAL PRIMARY KEY,
    image VARCHAR(100),
    nom VARCHAR(100),
    metier VARCHAR(100),
    description TEXT
);

-- Structure de la table visite
DROP TABLE IF EXISTS visite;
CREATE TABLE visite (
    id SERIAL PRIMARY KEY,
    interface VARCHAR(100),
    device TEXT,
    date DATE,
    heure VARCHAR(100)
);