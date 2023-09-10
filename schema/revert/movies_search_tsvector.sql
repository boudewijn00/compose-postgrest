-- Revert postgrest:movies_search_tsvector from pg

BEGIN;

ALTER TABLE movies DROP COLUMN search;
DROP INDEX IF EXISTS idx_search;

COMMIT;
