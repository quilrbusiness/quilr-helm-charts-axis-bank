DROP TABLE IF EXISTS default.users ;

CREATE TABLE default.users
(
    `tenant` String,
    `email` String,
    `user_id` String,
    `subscriber` String,
    `user_name` String,
    `user_status` String,
    `user_score` Float64,
    `prev_score` Float64,
    `department_name` String,
    `dept_current_score` Float64,
    `dept_prev_score` Float64,
    `smartgrps` Array(String),
    `idpgrps` Array(String),
    `index_time` DateTime64(3, 'UTC') DEFAULT now64(3),
    `last_updated` UInt64 DEFAULT 0,
    INDEX idx_tenant tenant TYPE minmax GRANULARITY 1,
    INDEX idx_email email TYPE set(0) GRANULARITY 1,
    INDEX idx_userId user_id TYPE set(0) GRANULARITY 1,
    INDEX idx_userName user_name TYPE tokenbf_v1(1024, 3, 0) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
ORDER BY (tenant, email)
SETTINGS index_granularity = 8192;