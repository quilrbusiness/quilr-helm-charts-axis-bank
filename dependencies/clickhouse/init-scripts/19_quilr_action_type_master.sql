CREATE TABLE IF NOT EXISTS default.quilr_action_type_master
(
    `id` UUID DEFAULT generateUUIDv4(),
    `code` String,
    `name` String,
    `created_on` DateTime64(3,
 'UTC') DEFAULT now(),
    `last_updated_on` DateTime64(3,
 'UTC') DEFAULT now()
)
ENGINE = MergeTree
ORDER BY id
SETTINGS index_granularity = 8192;