-- Connect to db for further operations

\connect quilr;

DROP TABLE IF EXISTS tenant_config ;

CREATE TABLE tenant_config (
    tenant_id VARCHAR(255) NOT NULL,
    created TIMESTAMP(6) NOT NULL,
    extra_info JSONB NULL,
    last_updated TIMESTAMP(6) NULL,
    mdm_configs JSONB NULL,
    persona_configs JSONB NULL,
    subscriber_id VARCHAR(255) NULL,
    CONSTRAINT tenant_config_pkey PRIMARY KEY (tenant_id)
);

-- Extend tenant_config with storage_configs column
ALTER TABLE tenant_config ADD COLUMN storage_configs JSONB NULL;
