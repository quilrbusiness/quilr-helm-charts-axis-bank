-- Table Definition ----------------------------------------------

CREATE TABLE execution_controls (
    id BIGSERIAL PRIMARY KEY,
    actions jsonb NOT NULL,
    behavior jsonb NOT NULL,
    description character varying(1024),
    name character varying(255) NOT NULL,
    created_at bigint NOT NULL,
    created_by character varying(255) NOT NULL,
    criticality integer NOT NULL,
    findings_config jsonb NOT NULL,
    findings_lambda character varying(2500),
    findings_query character varying(4000) NOT NULL,
    is_active boolean NOT NULL,
    is_internal boolean NOT NULL,
    mode character varying(10) NOT NULL DEFAULT 'monitor'::character varying CHECK (mode::text = ANY (ARRAY['monitor'::character varying, 'action'::character varying]::text[])),
    posture jsonb NOT NULL,
    schedule character varying(255),
    slug character varying(255) NOT NULL,
    subscriber character varying(255),
    tenant character varying(255),
    trigger_conditions jsonb NOT NULL,
    updated_at bigint NOT NULL,
    updated_by character varying(255) NOT NULL,
    use_case jsonb NOT NULL,
    version character varying(255) NOT NULL,
    is_deleted boolean DEFAULT false,
    deletion_mode character varying(255) CHECK (deletion_mode::text = ANY (ARRAY['HARD'::character varying, 'SOFT'::character varying]::text[])),
    CONSTRAINT uc_slug_version_subscriber_tenant UNIQUE (slug, version, subscriber, tenant)
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX execution_controls_pkey ON execution_controls(id int8_ops);
CREATE UNIQUE INDEX uc_slug_version_subscriber_tenant ON execution_controls(slug text_ops,version text_ops,subscriber text_ops,tenant text_ops);
CREATE UNIQUE INDEX idx_unique_active_controls ON execution_controls(slug text_ops,is_active bool_ops,subscriber text_ops,tenant text_ops) WHERE is_active = true;
