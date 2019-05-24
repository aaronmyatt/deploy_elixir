-- Verify tech-weights:appschema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('techweights', 'usage');

ROLLBACK;
