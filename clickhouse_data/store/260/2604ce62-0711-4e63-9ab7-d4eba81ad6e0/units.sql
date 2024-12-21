ATTACH TABLE _ UUID 'a4f9571e-dbb7-4002-96b5-801c44a6ca96'
(
    `unit_id` UInt16,
    `unit_name` String,
    `site_id` UInt8,
    `rtdb_type` String DEFAULT 'PHD',
    `language` String DEFAULT 'Russian',
    `unit_regex` String,
    `unit_abr` String,
    `unit_abr_eng` String
)
ENGINE = ReplacingMergeTree
ORDER BY unit_id
SETTINGS index_granularity = 8192
