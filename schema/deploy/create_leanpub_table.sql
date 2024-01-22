-- Deploy postgrest:create_leanpub_table to pg

BEGIN;

CREATE TABLE leanpub (
    id bigint generated by default as identity primary key,
    about text NOT NULL,
    author_avatar text,
    author_github text,
    author_id int NOT NULL,
    author_linkedin text,
    author_mastodon text,
    author_name text NOT NULL,
    author_profile text,
    author_twitter text,
    author_username text NOT NULL,
    author_youtube text,
    category text NOT NULL,
    cause_royalty_percentage decimal NOT NULL,
    external_created_at timestamp with time zone NOT NULL DEFAULT now(),
    external_id int NOT NULL,
    external_updated_at timestamp with time zone NOT NULL DEFAULT now(),
    free_minimum boolean NOT NULL,
    image text,
    language_name text NOT NULL,
    language_code text NOT NULL,
    latest_podcast_duration text,
    latest_podcast_episode_interview_date text,
    latest_podcast_episode_url text,
    max_price decimal NOT NULL,
    min_price decimal NOT NULL,
    num_copies_sold int,
    page_count int NOT NULL,
    sample_url text,
    slug text NOT NULL,
    subtitle text,
    suggested_price decimal NOT NULL,
    title text NOT NULL,
    toc text,
    type text NOT NULL,
    url text NOT NULL,
    word_count int,
    created_at timestamp with time zone NOT NULL DEFAULT now(),
    updated_at timestamp with time zone NOT NULL DEFAULT now()
);

COMMIT;