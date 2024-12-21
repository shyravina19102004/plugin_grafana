ATTACH TABLE _ UUID '17dfd338-6014-4a1e-b721-7e000781b8f4'
(
    `site_id` UInt8,
    `site_name` String,
    `time_zone` String,
    `site_abr_eng` String
)
ENGINE = ReplacingMergeTree
ORDER BY site_id
SETTINGS index_granularity = 8192
