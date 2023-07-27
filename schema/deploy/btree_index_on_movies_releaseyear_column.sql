-- Deploy postgrest:btree_index_on_movies_releaseyear_column to pg

BEGIN;

CREATE INDEX brin_index_on_movies_releaseyear_column ON movies USING BRIN (releaseyear);

COMMIT;
