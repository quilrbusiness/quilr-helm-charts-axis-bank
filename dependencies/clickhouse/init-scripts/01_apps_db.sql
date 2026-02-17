DROP TABLE IF EXISTS default.apps_db ;

CREATE TABLE default.apps_db
(
    `subscriber` LowCardinality(String),
    `tenant` LowCardinality(String),
    `domain` LowCardinality(String),
    `app_id` LowCardinality(String),
    `app_name` LowCardinality(String),
    `app_category` LowCardinality(String),
    `app_sub_category` LowCardinality(String),
    `app_logo` String,
    `last_updated` UInt64 DEFAULT 0,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    `app_type` String,
    `app_bus_category` LowCardinality(String),
    `total_score` Float32 DEFAULT 0.,
    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_category app_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_sub_category app_sub_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
ORDER BY (subscriber, tenant, app_name)
SETTINGS index_granularity = 8192;
