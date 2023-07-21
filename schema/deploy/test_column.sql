-- Deploy postgrest:test_column to pg

BEGIN;

ALTER TABLE test ADD COLUMN test_column text;

COMMIT;
