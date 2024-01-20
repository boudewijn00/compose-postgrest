-- Revert postgrest:create_leanpub_table from pg

BEGIN;

DROP TABLE leanpub;

COMMIT;
