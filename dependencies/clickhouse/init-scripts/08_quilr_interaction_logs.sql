DROP TABLE IF EXISTS default.quilr_interaction_logs ;

CREATE TABLE default.quilr_interaction_logs
(
    `subscriber` UUID,
    `tenant` UUID,
    `context_id` String,
    `user_justification` String,
    `outcome` String,
    `event_time` UInt64,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    `start_of_week` DateTime MATERIALIZED toStartOfWeek(index_time)
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/quilr_interaction_logs', '{replica}')
PARTITION BY (subscriber, tenant, toYear(index_time), toMonth(index_time), toDayOfMonth(index_time))
ORDER BY event_time
TTL start_of_week + toIntervalWeek(12)
SETTINGS index_granularity = 8192;
