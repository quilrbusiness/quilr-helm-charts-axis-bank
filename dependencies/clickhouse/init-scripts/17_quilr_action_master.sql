CREATE TABLE IF NOT EXISTS default.quilr_action_master
(
    `id` UUID DEFAULT generateUUIDv4(),
    `action_name` String,
    `action_type_id` UUID,
    `action_code` String,
    `created_on` DateTime64(3,
'UTC') DEFAULT now(),
    `last_updated_on` DateTime64(3,
'UTC') DEFAULT now()
)
ENGINE = MergeTree
ORDER BY id
SETTINGS index_granularity = 8192;