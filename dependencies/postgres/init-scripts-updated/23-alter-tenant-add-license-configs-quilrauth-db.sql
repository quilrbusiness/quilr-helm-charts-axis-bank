-- Connect to db for further operations

\connect quilr_auth;

ALTER TABLE tenant ADD COLUMN IF NOT EXISTS license_configs JSONB NULL;
