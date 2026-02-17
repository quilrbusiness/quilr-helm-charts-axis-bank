CREATE TABLE IF NOT EXISTS default.quilr_tenant_action_rel
(
    `id` UUID DEFAULT generateUUIDv4(),
    `tenant_id` UUID,
    `action_id` UUID,
    `created_on` DateTime64(3,
'UTC') DEFAULT now(),
    `last_updated_on` DateTime64(3,
'UTC') DEFAULT now()
)
ENGINE = MergeTree
ORDER BY (tenant_id,
action_id)
SETTINGS index_granularity = 8192;