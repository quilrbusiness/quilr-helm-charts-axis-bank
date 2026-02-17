

-- `default`.quilr_action_status_audit definition

CREATE TABLE IF NOT EXISTS default.quilr_action_status_audit
(

    `request_id` String,

    `context_id` String,

    `subscriber` String,

    `tenant` String,

    `status` String,

    `last_updated` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC')
)
ENGINE = MergeTree
PARTITION BY (subscriber,
 tenant,
 toYYYYMM(last_updated))
ORDER BY (subscriber,
 tenant,
 context_id,
 request_id,
 last_updated)
SETTINGS index_granularity = 8192;


/* ============================================================
   apps_db migration – PAAS
   Engine: ReplacingMergeTree
   ORDER BY change: (subscriber, tenant, app_name)
                 -> (subscriber, tenant, app_id)
   ============================================================ */

/* STEP 1: Backup table */
CREATE TABLE IF NOT EXISTS default.apps_db_backup
(
    subscriber LowCardinality(String),
    tenant LowCardinality(String),
    domain LowCardinality(String),
    app_id LowCardinality(String),
    app_name LowCardinality(String),
    app_category LowCardinality(String),
    app_sub_category LowCardinality(String),
    app_logo String,
    last_updated UInt64 DEFAULT 0,
    index_time DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    app_type String,
    app_bus_category LowCardinality(String),
    total_score Float32 DEFAULT 0.,
    isMfaSupported String DEFAULT '',
    mfa_enabled String DEFAULT '',

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_category app_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_sub_category app_sub_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
ORDER BY (subscriber, tenant, app_name)
SETTINGS index_granularity = 8192;

/* STEP 2: Copy data */
INSERT INTO default.apps_db_backup
SELECT * FROM default.apps_db;


/* STEP 4: Drop old table */
DROP TABLE default.apps_db;

/* STEP 5: Create new table */
CREATE TABLE IF NOT EXISTS default.apps_db
(
    subscriber LowCardinality(String),
    tenant LowCardinality(String),
    domain LowCardinality(String),
    app_id LowCardinality(String),
    app_name LowCardinality(String),
    app_category LowCardinality(String),
    app_sub_category LowCardinality(String),
    app_logo String,
    last_updated UInt64 DEFAULT 0,
    index_time DateTime64(3, 'UTC') DEFAULT now64(3, 'UTC'),
    app_type String,
    app_bus_category LowCardinality(String),
    total_score Float32 DEFAULT 0.,
    isMfaSupported String DEFAULT '',
    mfa_enabled String DEFAULT '',

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_category app_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_sub_category app_sub_category TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
ORDER BY (subscriber, tenant, app_id)
SETTINGS index_granularity = 8192;

--Step 6. ingest back the custom AI Apps
INSERT INTO default.apps_db SELECT * FROM default.apps_db 
  where app_bus_category = 'Custom AI App';

ALTER TABLE default.apps_db
ADD COLUMN app_internal_type LowCardinality(String) DEFAULT '' AFTER app_type;

ALTER TABLE default.apps_db
ADD COLUMN app_source_channel LowCardinality(String) DEFAULT '' AFTER app_internal_type;






-- ============================================================
-- PAAS : app_tenant_settings migration
-- Engine : ReplacingMergeTree
-- Change : ORDER BY (subscriber, tenant, app_name)
--      -> ORDER BY (subscriber, tenant, app_id)
-- ============================================================

-- 1. Create backup table with OLD schema and OLD ORDER BY
CREATE TABLE IF NOT EXISTS default.app_tenant_settings_backup
(
    subscriber String,
    tenant String,
    app_name LowCardinality(String),
    domain LowCardinality(String),
    app_id LowCardinality(String),
    app_type LowCardinality(String),
    admin_users JSON,
    approval_status LowCardinality(String),
    isLicensed LowCardinality(String),
    criticality LowCardinality(String),
    isBlocked LowCardinality(String),
    last_updated UInt64 DEFAULT 0,
    index_time DateTime DEFAULT now(),
    admin_user_emails Array(String),

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_type app_type TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_approval_status approval_status TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isLicensed isLicensed TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_criticality criticality TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isBlocked isBlocked TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber, tenant, app_name)
SETTINGS index_granularity = 8192;

-- 2. Backup existing data
INSERT INTO default.app_tenant_settings_backup
SELECT * FROM default.app_tenant_settings;

OPTIMIZE TABLE app_tenant_settings_backup FINAL;


-- 3. Drop old table
DROP TABLE IF EXISTS default.app_tenant_settings;

-- 4. Create new table with NEW ORDER BY
CREATE TABLE IF NOT EXISTS default.app_tenant_settings
(
    subscriber String,
    tenant String,
    app_name LowCardinality(String),
    domain LowCardinality(String),
    app_id LowCardinality(String),
    app_type LowCardinality(String),
    admin_users JSON,
    approval_status LowCardinality(String),
    isLicensed LowCardinality(String),
    criticality LowCardinality(String),
    isBlocked LowCardinality(String),
    last_updated UInt64 DEFAULT 0,
    index_time DateTime DEFAULT now(),
    admin_user_emails Array(String),

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_tenant_id tenant TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_name app_name TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_domain domain TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_app_type app_type TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_approval_status approval_status TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isLicensed isLicensed TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_criticality criticality TYPE bloom_filter(0.01) GRANULARITY 1,
    INDEX idx_isBlocked isBlocked TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (subscriber, tenant, app_id)
SETTINGS index_granularity = 8192;


--5. ingest back the custom AI Apps
INSERT INTO default.app_tenant_settings
SELECT *
FROM app_tenant_settings_backup ats
WHERE ats.app_name IN (
    SELECT app_name
    FROM default.apps_db
    WHERE app_bus_category = 'Custom AI App'
);

--select count(*) from app_tenant_settings ats limit 5;


-- show create table app_tenant_settings




-- ============================================================
-- PAAS : password_reuse_status_tracker
-- Drop and recreate (no backup, table is empty)
-- ============================================================

DROP TABLE IF EXISTS default.password_reuse_status_tracker;

CREATE TABLE IF NOT EXISTS default.password_reuse_status_tracker
(
    subscriber String,
    tenant String,
    user_principalname LowCardinality(String),
    user_name String,
    app_id LowCardinality(String),
    app_name LowCardinality(String),
    approval_status String,
    last_updated UInt64,
    index_time DateTime,
    dest_app_name String,
    dest_app_id String
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY
(
    subscriber,
    tenant,
    user_principalname,
    app_name,
    dest_app_name
)
SETTINGS index_granularity = 8192;




-- `default`.accounts definition

CREATE TABLE IF NOT EXISTS default.accounts
(

    `subscriber` String,

    `tenant` String,

    `user_principalname` String,

    `user_name` String,

    `account_id` String,

    `app_id` String,

    `login_user_id` String,

    `first_visited` DateTime,

    `last_visited` DateTime,

    INDEX idx_subscriber subscriber TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_principalname user_principalname TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_account_id account_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_login_user_id login_user_id TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_visited)
PARTITION BY tenant
ORDER BY (subscriber,
 tenant,
 user_principalname,
 account_id)
SETTINGS index_granularity = 8192;



--created MV `default`.accounts_mv source
CREATE MATERIALIZED VIEW default.accounts_mv TO default.accounts
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



--Insert all the accounts data to accouts table
INSERT INTO default.accounts (
    subscriber,
    tenant,
    user_principalname,
    user_name,
    account_id,
    app_id,
    login_user_id,
    first_visited,
    last_visited
)
SELECT
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



-- `default`.`smart_groups` definition

CREATE TABLE IF NOT EXISTS default.smart_groups
(

    `tenant` UUID,

    `user_email` LowCardinality(String),

    `group_name` LowCardinality(String),

    `group_type` LowCardinality(String),

    `last_updated` UInt64,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_user_email user_email TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_group_name group_name TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_group_type group_type TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (tenant,
 user_email,
 group_name,
 group_type)
SETTINGS index_granularity = 8192;

--insert data into smart groups
INSERT INTO default.smart_groups
(
    tenant,
    user_email,
    group_name,
    group_type,
    last_updated,
    index_time
)
SELECT DISTINCT
    toUUIDOrNull(u.tenant) AS tenant,
    lowerUTF8(trimBoth(u.email)) AS user_email,
    sg AS group_name,
    'stg' AS group_type,
    toUInt64(toUnixTimestamp64Milli(now64(3, 'UTC'))) AS last_updated,
    now64(3, 'UTC') AS index_time
FROM default.users u
ARRAY JOIN u.smartgrps AS sg
WHERE u.email IS NOT NULL AND u.email != ''
  AND u.tenant IS NOT NULL AND u.tenant != ''
  AND sg NOT IN ('', '-', 'Not Available');




--select * from app_tenant_settings as ats order by ats.index_time desc limit 10;

-- select * from app_admin_users;
-- `default`.`app_admin_users` definition

CREATE TABLE IF NOT EXISTS default.app_admin_users
(

    `tenant` UUID,

    `app_id` LowCardinality(String),

    `admin_user_id` LowCardinality(String),

    `admin_user_email` LowCardinality(String),

    `admin_user_name` LowCardinality(String),

    `last_updated` UInt64,

    `index_time` DateTime64(3,
 'UTC') DEFAULT now64(3,
 'UTC'),

    INDEX idx_tenant tenant TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_app_id app_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_admin_user_id admin_user_id TYPE bloom_filter(0.01) GRANULARITY 1,

    INDEX idx_admin_email admin_user_email TYPE bloom_filter(0.01) GRANULARITY 1
)
ENGINE = ReplacingMergeTree(last_updated)
PARTITION BY tenant
ORDER BY (tenant,
 app_id,
 admin_user_id)
SETTINGS index_granularity = 8192;


--insert initial data
INSERT INTO default.app_admin_users (
    tenant,
    app_id,
    admin_user_id,
    admin_user_email,
    admin_user_name,
    last_updated,
    index_time
)
SELECT 
    toUUID(ats.tenant) as tenant,
    ats.app_id,
    u.user_id as admin_user_id,
    u.email as admin_user_email,
    u.user_name as admin_user_name,
    greatest(ats.last_updated, u.last_updated) as last_updated,
    now64(3, 'UTC') as index_time
FROM default.app_tenant_settings ats
ARRAY JOIN ats.admin_user_emails as admin_email
INNER JOIN default.users u 
    ON u.tenant = ats.tenant 
    AND u.email = admin_email
WHERE arrayExists(x -> x != '', ats.admin_user_emails);





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



--subProduct changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS subproduct String;



--mcpGateway changes
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_tool String;
 
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_agent_name String;
 
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_gateway_name String;
 
ALTER TABLE quilr_alert_events
ADD COLUMN IF NOT EXISTS mcp_client String; 