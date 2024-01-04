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
salary_max_yearly, 
salary_min_yearly, 
salary_currency,
remote_work_model_type,
'https://' || country || '.indeed.com' || more_loc_url,
apply_count
from indeed 
where date(inserted_date) = CURRENT_DATE and to_timestamp(created_date)::date > '2023-01-01'
order by salary_max_yearly desc;

COMMIT;
