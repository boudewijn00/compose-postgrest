-- Revert postgrest:users from pg

BEGIN;

DROP TABLE users;

COMMIT;
