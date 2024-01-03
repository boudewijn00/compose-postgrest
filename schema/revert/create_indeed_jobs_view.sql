-- Revert postgrest:create_indeed_jobs_view from pg

BEGIN;

DROP VIEW indeed_jobs;

COMMIT;
