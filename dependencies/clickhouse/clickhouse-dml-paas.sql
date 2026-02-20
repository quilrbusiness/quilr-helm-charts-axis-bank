-- raw_alert_responses
===============================
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS org_response_l2_categories String;
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS org_response_l1_categories Array(String);

ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS final_response_l2_categories String;
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS final_response_l1_categories Array(String);

Table: quilr_alert_events
===========================
ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS  file_details String DEFAULT [];

Table: quilr_alert_events
==============================
-- prompt_category
ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS prompt_category String;

ALTER TABLE default.quilr_alert_events
  ADD COLUMN IF NOT EXISTS file_details String DEFAULT [];

ALTER TABLE quilr_alert_events MODIFY COLUMN file_details String DEFAULT [];

-- AI Risk & Identity risk 
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS cred_fingerprint_id String AFTER event_time;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_original_prompt String AFTER action_name;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_final_prompt String AFTER alert_original_prompt;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_is_initial_sensitive Bool AFTER alert_final_prompt;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_is_final_sensitive Bool AFTER alert_is_initial_sensitive;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS final_l1_categories Array(String) AFTER org_l2_categories;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS final_l2_categories String AFTER final_l1_categories;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_type String AFTER final_l2_categories;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_status String AFTER alert_type;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS alert_action_taken String AFTER alert_status;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS prompt_changed Bool AFTER alert_action_taken;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS log_type String AFTER prompt_changed;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS summary_title String AFTER log_type;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS summary_ack_buttons String AFTER summary_title;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS credential_shared_status Bool DEFAULT false AFTER file_details;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS password_strength String AFTER credential_shared_status;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS compromised_password String AFTER password_strength;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS credentials_reuse String AFTER compromised_password;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS using_pwd_manager Bool DEFAULT false AFTER credentials_reuse;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS be_mfa_enabled Bool DEFAULT false AFTER using_pwd_manager;
ALTER TABLE default.quilr_alert_events ADD COLUMN IF NOT EXISTS source_user_mail String AFTER be_mfa_enabled;


ALTER TABLE default.quilr_alert_events ADD INDEX IF NOT EXISTS idx_posture_id posture_id TYPE bloom_filter(0.01) GRANULARITY 1;
ALTER TABLE default.quilr_alert_events ADD INDEX IF NOT EXISTS idx_behvaiour_id behvaiour_id TYPE bloom_filter(0.01) GRANULARITY 1;
ALTER TABLE default.quilr_alert_events ADD INDEX IF NOT EXISTS idx_event_name event_name TYPE bloom_filter(0.01) GRANULARITY 1;
ALTER TABLE default.quilr_alert_events ADD INDEX IF NOT EXISTS idx_user_user_name user_name TYPE bloom_filter(0.01) GRANULARITY 1;

==========================

-- quilr_alert_events

ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS quilr_latency UInt16;
ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS llm_latency UInt16;


-- quilr_alert_action

ALTER TABLE quilr_alert_action ADD COLUMN IF NOT EXISTS tenant_action_id UUID;
ALTER TABLE quilr_alert_action ADD COLUMN IF NOT EXISTS trigger_type String;
ALTER TABLE quilr_alert_action RENAME COLUMN if exists state TO status;

 
-- app_tenant_settings
ALTER TABLE app_tenant_settings  ADD COLUMN IF NOT EXISTS admin_user_emails Array(String);

-- raw_alert_logs
ALTER TABLE raw_alert_logs ADD COLUMN IF NOT EXISTS quilr_latency UInt16;
ALTER TABLE raw_alert_logs ADD COLUMN IF NOT EXISTS llm_latency UInt16;

-- raw_alert_responses
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS res_org_l2_attributes String;
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS res_final_l2_attributes String;
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS org_response_l1_categories Array(String);
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS final_response_l1_categories Array(String);
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS quilr_latency UInt16;
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS llm_latency UInt16;


-- enriched_events

ALTER TABLE enriched_events ADD COLUMN IF NOT EXISTS final_response_l1_categories Array(String);
ALTER TABLE enriched_events ADD COLUMN IF NOT EXISTS quilr_latency UInt16;
ALTER TABLE enriched_events ADD COLUMN IF NOT EXISTS llm_latency UInt16;

