-- Revert tech-weights:appschema from pg

BEGIN;

DROP SCHEMA techweights;

COMMIT;
