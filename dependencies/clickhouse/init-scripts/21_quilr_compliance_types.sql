CREATE TABLE IF NOT EXISTS default.quilr_compliance_types
(
    `detection_name` String,
    `risk_family` String,
    `iso_mapping` String,
    `nist_mapping` String,
    `mitre_mapping` String,
    `owasp_mapping` String,
    `weight` UInt8
)
ENGINE = ReplicatedMergeTree('/clickhouse/tables/{shard}/quilr_compliance_events_types',
 '{replica}')
ORDER BY detection_name
SETTINGS index_granularity = 8192;