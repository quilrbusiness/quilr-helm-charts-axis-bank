INSERT INTO public.compliance_master_iso (id,additional_notes,classification,control_id,control_name,created_at,description,evidence_collection_method,example_artifact,format,framework_category,mitigation_if_failed,points_assigned,responsible_role,row_id,score_if_passed,scoring_method,software_system_to_integrate,source_reference,target_ai_asset,updated_at) VALUES
	 ('9cc29259-1c25-43b6-9922-e6bf5ab03aa4'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.2.2','AI Policy','2025-12-03 19:12:06.594604','The organization shall document a policy for the development or use of AI systems.','Manual upload','Policy document','PDF','Policies & Governance','Develop and approve an official AI policy aligned with business strategy and risk appetite.',5,'AI Risk Officer',1,5,'Full points if an AI policy is documented and approved (partial for draft).','ServiceNow','ISO/IEC 42001:2023 Annex A.2.2','Organization (Processes)','2025-12-03 19:12:06.594604'),
	 ('af4cb16f-bd4f-40fd-a970-a5f18231549d'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.2.3','Alignment with other organizational policies','2025-12-03 19:12:06.594604','The organization shall determine where other policies can be affected by or apply to the AI objectives with respect to AI systems.','Workflow trigger','Training attendance log','XLSX','Policies & Governance','Review existing policies (IT, security, privacy, etc.) and update them to incorporate AI considerations.',5,'Compliance Manager',2,5,'Full points if AI policy links to all relevant org policies.','Jira','ISO/IEC 42001:2023 Annex A.2.3','Organization (Processes)','2025-12-03 19:12:06.594604'),
	 ('d5ad1a86-ecc5-416d-9c1f-eb0e2983883f'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.2.4','AI Policy Review','2025-12-03 19:12:06.594604','The AI policy shall be reviewed at planned intervals or as needed to ensure it remains suitable, adequate and effective.','Integration','Audit trail','LOG','Policies & Governance','Establish a periodic review schedule for the AI policy (e.g. annually) and adjust the policy based on outcomes.',5,'Security Analyst',3,5,'Full points if a regular review cycle is in place (partial if ad-hoc).','Confluence','ISO/IEC 42001:2023 Annex A.2.4','Organization (Governance)','2025-12-03 19:12:06.594604'),
	 ('00d9a512-7505-421c-9fb7-8355d2ded4ca'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.3.2','AI Roles & Responsibilities','2025-12-03 19:12:06.594604','Roles and responsibilities for AI shall be defined and allocated according to the needs of the organization.','Automated sync','Meeting minutes','DOCX','Internal Organization','Define AI governance roles (e.g. AI Lead, Risk Officer) and document their responsibilities; communicate to all stakeholders.',5,'ML Engineer',4,5,'Full points if an RACI or similar document exists (partial if roles defined but not communicated).','Splunk','ISO/IEC 42001:2023 Annex A.3.2','Organization (Workforce)','2025-12-03 19:12:06.594604'),
	 ('8f15a072-4555-4f3d-abb3-7c02da14da19'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.3.3','Reporting of AI Concerns','2025-12-03 19:12:06.594604','The organization shall define and put in place a process to report concerns about the organization’s role with respect to an AI system throughout its life cycle.','Manual entry','Access review report','CSV','Internal Organization','Establish and publicize an AI issue reporting process (e.g. an ethics hotline or email) and ensure reports are tracked and addressed.',5,'Data Protection Officer',5,5,'Full points if a clear reporting channel (e.g. hotline, email) exists (partial if informal process).','Workday','ISO/IEC 42001:2023 Annex A.3.3','Organization (Governance)','2025-12-03 19:12:06.594604'),
	 ('b36a73dc-e87b-44bb-bd90-7e65f33dd0f5'::uuid,NULL,'Operational','A.4.2','Resource Documentation','2025-12-03 19:12:06.594604','The organization shall identify and document relevant resources required for the activities at given AI system life cycle stages and other AI-related activities relevant for the organization.','Manual upload','Policy document','PDF','AI System Resources','Catalog all AI system resources (data, tools, computing, personnel) by lifecycle stage; maintain this inventory in a central repository.',5,'AI Risk Officer',6,5,'Full points if a comprehensive AI asset inventory exists (partial if incomplete).','ServiceNow','ISO/IEC 42001:2023 Annex A.4.2','AI System (All components)','2025-12-03 19:12:06.594604'),
	 ('3fabef2a-b7bd-4839-aed1-5b2f8d166d8c'::uuid,NULL,'Operational','A.4.6','Human Resources (AI)','2025-12-03 19:12:06.594604','As part of resource identification, the organization shall document information about the human resources and their competences utilized for the development, deploy ment, operation, change management, maintenance, transfer and decommissioning, as well as verification and integration of the AI system.','Workflow trigger','Training attendance log','XLSX','AI System Resources','Identify all personnel roles involved in the AI lifecycle and record required skills/training; ensure staff meet these competency criteria.',5,'Compliance Manager',10,5,'Full points if AI team roles and competency requirements are documented (partial if informal).','Jira','ISO/IEC 42001:2023 Annex A.4.6','Personnel (AI Team)','2025-12-03 19:12:06.594604'),
	 ('8c6caf0b-eb6d-494b-b620-eb00678c6b42'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.5.2','AI System Impact Assessment Process','2025-12-03 19:12:06.594604','The organization shall establish a process to assess the potential consequences for individuals or groups of indi viduals, or both, and societies that can result from the AI system throughout its life cycle.','Integration','Audit trail','LOG','Impact Assessment','Develop and implement an AI System Impact Assessment procedure (e.g. similar to DPIAs) to evaluate societal and user impacts at design and updates.',5,'Security Analyst',11,5,'Full points if a formal AI impact assessment process exists (partial if process exists but not institutionalized).','Confluence','ISO/IEC 42001:2023 Annex A.5.2','AI System (Impacts on Stakeholders)','2025-12-03 19:12:06.594604'),
	 ('c392f879-d52a-47bb-938d-2ff365bae215'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.5.3','Documenting Impact Assessments','2025-12-03 19:12:06.594604','The organization shall document the results of AI system impact assessments and retain results for a defined peri od.','Automated sync','Meeting minutes','DOCX','Impact Assessment','Use a standard template/report to record each AI impact assessment; store reports in a repository per retention requirements.',5,'ML Engineer',12,5,'Full points if impact assessments are documented and archived per policy (partial if documentation is incomplete).','Splunk','ISO/IEC 42001:2023 Annex A.5.3','Documentation (Impact Results)','2025-12-03 19:12:06.594604'),
	 ('203b0b74-758c-4a42-ab0b-ff4b9fc271c7'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.5.4','Individual Impact Assessment','2025-12-03 19:12:06.594604','The organization shall assess and document the potential impacts of AI systems to individuals or groups of individu als throughout the system’s life cycle.','Manual entry','Access review report','CSV','Impact Assessment','Include evaluation of impacts on individuals (e.g. privacy, fairness) in the AI impact assessment process; update these evaluations whenever the system changes significantly.',5,'Data Protection Officer',13,5,'Full points if privacy/ethical impact on individuals is evaluated at each lifecycle phase (partial if only initial assessment done).','Workday','ISO/IEC 42001:2023 Annex A.5.4','Individuals (Users/Affected)','2025-12-03 19:12:06.594604');
INSERT INTO public.compliance_master_iso (id,additional_notes,classification,control_id,control_name,created_at,description,evidence_collection_method,example_artifact,format,framework_category,mitigation_if_failed,points_assigned,responsible_role,row_id,score_if_passed,scoring_method,software_system_to_integrate,source_reference,target_ai_asset,updated_at) VALUES
	 ('272bedc7-72a2-476d-b727-3b82a0f4c91f'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.6.2.7','Technical Documentation for AI System','2025-12-03 19:12:06.594604','The organization shall determine what AI system technical documentation is needed for each relevant category of interested parties, such as users, partners, supervisory authorities, and provide the technical documentation to them in the appropriate form.','Manual upload','Policy document','PDF','AI System Lifecycle','Prepare appropriate documentation for each audience: e.g. user guides with model capabilities/limits for users, Fact Sheets or Model Cards for transparency, technical specs for partners/regulators; distribute and update these as needed.',5,'AI Risk Officer',22,5,'Full points if technical documents (e.g. model cards for users, regulatory docs) are produced and disseminated (partial if documentation exists but not tailored or delivered to stakeholders).','ServiceNow','ISO/IEC 42001:2023 Annex A.6.2.7','AI System (Documentation)','2025-12-03 19:12:06.594604'),
	 ('e62c1c97-7437-4050-b20a-49e37799726f'::uuid,NULL,'Technical','A.4.5','System & Computing Resources','2025-12-03 19:12:06.594604','As part of resource identification, the organization shall document information about the system and computing resources utilized for the AI system.',NULL,'AI Infrastructure Inventory (cloud resources, clusters, GPUs, secrets vault, networks), architecture diagram, and CMDB record; IaC repository reference. JSON export (cloud asset inventory); PDF architecture diagram; IaC (Terraform, ARM, CloudFormation) links or archived bundle',NULL,'AI System Resources','Maintain an architecture diagram or inventory of all hardware and cloud resources supporting each AI system (with configurations).',5,NULL,9,5,'Full points if AI infrastructure (servers, cloud instances) is documented (partial if some components undocumented).',NULL,'ISO/IEC 42001:2023 Annex A.4.5','Infrastructure (Cloud/Hardware)','2025-12-03 19:12:06.594604'),
	 ('1aa3a744-77fa-42e0-9428-4d4409c0c7b1'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.5.5','Societal Impact Assessment','2025-12-03 19:12:06.594604','The organization shall assess and document the potential societal impacts of their AI systems throughout their life cycle.','Manual upload','Policy document','PDF','Impact Assessment','Expand impact assessments to consider societal-level consequences (e.g. economic, environmental, social harms) of AI system deployment; engage relevant external stakeholders or experts as needed.',5,'AI Risk Officer',14,5,'Full points if broader societal risks (e.g. social bias, environmental impact) are assessed (partial if not addressed).','ServiceNow','ISO/IEC 42001:2023 Annex A.5.5','Society/Public','2025-12-03 19:12:06.594604'),
	 ('43ce1ca8-e867-4fcc-829a-f49374ab4b4c'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.6.1.2','Objectives for Responsible Development','2025-12-03 19:12:06.594604','The organization shall identify and document objectives to guide the responsible development AI systems, and take those objectives into account and integrate measures to achieve them in the development life cycle.','Workflow trigger','Training attendance log','XLSX','AI System Lifecycle','Define explicit responsible AI objectives (e.g. “no disparate impact”, “explainability”) for each AI project at inception; include these goals in project plans and design requirements.',5,'Compliance Manager',15,5,'Full points if clear responsible AI objectives (e.g. fairness, transparency goals) are defined for each project (partial if general or missing).','Jira','ISO/IEC 42001:2023 Annex A.6.1.2','AI Development (Process)','2025-12-03 19:12:06.594604'),
	 ('ba67221c-a097-48c3-8b4f-3f25cdeea8bc'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.6.1.3','Processes for Responsible Design','2025-12-03 19:12:06.594604','The organization shall define and document the specific processes for the responsible design and development of the AI system.','Integration','Audit trail','LOG','AI System Lifecycle','Implement a defined development workflow that includes ethical and risk checkpoints (e.g. bias testing, peer review of models) and document these processes.',5,'Security Analyst',16,5,'Full points if a formal methodology (e.g. checklists, review gates for ethics/security) is in place for AI design (partial if ad-hoc).','Confluence','ISO/IEC 42001:2023 Annex A.6.1.3','AI Development (Process)','2025-12-03 19:12:06.594604'),
	 ('707fa6da-9ab9-4cb9-b760-8b0c84d7a046'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.6.2.5','AI System Deployment Plan','2025-12-03 19:12:06.594604','The organization shall document a deployment plan and ensure that appropriate requirements are met prior to deployment.','Automated sync','Meeting minutes','DOCX','AI System Lifecycle','Before launching any AI system, prepare a deployment plan detailing steps, responsible parties, validation checks (e.g. security review), and rollback procedures; obtain necessary approvals.',5,'ML Engineer',20,5,'Full points if a deployment checklist/plan (covering pre-release approvals, testing, rollback strategy) is used (partial if deployment is done without formal plan).','Splunk','ISO/IEC 42001:2023 Annex A.6.2.5','Deployment Pipeline','2025-12-03 19:12:06.594604'),
	 ('d958cf94-6d43-4546-a2a0-6024fde7b5ea'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.6.2.6','AI System Operation & Monitoring','2025-12-03 19:12:06.594604','The organization shall define and document the necessary elements for the ongoing operation of the AI system. At the 
minimum, this should include system and performance monitoring, repairs, updates and support.','Manual entry','Access review report','CSV','AI System Lifecycle','Create an AI system operations guide/manual that includes monitoring procedures (for drift, outages), maintenance schedule (model retraining, patching), and support contacts; implement these procedures in operations.',5,'Data Protection Officer',21,5,'Full points if post-deployment monitoring and maintenance processes are documented and active (partial if only reactive support).','Workday','ISO/IEC 42001:2023 Annex A.6.2.6','AI System (Operations)','2025-12-03 19:12:06.594604'),
	 ('54bde228-8110-429c-8b4e-62e80733ab38'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.10.3','Supplier Management for AI','2025-12-03 19:12:06.594604','The organization shall establish a process to ensure that its usage of services, products or materials provided by suppliers aligns with the organization’s approach to the responsible development and use of AI systems.','Manual entry','Access review report','CSV','Third-Party Management','Implement a vendor risk management procedure focusing on AI: evaluate suppliers’ AI components (e.g. pretrained models, data) for compliance with your AI principles (security, fairness, etc.); require suppliers to provide assurances or documentation of their own risk management.',5,'Data Protection Officer',37,5,'Full points if a supplier review and compliance process for AI ethics/security is in place (partial if suppliers are not vetted for AI risks).','Workday','ISO/IEC 42001:2023 Annex A.10.3','Third-Party Services','2025-12-03 19:12:06.594604'),
	 ('e5b63069-d57c-4a27-bb31-62ecfb1b2a71'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.8.2','User Documentation & Information','2025-12-03 19:12:06.594604','The organization shall determine and provide the necessary information to users of the AI system.','Workflow trigger','Training attendance log','XLSX','Transparency & Communication','Develop user-facing documentation (e.g. user manuals, FAQs) explaining how to use the AI system safely, what its outputs mean, and how to interpret or contest results; include disclaimers about known limitations.',5,'Compliance Manager',29,5,'Full points if users are provided with clear documentation on AI system use, limitations, and risks (partial if only minimal or technical docs not accessible to users).','Jira','ISO/IEC 42001:2023 Annex A.8.2','Users (AI System Users)','2025-12-03 19:12:06.594604'),
	 ('703f7f10-9ab4-4015-8369-9aaa383a5243'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.8.3','External Impact Reporting','2025-12-03 19:12:06.594604','The organization shall provide capabilities for interested parties to report adverse impacts of the AI system.','Integration','Audit trail','LOG','Transparency & Communication','Create a public-facing channel (website form or contact point) where external stakeholders (customers, affected individuals, researchers) can report issues or adverse impacts related to the AI system; set up a process to review and address these reports.',5,'Security Analyst',30,5,'Full points if an external feedback channel for AI incidents (e.g. public issue tracker) is implemented (partial if only internal or none).','Confluence','ISO/IEC 42001:2023 Annex A.8.3','External Parties (Public, Auditors)','2025-12-03 19:12:06.594604');
INSERT INTO public.compliance_master_iso (id,additional_notes,classification,control_id,control_name,created_at,description,evidence_collection_method,example_artifact,format,framework_category,mitigation_if_failed,points_assigned,responsible_role,row_id,score_if_passed,scoring_method,software_system_to_integrate,source_reference,target_ai_asset,updated_at) VALUES
	 ('c4539671-4b8d-49b9-82f0-da43b5fcb822'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.8.4','Incident Communication Plan','2025-12-03 19:12:06.594604','The organization shall provide capabilities for interested parties to report adverse impacts of the AI system.','Automated sync','Meeting minutes','DOCX','Transparency & Communication','Develop an incident communication strategy specifying how and when users will be notified of AI system failures, breaches, or significant errors (e.g. email alerts, in-app notifications), and what information will be provided.',5,'ML Engineer',31,5,'Full points if there is a defined communication protocol to inform users about incidents (partial if ad-hoc notifications only).','Splunk','ISO/IEC 42001:2023 Annex A.8.4','Users (AI System Users)','2025-12-03 19:12:06.594604'),
	 ('bfd945cf-dda1-4398-b5f1-1f57d67adc24'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Operational','A.8.5','Information for Stakeholders','2025-12-03 19:12:06.594604','The organization shall determine and document their obligations to reporting information about the AI system to interested parties.','Manual entry','Access review report','CSV','Transparency & Communication','Identify all relevant stakeholders (regulators, customers, public) and any required disclosures (e.g. compliance reports, transparency statements); document a schedule and format for such reports and ensure they are delivered.',5,'Data Protection Officer',32,5,'Full points if regulatory and stakeholder reporting requirements (e.g. AI transparency, audit reports) are identified and fulfilled (partial if obligations identified but reporting incomplete).','Workday','ISO/IEC 42001:2023 Annex A.8.5','External Stakeholders','2025-12-03 19:12:06.594604'),
	 ('0d2432fc-4d71-447c-b40e-09012261e7c8'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.9.2','Processes for Responsible AI Use','2025-12-03 19:12:06.594604','The organization shall define and document the processes for the responsible use of AI systems.','Manual upload','Policy document','PDF','AI System Usage','Establish usage guidelines or SOPs for AI systems (e.g. when a human review is required, how to handle AI outputs) to ensure they are used in line with ethical and legal standards; train users on these guidelines.',5,'AI Risk Officer',33,5,'Full points if clear procedures or guidelines exist for how employees or customers should use the AI (partial if users are left without guidance).','ServiceNow','ISO/IEC 42001:2023 Annex A.9.2','Operations (AI Usage)','2025-12-03 19:12:06.594604'),
	 ('ddbdb32a-dbbd-4f6b-a9a3-956fa5e26475'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.9.3','Objectives for Responsible Use','2025-12-03 19:12:06.594604','The organization shall identify and document objectives to guide the responsible use of AI systems.','Workflow trigger','Training attendance log','XLSX','AI System Usage','Set clear objectives for AI system use (e.g. “All AI decisions affecting customers will be explainable and fair”) and use these objectives to measure and audit live system usage (for example, track complaint rates or appeals).',5,'Compliance Manager',34,5,'Full points if specific targets (like fairness in outcomes, or user trust metrics) for responsible AI use are set and tracked (partial if only high-level principles exist).','Jira','ISO/IEC 42001:2023 Annex A.9.3','Strategy (AI Use Goals)','2025-12-03 19:12:06.594604'),
	 ('9c4f883d-a011-4987-9a33-3e2d005323e3'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.9.4','Ensuring Intended Use','2025-12-03 19:12:06.594604','The organization shall ensure that the AI system is used according to the intended uses of the AI system and its accompanying documentation.','Integration','Audit trail','LOG','AI System Usage','Implement measures to enforce intended use: for instance, technical access controls to prevent use of the AI system outside allowed contexts, and user training to reinforce proper use; periodically review usage logs for signs of misuse.',5,'Security Analyst',35,5,'Full points if mechanisms (technical or procedural) prevent or detect misuse of the AI system (partial if misuse can go unchecked).','Confluence','ISO/IEC 42001:2023 Annex A.9.4','Operations (AI Usage)','2025-12-03 19:12:06.594604'),
	 ('a4472f6d-0fe2-48fb-b27f-42acc90a1482'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.10.2','Third-Party Responsibility Allocation','2025-12-03 19:12:06.594604','The organization shall ensure that responsibilities within their AI system life cycle are allocated between the organi zation, its partners, suppliers, customers and third parties.','Automated sync','Meeting minutes','DOCX','Third-Party Management','Incorporate clauses in contracts or SLAs with suppliers and partners specifying responsibilities for AI data quality, model performance, incident handling, etc.; ensure customers are informed of their role (if any) in safe AI use.',5,'ML Engineer',36,5,'Full points if contracts or agreements clearly outline AI-related responsibilities (partial if roles are vaguely defined with third parties).','Splunk','ISO/IEC 42001:2023 Annex A.10.2','Third Parties (Partners/Suppliers)','2025-12-03 19:12:06.594604'),
	 ('9bd4ddb2-fa67-4428-bb50-7407b360e386'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Operational','A.10.4','Customer Considerations','2025-12-03 19:12:06.594604','The organization shall ensure that its responsible ap proach to the development and use of AI systems considers 
their customer expectations and needs.','Manual upload','Policy document','PDF','Third-Party Management','Engage with customers or end-users (through surveys, user testing, or advisory boards) to understand their expectations around the AI system (e.g. desired transparency, recourse options) and adjust the AI system or usage guidelines to meet those expectations where feasible.',5,'AI Risk Officer',38,5,'Full points if user/customer research or feedback informs AI design and usage policies (partial if minimal customer input).','ServiceNow','ISO/IEC 42001:2023 Annex A.10.4','Customers (AI Consumers)','2025-12-03 19:12:06.594604'),
	 ('8a8f5723-57f3-4c3d-bdb5-1e660ca84ff7'::uuid,NULL,'Technical','A.4.3','Data Resources','2025-12-03 19:12:06.594604','As part of resource identification, the organization shall document information about the data resources utilized for the AI system.',NULL,'AI System Data Resource Register (per system), including source, owner, sensitivity, licensing, retention, and intended use; export of dataset list and schema. XLSX or CSV export; PDF snapshot for audit pack; JSON export from catalog (optional).',NULL,'AI System Resources','Create and maintain a data catalog for each AI system, including data provenance, formats, and usage context.',5,NULL,7,5,'Full points if data sources, volumes, and types are documented (partial if missing attributes).',NULL,'ISO/IEC 42001:2023 Annex A.4.3','Data (Training & Input)','2025-12-03 19:12:06.594604'),
	 ('227f3631-0f1e-4880-9a54-96d4896ab72c'::uuid,NULL,'Technical','A.4.4','Tooling Resources','2025-12-03 19:12:06.594604','As part of resource identification, the organization shall document information about the tooling resources utilized for the AI system.',NULL,'AI Toolchain Inventory and AI SBOM (libraries, frameworks, SDKs, prompt tooling, vector DB, eval tools); approved tools list and exception approvals. CycloneDX or SPDX (JSON); dependency lockfiles; CSV list; PDF export for audit',NULL,'AI System Resources','Inventory all AI-specific tools (frameworks, libraries, platforms) used in development and deployment; update the list as tools change.',5,NULL,8,5,'Full points if all AI development and deployment tools are inventoried (partial if ad-hoc tracking).',NULL,'ISO/IEC 42001:2023 Annex A.4.4','AI Tools (Software libraries, etc.)','2025-12-03 19:12:06.594604'),
	 ('81054efd-8052-4c01-af37-2e6ca6cb2b34'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Technical','A.6.2.2','AI System Requirements & Specs','2025-12-03 19:12:06.594604','The organization shall specify and document require ments for new AI systems or material enhancements to existing systems',NULL,'Requirements and specification pack: PRD, non functional requirements (security, privacy, safety), trustworthiness criteria, requirements traceability matrix to risks and controls, approval record. DOCX or PDF; Confluence export; Jira epic export; traceability matrix in XLSX.',NULL,'AI System Lifecycle','Develop detailed requirements documents for AI systems (covering functionality, performance, and trustworthiness criteria) prior to design/development; update specs for major changes.',5,NULL,17,5,'Full points if functional and non-functional requirements (including trustworthiness) are documented (partial if only functional or none).',NULL,'ISO/IEC 42001:2023 Annex A.6.2.2','AI System (Requirements)','2025-12-03 19:12:06.594604');
INSERT INTO public.compliance_master_iso (id,additional_notes,classification,control_id,control_name,created_at,description,evidence_collection_method,example_artifact,format,framework_category,mitigation_if_failed,points_assigned,responsible_role,row_id,score_if_passed,scoring_method,software_system_to_integrate,source_reference,target_ai_asset,updated_at) VALUES
	 ('7b65a7ff-b63e-42e5-a08b-6f693f43abd2'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Technical','A.6.2.3','AI System Design Documentation','2025-12-03 19:12:06.594604','The organization shall document the AI system design and development based on organizational objectives, docu mented requirements and specification criteria',NULL,'Design documentation pack: system architecture, data flow diagrams, model and prompt design, tool permission model (if agentic), threat model, model or system card. Diagrams (PNG, PDF, draw.io); Markdown or DOCX; model card (PDF or JSON).',NULL,'AI System Lifecycle','Maintain comprehensive design documentation (architecture diagrams, data flow, model design specs) for each AI system; review and update these documents as the system evolves.',5,NULL,18,5,'Full points if up-to-date design documentation (architecture, algorithms, data flows) exists (partial if outdated or incomplete).',NULL,'ISO/IEC 42001:2023 Annex A.6.2.3','AI System (Design Docs)','2025-12-03 19:12:06.594604'),
	 ('aff79a69-80d1-408c-98ea-6d786db23ded'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Technical','A.6.2.4','AI System V&V Measures','2025-12-03 19:12:06.594604','The organization shall define and document verification and validation measures for the AI system and specify criteria for their use.',NULL,'Verification and validation plan, acceptance criteria, test suite inventory, evaluation reports (quality, safety, bias, robustness), remediation tickets, retest evidence. PDF or HTML reports; CI test outputs (JUnit XML); MLflow run exports; XLSX summary',NULL,'AI System Lifecycle','Establish a formal test plan for AI systems (covering unit tests, performance evaluation, bias and robustness tests) with clear acceptance criteria; document test results and any remediation actions.',5,NULL,19,5,'Full points if a testing plan (including verification/validation criteria for model performance, safety, etc.) is in place (partial if informal testing only).',NULL,'ISO/IEC 42001:2023 Annex A.6.2.4','AI System (Testing)','2025-12-03 19:12:06.594604'),
	 ('0ff6a30d-1baf-4e6b-80e9-1ba57f73606d'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Adversarial risks (prompt injection, indirect injection, tool poisoning)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1
Evidence artifacts to upload:
- AI threat model for app + agent/tooling (attack trees, trust boundaries, tool misuse scenarios)
- AI risk assessment record covering prompt-injection scenarios (likelihood, impact, residual risk)
- Risk treatment plan (chosen mitigations, owners, timelines)
- Secure prompt/tooling design spec (tool allowlist, input validation, permission model)
- Adversarial testing plan and results (test suite, pass/fail, regression history)
- Detection evidence (sample alerts, telemetry extracts, dashboards, tuning change log)
- Incident/exception records (human review decisions, approvals, corrective actions)
Response risks (hallucination, unsafe content, policy violations, harmful advice)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; include 8.4 if assessing user or societal harms
Evidence artifacts to upload:
- Response acceptance criteria and evaluation rubric
- Model/system card and intended-use statement (limitations, disallowed use)
- Offline eval results and review reports (benchmarks, safety tests, red-team style prompts)
- Runtime guardrails configuration evidence (filters, redaction rules, allow/block thresholds)
- Human oversight SOP (review queue, escalation paths, exception process)
- Monitoring evidence (output sampling, drift/quality dashboards, periodic review reports)
- User-facing disclosures and communications on limitations (ties to Annex A transparency/communication controls)
Red-teaming results and improvements (closing findings, raising maturity)
Primary clauses: 9.1, 9.2, 9.3, 10.1, 10.2, plus 6.3 (planning of changes)
Evidence artifacts to upload:
- Red team plan (scope, rules of engagement, success criteria)
- Red team report (findings, severity, exploit narratives, evidence excerpts)
- Root-cause analysis and remediation plan (mapped to controls, owners)
- Change records and verification (tickets/PRs, config diffs, retest results, sign-off)
- Management review minutes showing red-team outcomes reviewed and decisions taken (9.3)
- Updated risk register and updated SoA justifications reflecting what changed and why','Technical','A.6.2.8','Event Logging in AI Lifecycle','2025-12-03 19:12:06.594604','The organization shall determine at which phases of the AI system life cycle, record keeping of event logs should be enabled, but at the minimum when the AI system is in use.',NULL,'AI event logging policy, log schema, sample log extracts showing prompts, outputs, tool calls, decisions, errors; SIEM dashboard screenshots; retention and access control settings',NULL,'AI System Lifecycle','Implement logging for the AI system across lifecycle phases (especially during production use) capturing key events (inputs, outputs, decisions, errors); define retention and review practices for these logs.',5,NULL,23,5,'Full points if logging is enabled for all critical phases (especially runtime) and logs are retained (partial if logging only in some environments or not retained).',NULL,'ISO/IEC 42001:2023 Annex A.6.2.8','AI System (Logging)','2025-12-03 19:12:06.594604'),
	 ('de4480bc-d377-4799-a7c8-811c79af59fa'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Technical','A.7.2','Data for AI Development','2025-12-03 19:12:06.594604','The organization shall define, document, and implement data management processes related to AI system development.',NULL,'AI Development Data Management Procedure: data collection and labeling SOP, dataset versioning approach, preprocessing pipeline governance, access controls, retention rules. PDF policy; JSON or CSV log samples (redacted); dashboard screenshots in PDF. PDF or DOCX SOP; Git repo references; pipeline configs (YAML); dataset version logs (CSV).',NULL,'Data Management','Create a data management procedure for AI development, including steps for data collection, cleaning, labeling, and storage with version control; train staff on following this process.',5,NULL,24,5,'Full points if a formal data management plan (covering data selection, preprocessing, quality checks) exists for model training (partial if ad-hoc data handling).',NULL,'ISO/IEC 42001:2023 Annex A.7.2','Data (Development datasets)','2025-12-03 19:12:06.594604'),
	 ('2598805d-ec98-4987-a014-b26943e47eaf'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Technical','A.7.3','Data Acquisition','2025-12-03 19:12:06.594604','The organization shall determine and document details about the acquisition and selection of the data used in AI systems.',NULL,'Data acquisition dossier: source list with provenance and licensing, selection rationale, approvals, vendor intake checklist, DPIA or impact assessment where applicable. PDF contracts; XLSX source register; ticket exports (CSV); DPIA report (PDF).',NULL,'Data Management','Document every data source used for the AI system (including provenance and licensing) and the criteria or rationale for including/excluding data; review these choices for bias or gaps.',5,NULL,25,5,'Full points if all data sources and selection criteria for model training are recorded (partial if sources are undocumented or criteria unclear).',NULL,'ISO/IEC 42001:2023 Annex A.7.3','Data (Sources)','2025-12-03 19:12:06.594604'),
	 ('fd44f9d4-25f4-4350-8e52-9ec4c90ea7fa'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Technical','A.7.4','Data Quality Requirements','2025-12-03 19:12:06.594604','The organization shall define and document requirements for data quality and ensure that data used to develop and operate the AI system meet those requirements.',NULL,'Data quality specification and evidence: quality metrics definition, profiling report, validation results, drift and anomaly summaries for input data. PDF or HTML profiles; validation logs (JSON); dashboards screenshots',NULL,'Data Management','Establish data quality criteria (e.g. completeness, consistency, lack of bias) for AI training and input data; implement validation checks or tools to verify that data meets these criteria before use.',5,NULL,26,5,'Full points if clear data quality metrics (accuracy, completeness, representativeness, etc.) are set and data is validated against them (partial if some quality checks missing).',NULL,'ISO/IEC 42001:2023 Annex A.7.4','Data (Quality)','2025-12-03 19:12:06.594604'),
	 ('5635d507-1eae-4a9f-b935-2862ae1bb029'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Technical','A.7.5','Data Provenance Recording','2025-12-03 19:12:06.594604','The organization shall define and document a process for recording the provenance of data used in its AI systems over the life cycles of the data and the AI system.',NULL,'Data provenance and lineage record: lineage graph, dataset manifest, transformation history, hashes or identifiers, training data statement, update history. Lineage screenshots (PDF); dataset manifest (JSON or CSV); signed attestation (PDF).',NULL,'Data Management','Implement data lineage tracking: record where and how each dataset was obtained, generated, or modified; maintain this record through updates to ensure traceability of all data feeding the AI system.',5,NULL,27,5,'Full points if a data lineage/provenance log is maintained (partial if provenance known for some data but not tracked formally).',NULL,'ISO/IEC 42001:2023 Annex A.7.5','Data (Provenance)','2025-12-03 19:12:06.594604'),
	 ('b0a1abf1-9202-4ebb-b824-a1385d57777b'::uuid,'Audit note: Anchor these topics to ISO 42001 clauses (requirements) and document applied safeguards in the Statement of Applicability (SoA).
Sensitive data detections (secrets, PII, regulated data in prompts or outputs)
Primary clauses: 6.1, 8.1, 8.2, 8.3, 9.1; evidence handling and retention also maps to 7.5
Evidence artifacts to upload:
- Data inventory and classification policy (what is sensitive, examples, owners)
- DPIA or privacy/impact assessment where applicable; record of legal/regulatory requirements considered
- DLP policy definitions for GenAI (patterns, classifiers, allowlists, business exceptions)
- Evidence of enforcement (detections, redactions, blocks, audit trail for overrides)
- Access control and retention policy for prompt/response logs (who can view, retention, storage)
- Encryption and key-management evidence (config snapshots, KMS policy excerpts)
- Incident response records for sensitive data events (containment, notification, corrective actions)','Technical','A.7.6','Data Preparation Methods','2025-12-03 19:12:06.594604','The organization shall define and document its criteria for selecting data preparation methods and the methods to be used.',NULL,'Data preparation specification: approved preprocessing and augmentation list, rationale, pipeline code, feature engineering documentation, peer review sign off. Jupyter notebooks; Markdown; pipeline configs (YAML); repo PR history.',NULL,'Data Management','Decide on standard data preprocessing and augmentation techniques for AI datasets (with rationale for each to avoid bias or information loss); document these techniques in the project documentation and apply consistently.',5,NULL,28,5,'Full points if preprocessing techniques (e.g. normalization, augmentation) and their justification are documented (partial if techniques used ad-hoc without documentation).',NULL,'ISO/IEC 42001:2023 Annex A.7.6','Data (Preprocessing)','2025-12-03 19:12:06.594604');
