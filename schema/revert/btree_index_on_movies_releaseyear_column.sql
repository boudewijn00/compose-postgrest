-- Revert postgrest:btree_index_on_movies_releaseyear_column from pg

BEGIN;

DROP INDEX IF EXISTS brin_index_on_movies_releaseyear_column;

COMMIT;
