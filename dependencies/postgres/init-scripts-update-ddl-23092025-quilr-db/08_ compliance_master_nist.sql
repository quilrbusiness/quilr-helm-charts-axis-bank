DROP TABLE IF EXISTS compliance_master_nist  ;

CREATE TABLE compliance_master_nist (
    id uuid NOT NULL,
    classification varchar(100) NULL,
    control_id varchar(50) NOT NULL,
    control_name varchar(255) NOT NULL,
    created_at timestamp(6) NOT NULL,
    description text NULL,
    evidence_collection_method varchar(255) NULL,
    example_artifact text NULL,
    format varchar(50) NULL,
    framework_category varchar(255) NULL,
    mitigation_if_failed text NULL,
    points_assigned int4 NULL,
    responsible_role varchar(255) NULL,
    row_id int4 NULL,
    score_if_passed int4 NULL,
    scoring_method text NULL,
    software_system_to_integrate varchar(255) NULL,
    source_reference varchar(255) NULL,
    target_ai_asset varchar(255) NULL,
    updated_at timestamp(6) NULL,
    CONSTRAINT compliance_master_nist_pkey PRIMARY KEY (id)
);