ALTER TABLE enriched_events ADD COLUMN IF NOT EXISTS resp_quilr_latency UInt16;
ALTER TABLE enriched_events ADD COLUMN IF NOT EXISTS resp_llm_latency UInt16;


===================================

Received exception from server (version 26.1.2):
Code: 60. DB::Exception: Received from localhost:9000. DB::Exception: Could not find table: raw_alert_logs. (UNKNOWN_TABLE)

======================================


--quilr_compliance
ALTER TABLE quilr_compliance ADD COLUMN IF NOT EXISTS type String;

=========================================

Received exception from server (version 26.1.2):
Code: 60. DB::Exception: Received from localhost:9000. DB::Exception: Could not find table: quilr_compliance. (UNKNOWN_TABLE)

============================================

-- raw_alert_responses
ALTER TABLE raw_alert_responses
ADD COLUMN IF NOT EXISTS alert_action_taken String,
ADD COLUMN IF NOT EXISTS outcome String,
ADD COLUMN IF NOT EXISTS user_justification String;

-- enriched_events
ALTER TABLE enriched_events
ADD COLUMN IF NOT EXISTS response_action_taken String,
ADD COLUMN IF NOT EXISTS response_outcome String,
ADD COLUMN IF NOT EXISTS response_justification String;

=========================================================

Received exception from server (version 26.1.2):
Code: 60. DB::Exception: Received from localhost:9000. DB::Exception: Could not find table: enriched_events. (UNKNOWN_TABLE)

=========================================================

-- For identity risk - cred shared 
-- Finding screen
ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS credential_shared_email String;        

ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS credential_shared_username String;        

ALTER TABLE quilr_alert_events ADD COLUMN IF NOT EXISTS ref_context_id String; 

-- raw_alert_responses
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS alert_action_taken String;        
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS outcome String;        
ALTER TABLE raw_alert_responses ADD COLUMN IF NOT EXISTS user_justification String; 

INSERT INTO quilr_action_type_master (id,code,name,created_on,last_updated_on) VALUES
	 ('813e375d-fbde-4aba-8fc8-88241e6f138c','ACTP_04','Activate Agent','2025-11-10 07:35:40','2025-11-10 07:35:40'),
	 ('244e9139-e752-4a80-a01f-ce01e769ea12','ACTP_01','Engage User','2025-11-10 07:35:40','2025-11-10 07:35:40'),
	 ('a55b31ab-218e-4911-af1c-d139e4e49962','ACTP_02','Just in Time','2025-11-10 07:35:40','2025-11-10 07:35:40'),
	 ('843adbd5-cc77-4bd4-b530-6d2d7b8ee1c6','ACTP_03','Remediation Action','2025-11-10 07:35:40','2025-11-10 07:35:40');


