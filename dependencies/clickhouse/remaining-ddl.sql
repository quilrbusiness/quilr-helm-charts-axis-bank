-- `default`.compromised_password_status_tracker definition

CREATE TABLE IF NOT EXISTS default.compromised_password_status_tracker
(

    `subscriber` String,

    `tenant` String,

    `user_principalname` LowCardinality(String),

    `user_name` String,

    `app_id` LowCardinality(String),

    `app_name` LowCardinality(String),

    `approval_status` String,

    `last_updated` UInt64 DEFAULT toUInt64(now64()),

    `index_time` DateTime DEFAULT now(),

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber,
 tenant,
 user_principalname,
 app_name)
SETTINGS index_granularity = 8192;




-- `default`.cred_shared_status_tracker definition

CREATE TABLE IF NOT EXISTS default.cred_shared_status_tracker
(

    `subscriber` String,

    `tenant` String,

    `user_principalname` LowCardinality(String),

    `user_name` String,

    `app_id` LowCardinality(String),

    `app_name` LowCardinality(String),

    `credential_shared_username` String,

    `credential_shared_email` String,

    `approval_status` String,

    `last_updated` UInt64 DEFAULT toUInt64(now64()),

    `index_time` DateTime DEFAULT now(),

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber,
 tenant,
 user_principalname,
 app_name,
 credential_shared_email)
SETTINGS index_granularity = 8192;




-- `default`.quilr_alert_action definition

