-- Connect to db for further operations

\connect quilr;

DROP TABLE IF EXISTS ai_conv_filters ;

CREATE TABLE ai_conv_filters (
    id SERIAL PRIMARY KEY,
    subscriber_id VARCHAR NOT NULL,
    tenant_id VARCHAR NOT NULL,
    user_email VARCHAR NOT NULL,
    app_filters TEXT,
    account_filters TEXT,
    prompt_filters TEXT,
    model_filters TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    CONSTRAINT unique_subscriber_tenant_user UNIQUE (subscriber_id, tenant_id, user_email)
);
