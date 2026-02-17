DROP TABLE IF EXISTS default.raw_alert_logs ;

CREATE TABLE default.raw_alert_logs
(
    `subscriberid` UUID,
    `tenantid` UUID,
    `event_time` UInt64,
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    `domain` LowCardinality(String),
    `alert_appauthtype` LowCardinality(Nullable(String)) DEFAULT NULL,
    `alert_userprincipalname` String,
    `alert_username` String DEFAULT 'NOT_AVAILABLE',
    `alert_browsername` LowCardinality(String),
    `prompt_id` UUID,
    `alert_type` LowCardinality(String),
    `alert_original_prompt` String,
    `alert_final_prompt` String,
    `alert_user_justification` String,
    `alert_is_initial_sensitive` Bool,
    `alert_is_final_sensitive` Bool,
    `alert_prompt_changed` Bool,
    `sensitive_l1_categories` Array(String) DEFAULT [],
    `sensitive_l2_categories` Array(String) DEFAULT [],
    `final_attributes` Nullable(String) DEFAULT NULL,
    `control` Nullable(String) DEFAULT NULL,
    `alert_action_taken` String,
    `alert_outcome` String,
    `alert_summary` String,
    `alert_action_name` String,
    `mode` String,
    `org_l2_attributes` String,
    `final_l2_attributes` String,
    `org_sensitive_l1_categories` String,
    `prompt_category` String,
    `alert_original_prompt_response` String,
    `alert_original_prompt_response_size` UInt32,
    `alert_original_prompt_request_size` UInt32,
    `alert_login_user` String,
    `app_name` LowCardinality(String),
    INDEX domain_idx domain TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/raw_alert_logs', '{replica}' )
PARTITION BY (toYear(index_time), toMonth(index_time), toDayOfMonth(index_time))
ORDER BY (subscriberid, tenantid, alert_userprincipalname, domain, index_time)
TTL toDateTime(index_time) + toIntervalMonth(1)
SETTINGS index_granularity = 8192;
