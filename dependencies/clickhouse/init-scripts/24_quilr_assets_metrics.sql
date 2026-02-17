CREATE TABLE  IF NOT EXISTS default.quilr_assets_metrics
(
    `date` DateTime CODEC(Delta(4),ZSTD(1)),
    `region` String,
    `asset_id` String,
    `total_requests` UInt64 DEFAULT 0,
    `total_token_count` UInt64 DEFAULT 0,
    `input_tokens_count` UInt64 DEFAULT 0,
    `output_tokens_count` UInt64 DEFAULT 0,
    `time_to_first_byte_ms` Float64 DEFAULT 0,
    `time_to_last_byte_ms` Float64 DEFAULT 0,
    `timespan_start` DateTime,
    `timespan_end` DateTime,
    `ingestion_time` DateTime DEFAULT now(),
    `extra_metrics` JSON DEFAULT '{}'
)
ENGINE = MergeTree()
PARTITION BY toYYYYMM(date)
ORDER BY (asset_id,
 date)
TTL date + toIntervalDay(180)
SETTINGS index_granularity = 8192;