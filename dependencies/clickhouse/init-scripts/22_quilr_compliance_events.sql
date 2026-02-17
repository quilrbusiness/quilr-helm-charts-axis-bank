CREATE TABLE IF NOT EXISTS default.quilr_compliance_events
(
    `subscriber` UUID,
    `tenant` UUID,
    `prompt_id` UUID,
    `detection_name` String,
    `risk_family` String,
    `iso_mapping` String,
    `nist_mapping` String,
    `mitre_mapping` String,
    `owasp_mapping` String,
    `event_time` UInt64,
    `action` String,
    `prompt` String,
    `index_time` DateTime64(3,'UTC') DEFAULT now64(3,'UTC'),
    `type` String,
    `weight` UInt8 DEFAULT 1,
    `app_name` String
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/quilr_compliance_events',
'{replica}')
ORDER BY (event_time,prompt_id)
SETTINGS index_granularity = 8192;
