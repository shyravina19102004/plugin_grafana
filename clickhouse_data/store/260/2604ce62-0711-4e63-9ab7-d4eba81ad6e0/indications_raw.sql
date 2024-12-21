ATTACH TABLE _ UUID 'f92b4653-cb56-476c-a422-41522fe696b3'
(
    `unit_id` UInt16 CODEC(DoubleDelta, ZSTD(1)),
    `sensor_name` String CODEC(ZSTD(1)),
    `date_time_utc` DateTime('UTC') CODEC(Delta(4), ZSTD(1)),
    `indication` Decimal(18, 7) CODEC(Delta(8), ZSTD(1)),
    `confidence` Int8 DEFAULT 100 CODEC(DoubleDelta, ZSTD(1))
)
ENGINE = ReplacingMergeTree
PARTITION BY (unit_id, toYYYYMM(date_time_utc))
ORDER BY (unit_id, sensor_name, date_time_utc)
SETTINGS index_granularity = 8192
