-- schema : public
-- Date : 19-Jan-2026
-- Usage: Fabric filters for users ingestion 
ALTER TABLE public.instances ADD COLUMN IF NOT EXISTS filters jsonb DEFAULT '{}'::jsonb;

-- Usage: Store Fabric metadata  
ALTER TABLE public.instances
ADD COLUMN persist BOOLEAN DEFAULT true,
ADD COLUMN meta_data JSON;

--Usage: For Tracking last_runtime

-- Table creation for the last_runtime table
CREATE TABLE IF NOT EXISTS public.last_runtime (
    id SERIAL PRIMARY KEY,
    tenantid UUID NOT NULL,
    subscriberid UUID NOT NULL,
    instanceid UUID NOT NULL,
    fabricid varchar(250) NOT NULL,
    lastrun TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);
-- update the table to add a unique constraint
ALTER TABLE public.last_runtime
ADD CONSTRAINT unique_tenant_subscriber_instance
UNIQUE (tenantid, subscriberid, instanceid, fabricid);