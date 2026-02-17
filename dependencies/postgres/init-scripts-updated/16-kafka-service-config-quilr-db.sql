-- Connect to db for further operations

\connect quilr;

DROP TABLE IF EXISTS kafka_service_config ;

CREATE TABLE kafka_service_config (
    id SERIAL PRIMARY KEY,
    service_name VARCHAR(200) NOT NULL,
    pipeline_id INT DEFAULT 1,
    cluster_name VARCHAR(200) NOT NULL, 
    source_topics TEXT,
    source_properties TEXT,
    destination_topics TEXT,    
    destination_properties TEXT,
    extra_info TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    
    CONSTRAINT uq_kafka_service_config_service_namepipeline_id UNIQUE (service_name, pipeline_id)
);
