-- Deploy postgrest:gist_index_plot_column_movies to pg

BEGIN;

DROP INDEX IF EXISTS plot_full_text_index;
CREATE INDEX gist_plot_full_text_index ON movies USING GIST (to_tsvector('english', plot));

COMMIT;
