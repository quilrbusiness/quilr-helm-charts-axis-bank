DROP TABLE IF EXISTS default.quilr_alert_status ;

CREATE TABLE default.quilr_alert_status
(
    `use_case_id` String,
    `context_id` String,
    `finding_status` LowCardinality(String),
    `last_updated` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC')
)
ENGINE = ReplicatedReplacingMergeTree(
    '/clickhouse/tables/{shard}/quilr_alert_status',
    '{replica}',
    last_updated
)
ORDER BY (context_id, use_case_id)
SETTINGS index_granularity = 8192;
