-- Deploy postgrest:movies_search_tsvector to pg

BEGIN;

ALTER TABLE movies ADD search tsvector GENERATED ALWAYS AS
	(to_tsvector('english', Title) || ' ' ||
   to_tsvector('english', Plot) || ' ' ||
   to_tsvector('simple', Director) || ' ' ||
	 to_tsvector('simple', Genre) || ' ' ||
   to_tsvector('simple', Origin) || ' ' ||
   to_tsvector('simple', Casting)
) STORED;

CREATE INDEX idx_search ON movies USING GIN(search);

COMMIT;
