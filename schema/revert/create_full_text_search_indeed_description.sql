-- Revert postgrest:create_full_text_search_indeed_description from pg

BEGIN;

DROP INDEX IF EXISTS description_full_text_index;

COMMIT;
