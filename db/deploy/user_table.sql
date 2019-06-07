-- Deploy tech-weights:user_table to pg
-- requires: appschema

BEGIN;

CREATE TABLE app.people (
    id SERIAL PRIMARY KEY,
    name text,
    email text not null unique,
    password_hash text not null
);

COMMIT;
