-- Revert tech-weights:user_table from pg

BEGIN;

DROP table app.people;

COMMIT;
