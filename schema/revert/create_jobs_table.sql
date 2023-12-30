-- Revert postgrest:create_jobs_table from pg

BEGIN;

DROP TABLE indeed;

COMMIT;
