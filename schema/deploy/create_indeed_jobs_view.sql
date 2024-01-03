-- Deploy postgrest:create_indeed_jobs_view to pg

BEGIN;

CREATE VIEW indeed_jobs AS
select country, to_timestamp(created_date)::date as created_date, location, title, search_term, salary_type, max_salary_yearly, min_salary_yearly, salary_max, salary_min, salary_currency 
from indeed 
where date(inserted_date) = '2024-01-03' and to_timestamp(created_date)::date > '2023-01-01'
order by max_salary_yearly desc;

COMMIT;
