-- Revert postgrest:gist_index_plot_column_movies from pg

BEGIN;

DROP INDEX IF EXISTS gist_plot_full_text_index;

COMMIT;
