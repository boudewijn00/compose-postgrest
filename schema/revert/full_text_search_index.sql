-- Revert postgrest:full_text_search_index from pg

BEGIN;

DROP INDEX IF EXISTS plot_full_text_index;

COMMIT;
