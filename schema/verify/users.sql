-- Verify postgrest:users on pg

BEGIN;

SELECT * FROM users LIMIT 0; -- will error if users does not exist

ROLLBACK;
