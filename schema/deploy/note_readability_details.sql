-- Deploy postgrest:note_readability_details to pg

BEGIN;

ALTER TABLE notes 
ADD COLUMN link_content text, 
ADD COLUMN link_length int,
ADD COLUMN link_excerpt text, 
ADD COLUMN link_by_line text;

COMMIT;
