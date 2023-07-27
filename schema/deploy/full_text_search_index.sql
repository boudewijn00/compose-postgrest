-- Deploy postgrest:full_text_search_index to pg

BEGIN;

CREATE INDEX plot_full_text_index ON movies USING GIN (to_tsvector('english', plot));

COMMIT;
