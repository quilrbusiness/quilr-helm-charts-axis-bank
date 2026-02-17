CREATE TABLE IF NOT EXISTS default.compromised_password_status_tracker
(
    `subscriber` String,
    `tenant` String,
    `user_principalname` LowCardinality(String),
    `user_name` String,
    `app_id` LowCardinality(String),
    `app_name` LowCardinality(String),
    `approval_status` String,
    `last_updated` UInt64 DEFAULT toUInt64(now64()),
    `index_time` DateTime DEFAULT now(),
    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplicatedReplacingMergeTree(
    '/clickhouse/tables/{shard}/compromised_password_status_tracker',
    '{replica}',
    last_updated
)
PARTITION BY tenant
ORDER BY (subscriber, tenant, user_principalname, app_name)
SETTINGS index_granularity = 8192;