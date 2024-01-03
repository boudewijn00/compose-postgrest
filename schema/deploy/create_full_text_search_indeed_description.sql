-- Deploy postgrest:create_full_text_search_indeed_description to pg

BEGIN;

CREATE INDEX description_full_text_index ON indeed USING GIN (to_tsvector('english', description));

COMMIT;
