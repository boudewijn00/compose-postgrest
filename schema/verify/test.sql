-- Verify postgrest:test on pg

BEGIN;

SELECT * FROM test LIMIT 0; -- will error if users does not exist

ROLLBACK;
