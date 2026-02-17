-- Connect to db for further operations

\connect quilr;

DROP TABLE IF EXISTS analytics_job_tracker ;

CREATE TABLE analytics_job_tracker (
    id SERIAL PRIMARY KEY,                -- Auto-incrementing primary key
    service_name VARCHAR(255) NOT NULL,   -- Service name
    pipeline_name VARCHAR(255),           -- Pipeline name (nullable)
    extra_info TEXT,                      -- Extra information (nullable)
    last_run_time TIMESTAMP NOT NULL,     -- Timestamp of the last run time
    from_time TIMESTAMP,                  -- Timestamp from time (nullable)
    to_time TIMESTAMP,                    -- Timestamp to time (nullable)
    CONSTRAINT uq_analytics_job_tracker_servicepipeline_id UNIQUE (service_name, pipeline_name)
);
