-- Table Definition ----------------------------------------------

CREATE TABLE tenant (
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    name character varying NOT NULL,
    description character varying NOT NULL,
    shortcode character varying NOT NULL,
    "subscriberId" uuid REFERENCES subscriber(id),
    colorcode character varying NOT NULL,
    status character varying NOT NULL,
    createdby character varying NOT NULL,
    updatedby character varying NOT NULL,
    createdon timestamp without time zone NOT NULL DEFAULT now(),
    updatedon timestamp without time zone NOT NULL DEFAULT now(),
    "deletedAt" timestamp without time zone,
    license_config jsonb
);

-- Indices -------------------------------------------------------

CREATE UNIQUE INDEX "PK_da8c6efd67bb301e810e56ac139" ON tenant(id uuid_ops);
