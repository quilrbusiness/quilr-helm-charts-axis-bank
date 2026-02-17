-- `default`.redteaming_results definition

CREATE TABLE default.redteaming_results
(
    `tenant` UUID,
    `subscriber` UUID,
    `test_id` String,
    `run_id` String,
    `technique_family` String,
    `detection` String,
    `risk` String,
    `mitre_mapping` Array(String),
    `owasp_mapping` Array(String),
    `prompt_input` String,
    `environment` String,
    `prompt_response` String,
    `outcome` String,
    `app_name` String,
    `app_url` String,
    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/redteaming_results',
 '{replica}')
ORDER BY (tenant,
 app_name,
 run_id,
 test_id)
SETTINGS index_granularity = 8192;