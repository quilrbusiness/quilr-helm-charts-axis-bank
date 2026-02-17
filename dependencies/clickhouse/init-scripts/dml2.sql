
-- quilr_alert_events

ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS quilr_latency UInt16;
ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS llm_latency UInt16;


-- quilr_alert_action

ALTER TABLE quilr_alert_action ADD COLUMN IF NOT EXISTS tenant_action_id UUID;
ALTER TABLE quilr_alert_action ADD COLUMN IF NOT EXISTS trigger_type String;
ALTER TABLE quilr_alert_action RENAME COLUMN if exists state TO status;



ALTER TABLE quilr_alert_events MODIFY COLUMN file_details String DEFAULT [];