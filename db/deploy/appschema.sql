-- Deploy tech-weights:appschema to pg

BEGIN;

CREATE SCHEMA IF NOT EXISTS app;

COMMIT;
