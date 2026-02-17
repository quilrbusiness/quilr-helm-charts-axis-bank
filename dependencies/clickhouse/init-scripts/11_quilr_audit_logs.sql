
CREATE TABLE IF NOT EXISTS default.quilr_audit_logs
(
    `subscriber` String,
    `tenant` String,
    `service_name` String,
    `task` String,
    `status` String,
    `correlation_id` UUID,
    `error_info` JSON,
    `extra_info` JSON,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3,'UTC')
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/quilr_audit_logs_v2',
 '{replica}')
PARTITION BY (subscriber,
 tenant,
 service_name)
ORDER BY (subscriber,
 tenant,
 correlation_id)
SETTINGS index_granularity = 8192;