ATTACH TABLE _ UUID 'f99869d9-f97a-4fe2-a951-ce16d0c7b0c0'
(
    `site_id` Int16,
    `sensor_name_original` String,
    `sensor_name_clickhouse` String,
    `description` Nullable(String),
    `measure` Nullable(String),
    `value_max` Nullable(Decimal(27, 7)),
    `value_min` Nullable(Decimal(27, 7)),
    `properties_json` Nullable(String)
)
ENGINE = ReplacingMergeTree
ORDER BY (site_id, sensor_name_clickhouse)
SETTINGS index_granularity = 8192
