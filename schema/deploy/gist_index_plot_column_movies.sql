-- Deploy postgrest:gist_index_plot_column_movies to pg

BEGIN;

CREATE INDEX gist_plot_full_text_index ON movies USING GIST (to_tsvector('english', plot));

COMMIT;
