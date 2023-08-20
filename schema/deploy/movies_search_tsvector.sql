-- Deploy postgrest:movies_search_tsvector to pg

BEGIN;

ALTER TABLE movies ADD search tsvector GENERATED ALWAYS AS
	(to_tsvector('english', Title) || ' ' ||
   to_tsvector('english', Plot)
) STORED;

CREATE INDEX idx_search ON movies USING GIN(search);

COMMIT;
