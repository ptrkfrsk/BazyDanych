-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2020-10-14 16:45:59.537
-- Patryk Frasik

-- tables
-- Table: producenci
CREATE TABLE producenci (
    id_producenta SERIAL  NOT NULL,
    nazwa_producenta varchar  NOT NULL,
    mail varchar  NOT NULL,
    cena decimal(10,2)  NOT NULL,
    CONSTRAINT producenci_pk PRIMARY KEY (id_producenta)
);

-- Table: produkty
CREATE TABLE produkty (
    id_produktu SERIAL  NOT NULL,
    nazwa_produktu varchar  NOT NULL,
    cena decimal(10,2)  NOT NULL,
    producenci_id_producenta int  NOT NULL,
    CONSTRAINT produkty_pk PRIMARY KEY (id_produktu)
);

-- Table: zamowienia
CREATE TABLE zamowienia (
    id_zamowienia SERIAL  NOT NULL,
    data decimal(10,2)  NOT NULL,
    produkty_id_produktu int  NOT NULL,
    liczba int  NOT NULL,
    CONSTRAINT zamowienia_pk PRIMARY KEY (id_zamowienia)
);

-- foreign keys
-- Reference: produkty_producenci (table: produkty)
ALTER TABLE produkty ADD CONSTRAINT produkty_producenci
    FOREIGN KEY (producenci_id_producenta)
    REFERENCES producenci (id_producenta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: zamowienia_produkty (table: zamowienia)
ALTER TABLE zamowienia ADD CONSTRAINT zamowienia_produkty
    FOREIGN KEY (produkty_id_produktu)
    REFERENCES produkty (id_produktu)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

