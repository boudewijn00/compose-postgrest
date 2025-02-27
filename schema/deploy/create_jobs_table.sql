-- Deploy postgrest:create_jobs_table to pg

BEGIN;

CREATE TABLE indeed (
    id bigint generated by default as identity primary key,
    apply_count int,
    company text NOT NULL,
    company_rating decimal NOT NULL,
    company_review_count int NOT NULL,
    company_overview_link text,
    company_id_encrypted text,
    country text NOT NULL,
    description text,
    expired boolean NOT NULL,
    external_created_at bigint NOT NULL,
    external_published_at bigint NOT NULL,
    external_id text NOT NULL,
    formatted_relative_time text NOT NULL,
    job_card_requirements_model json NOT NULL,
    location text NOT NULL,
    more_loc_url text NOT NULL, 
    postal text,
    remote_work_model_type text,
    salary_currency text,
    salary_min int,
    salary_min_yearly int,
    salary_max int,
    salary_max_yearly int,
    salary_type text,
    search_term text NOT NULL,
    skills text,
    snippet text,
    state text,
    title text NOT NULL,  
    created_at timestamp with time zone NOT NULL DEFAULT now(),
    updated_at timestamp with time zone NOT NULL DEFAULT now()
);

COMMIT;
