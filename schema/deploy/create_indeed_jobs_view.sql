-- Deploy postgrest:create_indeed_jobs_view to pg

BEGIN;

CREATE VIEW indeed_jobs AS
select 
job_key,
to_timestamp(created_date)::date as created_date, 
country, 
location, 
company,
search_term, 
title,
snippet,
salary_type, 
max_salary_yearly, 
min_salary_yearly, 
salary_currency,
remote_work_model_type,
more_loc_url,
apply_count
from indeed 
where date(inserted_date) = CURRENT_DATE and to_timestamp(created_date)::date > '2023-01-01'
order by max_salary_yearly desc;

COMMIT;
