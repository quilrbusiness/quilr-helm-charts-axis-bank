-- Connect to db for further operations

\connect quilr;

INSERT INTO kafka_service_config 
    (service_name, cluster_name, source_topics, source_properties) 
VALUES
(
  'ai_axis_ingestion', 
  'quilr_internal', 
  'alertsRaw',
  '{
    "bootstrap.servers": "kafka-server:9092",
    "group.id": "axis-raw-appId2",
    "metadata.max.age.ms": 60000,
    "topics": "alertsRaw",
    "max.partition.fetch.bytes": 26214400,
    "fetch.max.bytes": 50242880,
    "num.stream.threads": 2,
    "auto.offset.reset": "latest",
    "application.id": "axis-raw-appId",
    "maxRetries": 3,
    "retryBackoffMs": 30000,
    "session.timeout.ms": 60000,
    "heartbeat.interval.ms": 15000
  }'
);
