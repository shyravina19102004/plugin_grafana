ATTACH TABLE _ UUID '776e8416-5b6a-4bf9-8e1a-8146a8d6076c'
(
    `query_id` String,
    `event_type` Enum8('NewPart' = 1, 'MergeParts' = 2, 'DownloadPart' = 3, 'RemovePart' = 4, 'MutatePart' = 5, 'MovePart' = 6),
    `event_date` Date,
    `event_time` DateTime,
    `event_time_microseconds` DateTime64(6),
    `duration_ms` UInt64,
    `database` String,
    `table` String,
    `part_name` String,
    `partition_id` String,
    `path_on_disk` String,
    `rows` UInt64,
    `size_in_bytes` UInt64,
    `merged_from` Array(String),
    `bytes_uncompressed` UInt64,
    `read_rows` UInt64,
    `read_bytes` UInt64,
    `peak_memory_usage` UInt64,
    `error` UInt16,
    `exception` String
)
ENGINE = MergeTree
PARTITION BY toYYYYMM(event_date)
ORDER BY (event_date, event_time)
SETTINGS index_granularity = 8192
