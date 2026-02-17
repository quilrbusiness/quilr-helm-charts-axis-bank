DROP TABLE IF EXISTS default.app_tenant_settings ;

CREATE TABLE default.app_tenant_settings
(
    `subscriber` String,
    `tenant` String,
    `app_name` LowCardinality(String),
    `domain` LowCardinality(String),
    `app_id` LowCardinality(String),
    `app_type` LowCardinality(String),
    `admin_users` JSON,
    `approval_status` LowCardinality(String),
    `isLicensed` LowCardinality(String),
    `criticality` LowCardinality(String),
    `isBlocked` LowCardinality(String),
    `last_updated` UInt64 DEFAULT 0,
    `index_time` DateTime DEFAULT now(),
    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_type app_type TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_approval_status approval_status TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isLicensed isLicensed TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_criticality criticality TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isBlocked isBlocked TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber, tenant, app_name)
SETTINGS index_granularity = 8192;
