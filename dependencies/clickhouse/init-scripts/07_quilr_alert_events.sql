DROP TABLE IF EXISTS default.quilr_alert_events ;

CREATE TABLE default.quilr_alert_events
(
    `subscriber` UUID,
    `tenant` UUID,
    `event_time` UInt64,
    `posture_id` LowCardinality(String),
    `behvaiour_id` LowCardinality(String),
    `risk_score` Float32 DEFAULT 0.,
    `risk_level` LowCardinality(String),
    `criticality` LowCardinality(String),
    `sensitive` Bool,
    `status` LowCardinality(String),
    `sla` LowCardinality(String),
    `usecase_details` String,
    `user_principalname` LowCardinality(String),
    `user_name` String,
    `login_user_id` String,
    `context_id` String,
    `account_id` String,
    `event_name` LowCardinality(String),
    `control` LowCardinality(String),
    `resolution_channel` LowCardinality(String),
    `mode` LowCardinality(String),
    `action_name` LowCardinality(String),
    `summary_header` String,
    `org_l1_categories` Array(String),
    `org_l2_categories` String,
    `browser_details` String,
    `extension` String,
    `source_application_name` LowCardinality(String),
    `source_application_domain` String,
    `source_appauthtype` LowCardinality(String),
    `dest_application_name` LowCardinality(String),
    `dest_application_domain` String,
    `dest_appauthtype` LowCardinality(String),
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    `start_of_day` DateTime MATERIALIZED toStartOfDay(index_time),
    `start_of_week` DateTime MATERIALIZED toStartOfWeek(index_time),
    `request_size` UInt64,
    `response_size` UInt64,
    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_source_app source_application_name TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_dest_app dest_application_name TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/quilr_alert_events', '{replica}')
PARTITION BY (subscriber, tenant, toYear(index_time), toMonth(index_time), toDayOfMonth(index_time))
ORDER BY (index_time, user_principalname, event_time)
TTL start_of_week + toIntervalWeek(12)
SETTINGS index_granularity = 8192;
