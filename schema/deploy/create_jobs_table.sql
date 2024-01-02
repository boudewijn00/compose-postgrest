-- Deploy postgrest:create_jobs_table to pg

BEGIN;

CREATE TABLE indeed (
    id bigint generated by default as identity primary key,
    apply_count int,
    company text NOT NULL,
    company_rating decimal NOT NULL,
    company_review_count int NOT NULL,
    company_overview_link text,
    company_id_encrypted text NOT NULL,
    country text NOT NULL,
    created_date bigint NOT NULL,
    description text,
    expired boolean NOT NULL,
    formatted_relative_time text NOT NULL,
    job_key text NOT NULL,
    job_card_requirements_model json NOT NULL,
    location text NOT NULL,
    min_salary_yearly int,
    max_salary_yearly int,
    more_loc_url text NOT NULL, 
    postal text,
    published_date bigint NOT NULL,
    remote_work_model_type text,
    salary_min int,
    salary_max int,
    salary_type text,
    salary_currency text,
    search_term text NOT NULL,
    snippet text,
    state text,
    title text NOT NULL,  
    inserted_date timestamp default current_timestamp
);

COMMIT;
