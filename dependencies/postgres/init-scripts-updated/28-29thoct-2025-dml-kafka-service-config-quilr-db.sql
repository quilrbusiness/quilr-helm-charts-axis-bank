-- schema : quilr
-- Date : 29-Oct-2025
-- Usage: new ingesion service kafka consumer properties
-- update the kafka brokers accordingly 
INSERT INTO kafka_service_config (service_name,pipeline_id,cluster_name,source_topics,source_properties,destination_topics,destination_properties,extra_info,created_at,updated_at) VALUES
	 ('quilr-ingestion-service',1,'quilr_internal','raw-events-100100','{
  "bootstrap.servers": "kafka-server:9092",
  "metadata.max.age.ms": 60000,
  "max.partition.fetch.bytes": 26214400,
  "fetch.max.bytes": 50242880,
  "num.stream.threads": 2,
  "auto.offset.reset": "latest",
  "application.id": "quilr-ingesion-appId1",
  "group.id": "quilr-ingesion-appId1",
  "maxRetries": 3,
  "retryBackoffMs": 30000,
  "session.timeout.ms": 60000,
  "heartbeat.interval.ms": 15000
}',NULL,NULL,NULL,'2025-10-29 12:00:46.915072','2025-10-29 12:00:46.915072');

