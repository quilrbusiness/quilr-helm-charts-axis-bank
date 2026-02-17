CREATE OR REPLACE VIEW data_model AS
 SELECT om.category_name AS modelname,
    om.category_name AS codename,
    rs.tenant_id AS tenant
   FROM dlp_config_risks_oob_metadata om,
    dlp_config_risk_states rs
  WHERE ((om.risk_type = 'data'::text) AND (om.category_id = rs.category))
UNION
 SELECT dlp_config_configs.name AS modelname,
    dlp_config_configs.metadata->>'code_name' AS codename,
    dlp_config_configs.tenant_id AS tenant
   FROM dlp_config_configs
  WHERE (((dlp_config_configs.metadata)::jsonb ->> 'category'::text) = 'Data Risks'::text);
