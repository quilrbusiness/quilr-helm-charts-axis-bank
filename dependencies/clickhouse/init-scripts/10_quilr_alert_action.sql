DROP TABLE IF EXISTS default.quilr_alert_action ;

CREATE TABLE default.quilr_alert_action
(
    `id` String,
    `context_id` String,
    `control` String,
    `encoded_finding_context` String,
    `channel` String,
    `mode` String,
    `name` String,
    `state` String,
    `subscriber` String,
    `tenant` String,
    `type` String,
    `last_updated` UInt64 DEFAULT 0,
    `trigger_time` UInt64 DEFAULT 0,
    `action_status` String,
    `communication_type` String,
    `description` String,
    `examples` String,
    `execution_id` String,
    `execution_module` String,
    `execution_type` String,
    `message_template_name` String,
    `parent_action_id` String,
    `resolution_channel` String,
    `severity` String,
    `sla` Int32,
    `sla_duration_unit` String,
    `tags` Array(String),
    `version` String,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    INDEX idx_id id TYPE bloom_filter GRANULARITY 1,
    INDEX idx_state state TYPE set(100) GRANULARITY 1,
    INDEX idx_type type TYPE set(50) GRANULARITY 1
)
ENGINE = ReplicatedReplacingMergeTree(
    '/clickhouse/tables/{shard}/quilr_alert_action',
    '{replica}',
    last_updated
)
PARTITION BY (subscriber, tenant)
ORDER BY (subscriber, tenant, context_id, id)
SETTINGS index_granularity = 8192, enable_mixed_granularity_parts = 1;
