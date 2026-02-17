CREATE TABLE  IF NOT EXISTS default.rai_policy_details
(
    `tenant_id` UUID,
    `subscriber_id` UUID,
    `provider` String,
    `platform` String,
    `asset_platform_key` String,
    `name` String,
    `properties` JSON,
    `system_data` JSON,
    `created_at` UInt64 DEFAULT toUInt64(now64()),
    `last_modified` UInt64 DEFAULT toUInt64(now64()),
    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = ReplacingMergeTree(last_modified)
ORDER BY (subscriber_id,
 tenant_id,
 asset_platform_key,
 name)
SETTINGS index_granularity = 8192;