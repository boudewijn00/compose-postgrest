BEGIN;

SET client_encoding = 'UTF8';

CREATE TABLE notes (
    id bigint generated by default as identity primary key,
    note_id uuid NOT NULL,
    title text NOT NULL,
    body text NOT NULL,
    tags text [],
    parent_id uuid NOT NULL,
    created_time bigint NOT NULL,
    order_id bigint NOT NULL
);

CREATE TABLE tags (
    id bigint generated by default as identity primary key,
    hash text NOT NULL,
    tag text NOT NULL,
    created timestamp default current_timestamp
);

COMMIT;

