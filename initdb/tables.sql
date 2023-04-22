--
-- PostgreSQL port of the MySQL "World" database.
--
-- The sample data used in the world database is Copyright Statistics 
-- Finland, http://www.stat.fi/worldinfigures.
--

BEGIN;

SET client_encoding = 'LATIN1';

CREATE TABLE houses (
    id serial primary key,
    city text NOT NULL,
    street text NOT NULL,
    house_number text NOT NULL,
    zip_code text NOT NULL
);

CREATE TABLE notes (
    id serial primary key,
    title text NOT NULL,
    body text NOT NULL,
    tags json NULL,
    created timestamp with time zone NOT NULL
);

INSERT INTO houses (id, city, street, house_number, zip_code)
VALUES (1, 'Kabul', 'AFG', 'Kabol', '1780000');

INSERT INTO notes (id, title, body, tags, created)
VALUES (1, 'First note', 'This is the first note', '["first", "note"]', '2017-01-01 00:00:00');

COMMIT;

ANALYZE houses;

