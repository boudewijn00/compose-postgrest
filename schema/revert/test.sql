-- Revert postgrest:test from pg

BEGIN;

DROP TABLE test;

COMMIT;