-- compliance statc data
INSERT INTO `default`.quilr_compliance_scores (detection_name,iso_modifier,nist_modifier,owasp_modifier,mitre_modifier,base_weight,iso_weight,nist_weight,owasp_weight,mitre_weight) VALUES
	 ('Auth & Secrets',0.9,0.8,1.0,0.8,1.0,0.9,0.8,1.0,0.8),
	 ('Bypassed Safety Filters',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Bypassing Security Controls',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Contradictory Responses',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('DAN/Simulation Prompts',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Direct Prompt Injection',0.6,0.8,1.0,1.0,1.0,0.6,0.8,1.0,1.0),
	 ('Disgruntled Employee',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Emotional Manipulation',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Employee Departure',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Encoding Obfuscation',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7);
INSERT INTO `default`.quilr_compliance_scores (detection_name,iso_modifier,nist_modifier,owasp_modifier,mitre_modifier,base_weight,iso_weight,nist_weight,owasp_weight,mitre_weight) VALUES
	 ('Fake Quoting',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Few-shot Poisoning',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Hallucinated Facts',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Hypothetical Framing',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Impersonation/Deepfake/Voice Cloning',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Indirect/Reflected Injection',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Insurance Data',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Intellectual Property Theft',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Invisible Characters (Unicode/ZWS)',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Job Search & Employee Departure',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7);
INSERT INTO `default`.quilr_compliance_scores (detection_name,iso_modifier,nist_modifier,owasp_modifier,mitre_modifier,base_weight,iso_weight,nist_weight,owasp_weight,mitre_weight) VALUES
	 ('Medical Report',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Minutes of Meeting',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Moral Dilemmas or Traps',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Non-contextual Detection',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Offensive Humor or Sarcasm',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Payment and Financial Information (PFI)',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Personally Identifiable Information (PII)',0.9,0.8,1.0,0.8,1.0,0.9,0.8,1.0,0.8),
	 ('Polyglot or Multi-language Injection',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Prefix Injection',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Prompt Content Corruption',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7);
INSERT INTO `default`.quilr_compliance_scores (detection_name,iso_modifier,nist_modifier,owasp_modifier,mitre_modifier,base_weight,iso_weight,nist_weight,owasp_weight,mitre_weight) VALUES
	 ('Prompt Leakage Baiting',0.9,0.8,1.0,0.8,1.0,0.9,0.8,1.0,0.8),
	 ('Protected Card Information (PCI)',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Protected Health Information (PHI)',0.9,0.8,1.0,0.8,1.0,0.9,0.8,1.0,0.8),
	 ('Rare or Uncommon Language Usage',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Retrieving Salary Info',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Reverse Psychology Prompts',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Roleplay or Persona Spoofing',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Salary Information',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Suffix Injection',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Synonym/Paraphrased Attacks',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7);
INSERT INTO `default`.quilr_compliance_scores (detection_name,iso_modifier,nist_modifier,owasp_modifier,mitre_modifier,base_weight,iso_weight,nist_weight,owasp_weight,mitre_weight) VALUES
	 ('Toxic/Biased Output',0.7,0.9,0.7,0.6,1.0,0.7,0.9,0.7,0.6),
	 ('Typo-spacing / Misspellings',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('Unauthorized Data Access',0.8,0.8,0.7,0.6,1.0,0.8,0.8,0.7,0.6),
	 ('Unauthorized IP Output',0.8,0.8,0.7,0.6,1.0,0.8,0.8,0.7,0.6),
	 ('Unsafe Recommendations',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('making or understanding bombs',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7),
	 ('test_is',0.7,0.7,0.7,0.7,1.0,0.7,0.7,0.7,0.7);

-- compliance statc data
INSERT INTO `default`.quilr_compliance_types (detection_name,risk_family,iso_mapping,nist_mapping,mitre_mapping,owasp_mapping,weight) VALUES
	 ('Auth & Secrets','Data Risks','6, 8 (credential protection)','MAP, MEASURE, MANAGE','Credential/API Key Exposure','LLM06 Sensitive Information Disclosure',5),
	 ('Bypassed Safety Filters','AI Adversarial Risks','6, 8, 9','MEASURE (safety effectiveness), MANAGE','Guardrail/Safety Evasion','LLM01 Prompt Injection, LLM02 Insecure Output Handling',4),
	 ('Bypassing Security Controls','Insider Risks','6, 8','MEASURE, MANAGE','Security Evasion via AI Queries','LLM01 Prompt Injection, LLM08 Excessive Agency',4),
	 ('Contradictory Responses','AI Adversarial Risks','9, 10','MEASURE (consistency), MANAGE','Model Behavior Anomaly','LLM02 Insecure Output Handling',4),
	 ('DAN/Simulation Prompts','AI Adversarial Risks','6, 8, 9','MAP (jailbreak scenarios), MEASURE, MANAGE','Jailbreak / Safety Bypass','LLM01 Prompt Injection, LLM08 Excessive Agency',5),
	 ('Direct Prompt Injection','AI Adversarial Risks','6 Risk assessment, 8 Operational control of AI inputs/outputs, 9 Monitoring','GOVERN, MEASURE, MANAGE','Prompt Injection / LLM Evasion','LLM01 Prompt Injection, LLM08 Excessive Agency',5),
	 ('Disgruntled Employee','Insider Risks','6, 8, 9','MAP (threat scenario), MEASURE, MANAGE','Insider Abuse via AI','LLM06 Sensitive Information Disclosure, LLM08 Excessive Agency',5),
	 ('Emotional Manipulation','AI Adversarial Risks','6, 8','MEASURE, MANAGE (human-in-the-loop)','LLM-enabled Social Engineering','LLM08 Excessive Agency',3),
	 ('Employee Departure','Data Risks','6, 8','MAP, MEASURE, MANAGE','HR/Workforce Data Exposure','LLM06 Sensitive Information Disclosure',3),
	 ('Encoding Obfuscation','AI Adversarial Risks','6, 8','MEASURE (detect obfuscation), MANAGE','Evasion via Encoding/Obfuscation','LLM01 Prompt Injection',4);
INSERT INTO `default`.quilr_compliance_types (detection_name,risk_family,iso_mapping,nist_mapping,mitre_mapping,owasp_mapping,weight) VALUES
	 ('Fake Quoting','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Content Spoofing for Jailbreak','LLM01 Prompt Injection, LLM02 Insecure Output Handling',3),
	 ('Few-shot Poisoning','AI Adversarial Risks','6, 8, 10','MAP (training/RAG sources), MEASURE, MANAGE','Training-time / In-context Poisoning','LLM03 Training Data Poisoning',4),
	 ('Hallucinated Facts','AI Adversarial Risks','9, 10 (monitoring and improvement)','MEASURE (accuracy/reliability), MANAGE','Model Reliability / Deception Techniques','LLM02 Insecure Output Handling',4),
	 ('Hypothetical Framing','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Contextual Jailbreak','LLM01 Prompt Injection',3),
	 ('Impersonation/Deepfake/Voice Cloning','AI Adversarial Risks','6, 8','MAP (identity spoofing scenarios), MANAGE','Identity/Persona Abuse with AI','LLM08 Excessive Agency',4),
	 ('Indirect/Reflected Injection','AI Adversarial Risks','6, 8, 9','MAP (identify external content), MEASURE, MANAGE','Prompt Injection via external content','LLM01 Prompt Injection, LLM02 Insecure Output Handling',5),
	 ('Insurance Data','Data Risks','6, 8','MAP, MEASURE, MANAGE','Insurance Policy/Claims Data Exposure','LLM06 Sensitive Information Disclosure',4),
	 ('Intellectual Property Theft','Insider Risks','6, 8','MAP, MEASURE, MANAGE','IP/Trade Secret Exfiltration','LLM02 Insecure Output Handling, LLM06',5),
	 ('Invisible Characters (Unicode/ZWS)','AI Adversarial Risks','6, 8','MEASURE (input validation), MANAGE','Evasion via Non-printable Characters','LLM01 Prompt Injection',4),
	 ('Job Search & Employee Departure','Insider Risks','6 (people-related risks), 9 (monitoring)','MAP (user context), MEASURE, MANAGE','Insider Reconnaissance/Preparation','LLM06 Sensitive Information Disclosure',4);
INSERT INTO `default`.quilr_compliance_types (detection_name,risk_family,iso_mapping,nist_mapping,mitre_mapping,owasp_mapping,weight) VALUES
	 ('Medical Report','Data Risks','6 (data classification), 8 (PHI handling)','MAP (data types), MEASURE, MANAGE','Data Exposure via AI','LLM06 Sensitive Information Disclosure',3),
	 ('Minutes of Meeting','Data Risks','6, 8','MAP, MEASURE','Disclosure of Internal Knowledge','LLM06 Sensitive Information Disclosure',3),
	 ('Moral Dilemmas or Traps','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Policy/ethics bypass via dilemmas','LLM08 Excessive Agency',3),
	 ('Non-contextual Detection','Data Risks','6, 8','MEASURE, MANAGE','Pattern-only Sensitive Data Detection','LLM06 Sensitive Information Disclosure',3),
	 ('Offensive Humor or Sarcasm','AI Adversarial Risks','6 (ethics), 8','MEASURE (content moderation), MANAGE','Inappropriate Content Generation','LLM02 Insecure Output Handling',5),
	 ('Payment and Financial Information (PFI)','Data Risks','6, 8','MAP, MEASURE, MANAGE','Financial Data Exposure','LLM06 Sensitive Information Disclosure',5),
	 ('Personally Identifiable Information (PII)','Data Risks','6 (privacy), 8 (controls)','MAP, MEASURE, MANAGE','PII Exposure','LLM06 Sensitive Information Disclosure',5),
	 ('Polyglot or Multi-language Injection','AI Adversarial Risks','6, 8','MEASURE (language-aware checks), MANAGE','Multilingual Prompt Injection','LLM01 Prompt Injection',3),
	 ('Prefix Injection','AI Adversarial Risks','6, 8','MEASURE, MANAGE','System Prompt Manipulation','LLM01 Prompt Injection',4),
	 ('Prompt Content Corruption','AI Adversarial Risks','6, 8, 10 Improvement','MEASURE (data/response integrity), MANAGE','Model Response Manipulation','LLM02 Insecure Output Handling, LLM03 Training Data Poisoning',4);
INSERT INTO `default`.quilr_compliance_types (detection_name,risk_family,iso_mapping,nist_mapping,mitre_mapping,owasp_mapping,weight) VALUES
	 ('Prompt Leakage Baiting','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Model/Prompt Disclosure','LLM06 Sensitive Information Disclosure',4),
	 ('Protected Card Information (PCI)','Data Risks','6, 8','MAP, MEASURE, MANAGE','Cardholder Data Exposure','LLM06 Sensitive Information Disclosure',5),
	 ('Protected Health Information (PHI)','Data Risks','6, 8 (health data)','MAP, MEASURE, MANAGE','PHI/Medical Data Exposure','LLM06 Sensitive Information Disclosure',5),
	 ('Rare or Uncommon Language Usage','Data Risks','6, 8','MEASURE (evasion indicators), MANAGE','Data Evasion / Hidden Comms','LLM01 Prompt Injection (evasion style)',3),
	 ('Retrieving Salary Info','Insider Risks','6, 8','MAP, MEASURE, MANAGE','Unauthorized HR Data Access','LLM06 Sensitive Information Disclosure',5),
	 ('Reverse Psychology Prompts','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Psychological Jailbreak','LLM01 Prompt Injection',4),
	 ('Roleplay or Persona Spoofing','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Jailbreak via Role/Persona Abuse','LLM01 Prompt Injection',4),
	 ('Salary Information','Data Risks','6, 8','MAP (sensitive HR data), MEASURE, MANAGE','HR/Compensation Data Exposure','LLM06 Sensitive Information Disclosure',3),
	 ('Suffix Injection','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Instruction Appending / Output Control','LLM01 Prompt Injection',4),
	 ('Synonym/Paraphrased Attacks','AI Adversarial Risks','6, 8','MEASURE, MANAGE','Adversarial Text Perturbation','LLM01 Prompt Injection',3);
INSERT INTO `default`.quilr_compliance_types (detection_name,risk_family,iso_mapping,nist_mapping,mitre_mapping,owasp_mapping,weight) VALUES
	 ('Toxic/Biased Output','AI Adversarial Risks','6 (ethics), 8, 9','MEASURE (bias/toxicity), MANAGE','Content Harm / Discrimination','LLM02 Insecure Output Handling',4),
	 ('Typo-spacing / Misspellings','AI Adversarial Risks','6, 8','MEASURE (adversarial inputs), MANAGE','Adversarial Text Perturbation','LLM01 Prompt Injection',3),
	 ('Unauthorized Data Access','Insider Risks','6, 8, 9','MAP, MEASURE, MANAGE','Privilege/Scope Abuse via AI','LLM06 Sensitive Information Disclosure',5),
	 ('Unauthorized IP Output','AI Adversarial Risks','6, 8 (IP protection), 9','MAP (content/IP policy), MEASURE, MANAGE','Exfiltration of Proprietary Content','LLM02 Insecure Output Handling, LLM06 Sensitive Information Disclosure',5),
	 ('Unsafe Recommendations','AI Adversarial Risks','6 (risk to people), 8','MEASURE (harmful outputs), MANAGE','Harmful or Dangerous Guidance','LLM02 Insecure Output Handling',4),
	 ('making or understanding bombs','Data Risks','6 (safety), 8','MEASURE (prohibited content), MANAGE','Weaponization Content','LLM02 Insecure Output Handling',3),
	 ('test_is','Data Risks','6, 8','MEASURE','Generic Data Detection','LLM06 Sensitive Information Disclosure',2);

==========================================================

Received exception from server (version 26.1.2):
Code: 60. DB::Exception: Received from localhost:9000. DB::Exception: Table default.quilr_compliance_scores does not exist. (UNKNOWN_TABLE)


Received exception from server (version 26.1.2):
Code: 60. DB::Exception: Received from localhost:9000. DB::Exception: Table default.quilr_compliance_types does not exist. (UNKNOWN_TABLE)

================================================================

-- guardrails changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS request_tokens UInt64,
ADD COLUMN IF NOT EXISTS model_name String;
 
 
ALTER TABLE raw_alert_responses
ADD COLUMN IF NOT EXISTS response_tokens UInt64,
ADD COLUMN IF NOT EXISTS total_latency_ms UInt64,
ADD COLUMN IF NOT EXISTS model_name String,
ADD COLUMN IF NOT EXISTS error_type String,
ADD COLUMN IF NOT EXISTS error_message String,
ADD COLUMN IF NOT EXISTS status_code UInt64;

=========================================================================

-- provider changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS provider String;

-- isMfaSupported and mfa_enabled
ALTER TABLE default.apps_db ADD COLUMN IF NOT EXISTS isMfaSupported String DEFAULT '' AFTER total_score;

ALTER TABLE default.apps_db ADD COLUMN IF NOT EXISTS  mfa_enabled String DEFAULT '' AFTER isMfaSupported;

-- source_app_id and dest_app_id
ALTER TABLE quilr_alert_events

ADD COLUMN IF NOT EXISTS source_app_id LowCardinality(Nullable(String)),

ADD COLUMN IF NOT EXISTS dest_app_id LowCardinality(Nullable(String));

ALTER TABLE raw_alert_responses
ADD COLUMN IF NOT EXISTS provider String;

===========================================================================

--subProduct changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS subproduct String;

==============================================================================

--mcpGateway changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_tool String;
 
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_agent_name String;
 
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_gateway_name String;
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_client String;

===================================================================================

INSERT INTO default.app_tenant_settings
(
  subscriber,
  tenant,
  app_name,
  domain,
  app_id,
  app_type,
  admin_users,
  approval_status,
  isLicensed,
  criticality,
  isBlocked,
  last_updated,
  index_time,
  admin_user_emails
)
WITH qae_apps AS
(
  SELECT DISTINCT
    toString(subscriber) AS subscriber,
    toString(tenant)     AS tenant,
    lower(trimBoth(source_app_id)) AS app_id,
    NULLIF(lower(trimBoth(source_app_id)), '') AS app_id_join
  FROM default.quilr_alert_events
  WHERE source_app_id IS NOT NULL
    AND trimBoth(source_app_id) != ''


  UNION ALL


  SELECT DISTINCT
    toString(subscriber) AS subscriber,
    toString(tenant)     AS tenant,
    lower(trimBoth(dest_app_id)) AS app_id,
    NULLIF(lower(trimBoth(dest_app_id)), '') AS app_id_join
  FROM default.quilr_alert_events
  WHERE dest_app_id IS NOT NULL
    AND trimBoth(dest_app_id) != ''
)
SELECT
  q.subscriber,
  q.tenant,
  ad.app_name,
  ad.domain,
  ad.app_id,
  ad.app_type,
  CAST('{}', 'JSON') AS admin_users,
  'NEEDS REVIEW' AS approval_status,
  'No' AS isLicensed,
  'NOT CRITICAL' AS criticality,
  'No' AS isBlocked,
  toUnixTimestamp(now()) AS last_updated,
  now() AS index_time,
  [] AS admin_user_emails
FROM qae_apps q
LEFT JOIN
(
  SELECT
    subscriber,
    tenant,
    NULLIF(lower(trimBoth(app_id)), '') AS app_id_join
  FROM default.app_tenant_settings
) ats
  ON ats.subscriber = q.subscriber
 AND ats.tenant = q.tenant
 AND ats.app_id_join = q.app_id_join
INNER JOIN default.apps_db ad
  ON lower(trimBoth(ad.app_id)) = q.app_id_join
WHERE q.app_id_join IS NOT NULL
  AND ats.app_id_join IS NULL;

==============================================================

-- channel & source
-- 17 feb
ALTER TABLE default.quilr_alert_events
ADD COLUMN channel LowCardinality(String) DEFAULT '';
-- endpoint agent changes
-- 17 feb
ALTER TABLE default.quilr_alert_events
ADD COLUMN ea_client_details LowCardinality(String) DEFAULT '';

===================================================================