CREATE TABLE IF NOT EXISTS default.quilr_alert_action
(

    `id` String,

    `context_id` String,

    `control` String,

    `encoded_finding_context` String,

    `channel` String,

    `mode` String,

    `name` String,

    `status` String,

    `subscriber` String,

    `tenant` String,

    `type` String,

    `last_updated` UInt64 DEFAULT 0,

    `trigger_time` UInt64 DEFAULT 0,

    `action_status` String,

    `communication_type` String,

    `description` String,

    `examples` String,

    `execution_id` String,

    `execution_module` String,

    `execution_type` String,

    `message_template_name` String,

    `parent_action_id` String,

    `resolution_channel` String,

    `severity` String,

    `sla` Int32,

    `sla_duration_unit` String,

    `tags` Array(String),

    `version` String,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    `tenant_action_id` UUID,

    `trigger_type` String,

    INDEX idx_id id TYPE bloom_filter GRANULARITY 1,

    INDEX idx_state status TYPE set(100) GRANULARITY 1,

    INDEX idx_type type TYPE set(50) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY (subscriber,
 tenant)
ORDER BY (subscriber,
 tenant,
 context_id,
 id)
SETTINGS index_granularity = 8192,
 enable_mixed_granularity_parts = 1;




-- `default`.quilr_alert_events definition

CREATE TABLE IF NOT EXISTS default.quilr_alert_events
(

    `subscriber` UUID,

    `tenant` UUID,

    `event_time` UInt64,

    `cred_fingerprint_id` String,

    `posture_id` LowCardinality(String),

    `behvaiour_id` LowCardinality(String),

    `risk_score` Float32 DEFAULT 0.,

    `risk_level` LowCardinality(String),

    `criticality` LowCardinality(String),

    `sensitive` Bool,

    `status` LowCardinality(String),

    `sla` LowCardinality(String),

    `usecase_details` String,

    `user_principalname` LowCardinality(String),

    `user_name` String,

    `login_user_id` String,

    `context_id` String,

    `account_id` String,

    `event_name` LowCardinality(String),

    `control` LowCardinality(String),

    `resolution_channel` LowCardinality(String),

    `mode` LowCardinality(String),

    `action_name` LowCardinality(String),

    `alert_original_prompt` String,

    `alert_final_prompt` String,

    `alert_is_initial_sensitive` Bool,

    `alert_is_final_sensitive` Bool,

    `summary_header` String,

    `org_l1_categories` Array(String),

    `org_l2_categories` String,

    `final_l1_categories` Array(String),

    `final_l2_categories` String,

    `alert_type` String,

    `alert_status` String,

    `alert_action_taken` String,

    `prompt_changed` Bool,

    `log_type` String,

    `summary_title` String,

    `summary_ack_buttons` String,

    `browser_details` String,

    `extension` String,

    `source_application_name` LowCardinality(String),

    `source_application_domain` String,

    `source_appauthtype` LowCardinality(String),

    `dest_application_name` LowCardinality(String),

    `dest_application_domain` String,

    `dest_appauthtype` LowCardinality(String),

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    `start_of_day` DateTime MATERIALIZED toStartOfDay(index_time),

    `start_of_week` DateTime MATERIALIZED toStartOfWeek(index_time),

    `request_size` UInt64,

    `response_size` UInt64,

    `llm_latency` UInt16,

    `subproduct` String,

    `provider` String,

    `source_app_id` LowCardinality(Nullable(String)),

    `dest_app_id` LowCardinality(Nullable(String)),

    `request_tokens` UInt64,

    `model_name` String,

    `credential_shared_email` String,

    `quilr_latency` UInt16,

    `file_details` String DEFAULT [],

    `credential_shared_status` Bool DEFAULT false,

    `password_strength` String,

    `compromised_password` String,

    `credentials_reuse` String,

    `using_pwd_manager` Bool DEFAULT false,

    `be_mfa_enabled` Bool DEFAULT false,

    `source_user_mail` String,

    `credential_shared_username` String,

    `prompt_category` String,

    `ref_context_id` String,

    `mcp_client` String,

    `mcp_tool` String,

    `mcp_agent_name` String,

    `mcp_gateway_name` String,

    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_source_app source_application_name TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_dest_app dest_application_name TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_posture_id posture_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_behvaiour_id behvaiour_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_event_name event_name TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_user_name user_name TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = MergeTree()
PARTITION BY (subscriber,
 tenant,
 toYear(index_time),
 toMonth(index_time),
 toDayOfMonth(index_time))
ORDER BY (index_time,
 user_principalname,
 event_time)
TTL start_of_week + toIntervalWeek(12)
SETTINGS index_granularity = 8192;




-- `default`.quilr_alert_status definition

CREATE TABLE IF NOT EXISTS default.quilr_alert_status
(

    `use_case_id` String,

    `context_id` String,

    `finding_status` LowCardinality(String),

    `last_updated` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = ReplacingMergeTree(last_updated)
ORDER BY (context_id,
 use_case_id)
SETTINGS index_granularity = 8192;


-- `default`.quilr_audit_logs definition

CREATE TABLE IF NOT EXISTS default.quilr_audit_logs
(

    `subscriber` String,

    `tenant` String,

    `service_name` String,

    `task` String,

    `status` String,

    `correlation_id` UUID,

    `error_info` JSON,

    `extra_info` JSON,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = MergeTree()
PARTITION BY (subscriber,
 tenant,
 service_name)
ORDER BY (subscriber,
 tenant,
 correlation_id)
SETTINGS index_granularity = 8192;



-- `default`.quilr_interaction_logs definition

CREATE TABLE IF NOT EXISTS default.quilr_interaction_logs
(

    `subscriber` UUID,

    `tenant` UUID,

    `context_id` String,

    `user_justification` String,

    `outcome` String,

    `event_time` UInt64,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    `start_of_week` DateTime MATERIALIZED toStartOfWeek(index_time)
)
ENGINE = MergeTree()
PARTITION BY (subscriber,
 tenant,
 toYear(index_time),
 toMonth(index_time),
 toDayOfMonth(index_time))
ORDER BY event_time
TTL start_of_week + toIntervalWeek(12)
SETTINGS index_granularity = 8192;




-- `default`.raw_alert_responses definition

CREATE TABLE IF NOT EXISTS default.raw_alert_responses
(

    `subscriberid` UUID,

    `tenantid` UUID,

    `domain` LowCardinality(String),

    `app_name` LowCardinality(String),

    `alert_userprincipalname` String,

    `prompt_id` UUID,

    `event_time` UInt64,

    `alert_original_prompt_response` String,

    `alert_original_prompt_response_size` UInt16,

    `alert_final_prompt_response` String,

    `res_org_l2_attributes` Nullable(String) DEFAULT NULL,

    `res_final_l2_attributes` Nullable(String) DEFAULT NULL,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    `org_response_l1_categories` Array(String),

    `final_response_l1_categories` Array(String),

    `quilr_latency` UInt16,

    `llm_latency` UInt16,

    `alert_action_taken` String,

    `outcome` String,

    `user_justification` String,

    `response_tokens` UInt64,

    `total_latency_ms` UInt64,

    `model_name` String,

    `error_type` String,

    `error_message` String,

    `status_code` UInt64,

    `org_response_l2_categories` String,

    `final_response_l2_categories` String,

    `provider` String,

    INDEX domain_idx domain TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = MergeTree()
PARTITION BY (toYear(index_time),
 toMonth(index_time),
 toDayOfMonth(index_time))
ORDER BY (subscriberid,
 tenantid,
 domain,
 alert_userprincipalname,
 prompt_id)
TTL toDateTime(index_time) + toIntervalMonth(1)
SETTINGS index_granularity = 8192;



CREATE TABLE IF NOT EXISTS default.redteaming_results
(

    `tenant` UUID,

    `subscriber` UUID,

    `test_id` String,

    `run_id` String,

    `technique_family` String,

    `detection` String,

    `risk` String,

    `mitre_mapping` Array(String),

    `owasp_mapping` Array(String),

    `prompt_input` String,

    `environment` String,

    `prompt_response` String,

    `outcome` String,

    `app_name` String,

    `app_url` String,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = MergeTree()
ORDER BY (tenant,
 app_name,
 run_id,
 test_id)
SETTINGS index_granularity = 8192;




-- `default`.week_password_status_tracker definition

CREATE TABLE IF NOT EXISTS default.week_password_status_tracker
(

    `subscriber` String,

    `tenant` String,

    `user_principalname` LowCardinality(String),

    `user_name` String,

    `app_id` LowCardinality(String),

    `app_name` LowCardinality(String),

    `approval_status` String,

    `last_updated` UInt64 DEFAULT toUInt64(now64()),

    `index_time` DateTime DEFAULT now(),

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber,
 tenant,
 user_principalname,
 app_name)
SETTINGS index_granularity = 8192;


--created MV `default`.accounts_mv source
CREATE MATERIALIZED VIEW IF NOT EXISTS default.accounts_mv TO default.accounts
(
    `subscriber` String,
    `tenant` String,
    `user_principalname` String,
    `user_name` String,
    `account_id` String,
    `app_id` String,
    `login_user_id` String,
    `first_visited` DateTime,
    `last_visited` DateTime
)
AS SELECT
    toString(subscriber) AS subscriber,
    toString(tenant) AS tenant,
    user_principalname,
    any(user_name) AS user_name,
    account_id,
    any(if(event_name = 'paste', dest_app_id, source_app_id)) AS app_id,
    any(login_user_id) AS login_user_id,
    min(index_time) AS first_visited,
    max(index_time) AS last_visited
FROM default.quilr_alert_events
WHERE (account_id IS NOT NULL) 
  AND (account_id != '') 
  AND (user_principalname IS NOT NULL) 
  AND (user_principalname != '')
  AND (((event_name = 'paste') AND (dest_app_id IS NOT NULL) AND (dest_app_id != '')) 
       OR ((event_name != 'paste') AND (source_app_id IS NOT NULL) AND (source_app_id != '')))
GROUP BY
    subscriber,
    tenant,
    user_principalname,
    account_id;






