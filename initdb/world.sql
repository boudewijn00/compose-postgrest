--
-- PostgreSQL port of the MySQL "World" database.
--
-- The sample data used in the world database is Copyright Statistics 
-- Finland, http://www.stat.fi/worldinfigures.
--

BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE houses (
    id integer NOT NULL,
    city text NOT NULL,
    street text NOT NULL,
    house_number text NOT NULL,
    zip_code text NOT NULL
);

INSERT INTO houses (id, city, street, house_number, zip_code)
VALUES (1, 'Kabul', 'AFG', 'Kabol', '1780000');

ALTER TABLE ONLY houses
    ADD CONSTRAINT houses_pkey PRIMARY KEY (id);

COMMIT;

ANALYZE houses;

