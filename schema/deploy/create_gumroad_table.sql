-- Deploy postgrest:create_gumroad_table to pg

BEGIN;

CREATE TABLE gumroad (
    id bigint generated by default as identity primary key,
    attributes json,
    bundle_products json,
    currency_code text NOT NULL,
    description_html text NOT NULL,
    discount_code text,
    external_id text NOT NULL,
    free_trial boolean,
    price_cents int NOT NULL,
    product_name text NOT NULL,
    rating_counts json NOT NULL,
    refund_policy json,
    sales_count int,
    seller_name text NOT NULL,
    seller_id bigint NOT NULL,
    seller_profile_url text NOT NULL,
    summary text,
    thumbnail_url text,
    url text NOT NULL,
    created_at timestamp with time zone NOT NULL DEFAULT now(),
    updated_at timestamp with time zone NOT NULL DEFAULT now()
);

COMMIT;
