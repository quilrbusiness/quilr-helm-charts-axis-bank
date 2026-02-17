DROP TABLE IF EXISTS compliance_status_iso;
DROP TABLE IF EXISTS compliance_status_nist;

CREATE TABLE public.compliance_status_iso (
	id uuid NOT NULL,
	control_id uuid NOT NULL,
	created_at timestamp(6) NULL,
	file_name jsonb NULL,
	status varchar(255) NULL,
	tenant_id varchar(255) NOT NULL,
	updated_at timestamp(6) NULL,
	CONSTRAINT compliance_status_iso_pkey PRIMARY KEY (id)
);

CREATE TABLE public.compliance_status_nist (
	id uuid NOT NULL,
	control_id uuid NOT NULL,
	created_at timestamp(6) NULL,
	file_name jsonb NULL,
	status varchar(255) NULL,
	tenant_id varchar(255) NOT NULL,
	updated_at timestamp(6) NULL,
	CONSTRAINT compliance_status_nist_pkey PRIMARY KEY (id)
);