-- Revert postgrest:add_resources_table from pg

BEGIN;

DROP TABLE resources;

COMMIT;
