-- Revert postgrest:create_gumroad_table from pg

BEGIN;

DROP TABLE gumroad;

COMMIT;
