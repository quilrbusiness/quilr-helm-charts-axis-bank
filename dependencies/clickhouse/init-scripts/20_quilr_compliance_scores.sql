CREATE TABLE IF NOT EXISTS default.quilr_compliance_scores
(
    `detection_name` String,
    `iso_modifier` Float32,
    `nist_modifier` Float32,
    `owasp_modifier` Float32,
    `mitre_modifier` Float32,
    `base_weight` Float32,
    `iso_weight` Float32,
    `nist_weight` Float32,
    `owasp_weight` Float32,
    `mitre_weight` Float32
)
ENGINE = MergeTree
ORDER BY detection_name
SETTINGS index_granularity = 8192;