-- Revert postgrest:movies_search_tsvector from pg

BEGIN;

DROP COLUMN IF EXISTS search;
DROP INDEX IF EXISTS idx_search;

COMMIT;
