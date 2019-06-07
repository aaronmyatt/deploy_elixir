SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;
SELECT plan(5);

SELECT has_table( 'app'::name, 'people'::name );
SELECT has_column( 'app'::name, 'people'::name, 'id'::name, 'has id column');
SELECT has_column( 'app'::name, 'people'::name, 'name'::name, 'has name column');
SELECT has_column( 'app'::name, 'people'::name, 'email'::name, 'has email column');
SELECT has_column( 'app'::name, 'people'::name, 'password_hash'::name, 'has password_hash column');

SELECT finish();
ROLLBACK;
