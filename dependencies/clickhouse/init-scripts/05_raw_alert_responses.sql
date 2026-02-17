DROP TABLE IF EXISTS default.raw_alert_responses ;

CREATE TABLE default.raw_alert_responses
(
    `subscriberid` UUID,
    `tenantid` UUID,
    `domain` LowCardinality(String),
    `app_name` LowCardinality(String),
    `alert_userprincipalname` String,
    `prompt_id` UUID,
    `event_time` UInt64,
    `alert_original_prompt_response` String,
    `alert_original_prompt_response_size` UInt16,
    `alert_final_prompt_response` String,
    `res_org_l2_attributes` Nullable(String) DEFAULT NULL,
    `res_final_l2_attributes` Nullable(String) DEFAULT NULL,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    INDEX domain_idx domain TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/raw_alert_responses', '{replica}')
PARTITION BY (toYear(index_time), toMonth(index_time), toDayOfMonth(index_time))
ORDER BY (subscriberid, tenantid, domain, alert_userprincipalname, prompt_id)
TTL toDateTime(index_time) + toIntervalMonth(1)
SETTINGS index_granularity = 8192;
