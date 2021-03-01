SELECT addresses.id,
    addresses.line1,
    addresses.line2,
    addresses.city,
    addresses.state,
    addresses.zip,
    addresses.plus_four,
    addresses.country,
    addresses.foreign_id
FROM openemr.addresses;

SELECT amc_misc_data.amc_id,
    amc_misc_data.pid,
    amc_misc_data.map_category,
    amc_misc_data.map_id,
    amc_misc_data.date_created,
    amc_misc_data.date_completed,
    amc_misc_data.soc_provided
FROM openemr.amc_misc_data;

SELECT amendments.amendment_id,
    amendments.amendment_date,
    amendments.amendment_by,
    amendments.amendment_status,
    amendments.pid,
    amendments.amendment_desc,
    amendments.created_by,
    amendments.modified_by,
    amendments.created_time,
    amendments.modified_time
FROM openemr.amendments;

SELECT amendments_history.amendment_id,
    amendments_history.amendment_note,
    amendments_history.amendment_status,
    amendments_history.created_by,
    amendments_history.created_time
FROM openemr.amendments_history;

SELECT api_log.id,
    api_log.log_id,
    api_log.user_id,
    api_log.patient_id,
    api_log.ip_address,
    api_log.method,
    api_log.request,
    api_log.request_url,
    api_log.request_body,
    api_log.response,
    api_log.created_time
FROM openemr.api_log;

SELECT api_token.id,
    api_token.user_id,
    api_token.token,
    api_token.expiry,
    api_token.client_id,
    api_token.scope
FROM openemr.api_token;

SELECT ar_activity.pid,
    ar_activity.encounter,
    ar_activity.sequence_no,
    ar_activity.code_type,
    ar_activity.code,
    ar_activity.modifier,
    ar_activity.payer_type,
    ar_activity.post_time,
    ar_activity.post_user,
    ar_activity.session_id,
    ar_activity.memo,
    ar_activity.pay_amount,
    ar_activity.adj_amount,
    ar_activity.modified_time,
    ar_activity.follow_up,
    ar_activity.follow_up_note,
    ar_activity.account_code,
    ar_activity.reason_code,
    ar_activity.deleted
FROM openemr.ar_activity;

SELECT ar_session.session_id,
    ar_session.payer_id,
    ar_session.user_id,
    ar_session.closed,
    ar_session.reference,
    ar_session.check_date,
    ar_session.deposit_date,
    ar_session.pay_total,
    ar_session.created_time,
    ar_session.modified_time,
    ar_session.global_amount,
    ar_session.payment_type,
    ar_session.description,
    ar_session.adjustment_code,
    ar_session.post_to_date,
    ar_session.patient_id,
    ar_session.payment_method
FROM openemr.ar_session;

SELECT audit_details.id,
    audit_details.table_name,
    audit_details.field_name,
    audit_details.field_value,
    audit_details.audit_master_id,
    audit_details.entry_identification
FROM openemr.audit_details;

SELECT audit_master.id,
    audit_master.pid,
    audit_master.user_id,
    audit_master.approval_status,
    audit_master.comments,
    audit_master.created_time,
    audit_master.modified_time,
    audit_master.ip_address,
    audit_master.type
FROM openemr.audit_master;

SELECT automatic_notification.notification_id,
    automatic_notification.sms_gateway_type,
    automatic_notification.provider_name,
    automatic_notification.message,
    automatic_notification.email_sender,
    automatic_notification.email_subject,
    automatic_notification.type
FROM openemr.automatic_notification;

SELECT background_services.name,
    background_services.title,
    background_services.active,
    background_services.running,
    background_services.next_run,
    background_services.execute_interval,
    background_services.function,
    background_services.require_once,
    background_services.sort_order
FROM openemr.background_services;

SELECT batchcom.id,
    batchcom.patient_id,
    batchcom.sent_by,
    batchcom.msg_type,
    batchcom.msg_subject,
    batchcom.msg_text,
    batchcom.msg_date_sent
FROM openemr.batchcom;

SELECT benefit_eligibility.response_id,
    benefit_eligibility.verification_id,
    benefit_eligibility.type,
    benefit_eligibility.benefit_type,
    benefit_eligibility.start_date,
    benefit_eligibility.end_date,
    benefit_eligibility.coverage_level,
    benefit_eligibility.coverage_type,
    benefit_eligibility.plan_type,
    benefit_eligibility.plan_description,
    benefit_eligibility.coverage_period,
    benefit_eligibility.amount,
    benefit_eligibility.percent,
    benefit_eligibility.network_ind,
    benefit_eligibility.message,
    benefit_eligibility.response_status,
    benefit_eligibility.response_create_date,
    benefit_eligibility.response_modify_date
FROM openemr.benefit_eligibility;

SELECT billing.id,
    billing.date,
    billing.code_type,
    billing.code,
    billing.pid,
    billing.provider_id,
    billing.user,
    billing.groupname,
    billing.authorized,
    billing.encounter,
    billing.code_text,
    billing.billed,
    billing.activity,
    billing.payer_id,
    billing.bill_process,
    billing.bill_date,
    billing.process_date,
    billing.process_file,
    billing.modifier,
    billing.units,
    billing.fee,
    billing.justify,
    billing.target,
    billing.x12_partner_id,
    billing.ndc_info,
    billing.notecodes,
    billing.external_id,
    billing.pricelevel,
    billing.revenue_code
FROM openemr.billing;

SELECT calendar_external.id,
    calendar_external.date,
    calendar_external.description,
    calendar_external.source
FROM openemr.calendar_external;

SELECT categories.id,
    categories.name,
    categories.value,
    categories.parent,
    categories.lft,
    categories.rght,
    categories.aco_spec
FROM openemr.categories;

SELECT categories_seq.id
FROM openemr.categories_seq;

SELECT categories_to_documents.category_id,
    categories_to_documents.document_id
FROM openemr.categories_to_documents;

SELECT ccda.id,
    ccda.uuid,
    ccda.pid,
    ccda.encounter,
    ccda.ccda_data,
    ccda.time,
    ccda.status,
    ccda.updated_date,
    ccda.user_id,
    ccda.couch_docid,
    ccda.couch_revid,
    ccda.hash,
    ccda.view,
    ccda.transfer,
    ccda.emr_transfer,
    ccda.encrypted
FROM openemr.ccda;

SELECT ccda_components.ccda_components_id,
    ccda_components.ccda_components_field,
    ccda_components.ccda_components_name,
    ccda_components.ccda_type
FROM openemr.ccda_components;

SELECT ccda_field_mapping.id,
    ccda_field_mapping.table_id,
    ccda_field_mapping.ccda_field
FROM openemr.ccda_field_mapping;

SELECT ccda_sections.ccda_sections_id,
    ccda_sections.ccda_components_id,
    ccda_sections.ccda_sections_field,
    ccda_sections.ccda_sections_name,
    ccda_sections.ccda_sections_req_mapping
FROM openemr.ccda_sections;

SELECT ccda_table_mapping.id,
    ccda_table_mapping.ccda_component,
    ccda_table_mapping.ccda_component_section,
    ccda_table_mapping.form_dir,
    ccda_table_mapping.form_type,
    ccda_table_mapping.form_table,
    ccda_table_mapping.user_id,
    ccda_table_mapping.deleted,
    ccda_table_mapping.timestamp
FROM openemr.ccda_table_mapping;

SELECT chart_tracker.ct_pid,
    chart_tracker.ct_when,
    chart_tracker.ct_userid,
    chart_tracker.ct_location
FROM openemr.chart_tracker;

SELECT claims.patient_id,
    claims.encounter_id,
    claims.version,
    claims.payer_id,
    claims.status,
    claims.payer_type,
    claims.bill_process,
    claims.bill_time,
    claims.process_time,
    claims.process_file,
    claims.target,
    claims.x12_partner_id,
    claims.submitted_claim
FROM openemr.claims;

SELECT clinical_plans.id,
    clinical_plans.pid,
    clinical_plans.normal_flag,
    clinical_plans.cqm_flag,
    clinical_plans.cqm_2011_flag,
    clinical_plans.cqm_2014_flag,
    clinical_plans.cqm_measure_group
FROM openemr.clinical_plans;

SELECT clinical_plans_rules.plan_id,
    clinical_plans_rules.rule_id
FROM openemr.clinical_plans_rules;

SELECT clinical_rules.id,
    clinical_rules.pid,
    clinical_rules.active_alert_flag,
    clinical_rules.passive_alert_flag,
    clinical_rules.cqm_flag,
    clinical_rules.cqm_2011_flag,
    clinical_rules.cqm_2014_flag,
    clinical_rules.cqm_nqf_code,
    clinical_rules.cqm_pqri_code,
    clinical_rules.amc_flag,
    clinical_rules.amc_2011_flag,
    clinical_rules.amc_2014_flag,
    clinical_rules.amc_code,
    clinical_rules.amc_code_2014,
    clinical_rules.amc_2014_stage1_flag,
    clinical_rules.amc_2014_stage2_flag,
    clinical_rules.patient_reminder_flag,
    clinical_rules.developer,
    clinical_rules.funding_source,
    clinical_rules.release_version,
    clinical_rules.web_reference,
    clinical_rules.access_control
FROM openemr.clinical_rules;

SELECT clinical_rules_log.id,
    clinical_rules_log.date,
    clinical_rules_log.pid,
    clinical_rules_log.uid,
    clinical_rules_log.category,
    clinical_rules_log.value,
    clinical_rules_log.new_value
FROM openemr.clinical_rules_log;

SELECT code_types.ct_key,
    code_types.ct_id,
    code_types.ct_seq,
    code_types.ct_mod,
    code_types.ct_just,
    code_types.ct_mask,
    code_types.ct_fee,
    code_types.ct_rel,
    code_types.ct_nofs,
    code_types.ct_diag,
    code_types.ct_active,
    code_types.ct_label,
    code_types.ct_external,
    code_types.ct_claim,
    code_types.ct_proc,
    code_types.ct_term,
    code_types.ct_problem,
    code_types.ct_drug
FROM openemr.code_types;

SELECT codes.id,
    codes.code_text,
    codes.code_text_short,
    codes.code,
    codes.code_type,
    codes.modifier,
    codes.units,
    codes.fee,
    codes.superbill,
    codes.related_code,
    codes.taxrates,
    codes.cyp_factor,
    codes.active,
    codes.reportable,
    codes.financial_reporting,
    codes.revenue_code
FROM openemr.codes;

SELECT codes_history.log_id,
    codes_history.date,
    codes_history.code,
    codes_history.modifier,
    codes_history.active,
    codes_history.diagnosis_reporting,
    codes_history.financial_reporting,
    codes_history.category,
    codes_history.code_type_name,
    codes_history.code_text,
    codes_history.code_text_short,
    codes_history.prices,
    codes_history.action_type,
    codes_history.update_by
FROM openemr.codes_history;

SELECT customlists.cl_list_slno,
    customlists.cl_list_id,
    customlists.cl_list_item_id,
    customlists.cl_list_type,
    customlists.cl_list_item_short,
    customlists.cl_list_item_long,
    customlists.cl_list_item_level,
    customlists.cl_order,
    customlists.cl_deleted,
    customlists.cl_creator
FROM openemr.customlists;

SELECT dated_reminders.dr_id,
    dated_reminders.dr_from_ID,
    dated_reminders.dr_message_text,
    dated_reminders.dr_message_sent_date,
    dated_reminders.dr_message_due_date,
    dated_reminders.pid,
    dated_reminders.message_priority,
    dated_reminders.message_processed,
    dated_reminders.processed_date,
    dated_reminders.dr_processed_by
FROM openemr.dated_reminders;

SELECT dated_reminders_link.dr_link_id,
    dated_reminders_link.dr_id,
    dated_reminders_link.to_id
FROM openemr.dated_reminders_link;

SELECT direct_message_log.id,
    direct_message_log.msg_type,
    direct_message_log.msg_id,
    direct_message_log.sender,
    direct_message_log.recipient,
    direct_message_log.create_ts,
    direct_message_log.status,
    direct_message_log.status_info,
    direct_message_log.status_ts,
    direct_message_log.patient_id,
    direct_message_log.user_id
FROM openemr.direct_message_log;

SELECT documents.id,
    documents.type,
    documents.size,
    documents.date,
    documents.url,
    documents.thumb_url,
    documents.mimetype,
    documents.pages,
    documents.owner,
    documents.revision,
    documents.foreign_id,
    documents.docdate,
    documents.hash,
    documents.list_id,
    documents.name,
    documents.drive_uuid,
    documents.couch_docid,
    documents.couch_revid,
    documents.storagemethod,
    documents.path_depth,
    documents.imported,
    documents.encounter_id,
    documents.encounter_check,
    documents.audit_master_approval_status,
    documents.audit_master_id,
    documents.documentationOf,
    documents.encrypted,
    documents.document_data,
    documents.deleted
FROM openemr.documents;

SELECT documents_legal_categories.dlc_id,
    documents_legal_categories.dlc_category_type,
    documents_legal_categories.dlc_category_name,
    documents_legal_categories.dlc_category_parent
FROM openemr.documents_legal_categories;

SELECT documents_legal_detail.dld_id,
    documents_legal_detail.dld_pid,
    documents_legal_detail.dld_facility,
    documents_legal_detail.dld_provider,
    documents_legal_detail.dld_encounter,
    documents_legal_detail.dld_master_docid,
    documents_legal_detail.dld_signed,
    documents_legal_detail.dld_signed_time,
    documents_legal_detail.dld_filepath,
    documents_legal_detail.dld_filename,
    documents_legal_detail.dld_signing_person,
    documents_legal_detail.dld_sign_level,
    documents_legal_detail.dld_content,
    documents_legal_detail.dld_file_for_pdf_generation,
    documents_legal_detail.dld_denial_reason,
    documents_legal_detail.dld_moved,
    documents_legal_detail.dld_patient_comments
FROM openemr.documents_legal_detail;

SELECT documents_legal_master.dlm_category,
    documents_legal_master.dlm_subcategory,
    documents_legal_master.dlm_document_id,
    documents_legal_master.dlm_document_name,
    documents_legal_master.dlm_filepath,
    documents_legal_master.dlm_facility,
    documents_legal_master.dlm_provider,
    documents_legal_master.dlm_sign_height,
    documents_legal_master.dlm_sign_width,
    documents_legal_master.dlm_filename,
    documents_legal_master.dlm_effective_date,
    documents_legal_master.dlm_version,
    documents_legal_master.content,
    documents_legal_master.dlm_savedsign,
    documents_legal_master.dlm_review,
    documents_legal_master.dlm_upload_type
FROM openemr.documents_legal_master;

SELECT drug_inventory.inventory_id,
    drug_inventory.drug_id,
    drug_inventory.lot_number,
    drug_inventory.expiration,
    drug_inventory.manufacturer,
    drug_inventory.on_hand,
    drug_inventory.warehouse_id,
    drug_inventory.vendor_id,
    drug_inventory.last_notify,
    drug_inventory.destroy_date,
    drug_inventory.destroy_method,
    drug_inventory.destroy_witness,
    drug_inventory.destroy_notes
FROM openemr.drug_inventory;

SELECT drug_sales.sale_id,
    drug_sales.drug_id,
    drug_sales.inventory_id,
    drug_sales.prescription_id,
    drug_sales.pid,
    drug_sales.encounter,
    drug_sales.user,
    drug_sales.sale_date,
    drug_sales.quantity,
    drug_sales.fee,
    drug_sales.billed,
    drug_sales.xfer_inventory_id,
    drug_sales.distributor_id,
    drug_sales.notes,
    drug_sales.bill_date,
    drug_sales.pricelevel,
    drug_sales.selector
FROM openemr.drug_sales;

SELECT drug_templates.drug_id,
    drug_templates.selector,
    drug_templates.dosage,
    drug_templates.period,
    drug_templates.quantity,
    drug_templates.refills,
    drug_templates.taxrates
FROM openemr.drug_templates;

SELECT drugs.drug_id,
    drugs.uuid,
    drugs.name,
    drugs.ndc_number,
    drugs.on_order,
    drugs.reorder_point,
    drugs.max_level,
    drugs.last_notify,
    drugs.reactions,
    drugs.form,
    drugs.size,
    drugs.unit,
    drugs.route,
    drugs.substitute,
    drugs.related_code,
    drugs.cyp_factor,
    drugs.active,
    drugs.allow_combining,
    drugs.allow_multiple,
    drugs.drug_code,
    drugs.consumable,
    drugs.dispensable
FROM openemr.drugs;

SELECT eligibility_verification.verification_id,
    eligibility_verification.response_id,
    eligibility_verification.insurance_id,
    eligibility_verification.eligibility_check_date,
    eligibility_verification.copay,
    eligibility_verification.deductible,
    eligibility_verification.deductiblemet,
    eligibility_verification.create_date
FROM openemr.eligibility_verification;

SELECT employer_data.id,
    employer_data.name,
    employer_data.street,
    employer_data.postal_code,
    employer_data.city,
    employer_data.state,
    employer_data.country,
    employer_data.date,
    employer_data.pid
FROM openemr.employer_data;

SELECT enc_category_map.rule_enc_id,
    enc_category_map.main_cat_id
FROM openemr.enc_category_map;

SELECT erx_narcotics.id,
    erx_narcotics.drug,
    erx_narcotics.dea_number,
    erx_narcotics.csa_sch,
    erx_narcotics.narc,
    erx_narcotics.other_names
FROM openemr.erx_narcotics;

SELECT erx_rx_log.id,
    erx_rx_log.prescription_id,
    erx_rx_log.date,
    erx_rx_log.time,
    erx_rx_log.code,
    erx_rx_log.status,
    erx_rx_log.message_id,
    erx_rx_log.read
FROM openemr.erx_rx_log;

SELECT erx_ttl_touch.patient_id,
    erx_ttl_touch.process,
    erx_ttl_touch.updated
FROM openemr.erx_ttl_touch;

SELECT erx_weno_drugs.drug_id,
    erx_weno_drugs.rxcui_drug_coded,
    erx_weno_drugs.generic_rxcui,
    erx_weno_drugs.drug_db_code_qualifier,
    erx_weno_drugs.full_name,
    erx_weno_drugs.rxn_dose_form,
    erx_weno_drugs.full_generic_name,
    erx_weno_drugs.brand_name,
    erx_weno_drugs.display_name,
    erx_weno_drugs.route,
    erx_weno_drugs.new_dose_form,
    erx_weno_drugs.strength,
    erx_weno_drugs.supress_for,
    erx_weno_drugs.display_name_synonym,
    erx_weno_drugs.is_retired,
    erx_weno_drugs.sxdg_rxcui,
    erx_weno_drugs.sxdg_tty,
    erx_weno_drugs.sxdg_name,
    erx_weno_drugs.psn_drugdescription,
    erx_weno_drugs.ncpdp_quantity_term,
    erx_weno_drugs.potency_unit_code,
    erx_weno_drugs.dea_schedule_no,
    erx_weno_drugs.dea_schedule,
    erx_weno_drugs.ingredients,
    erx_weno_drugs.drug_interaction,
    erx_weno_drugs.unit_source_code,
    erx_weno_drugs.code_list_qualifier
FROM openemr.erx_weno_drugs;

SELECT esign_signatures.id,
    esign_signatures.tid,
    esign_signatures.table,
    esign_signatures.uid,
    esign_signatures.datetime,
    esign_signatures.is_lock,
    esign_signatures.amendment,
    esign_signatures.hash,
    esign_signatures.signature_hash
FROM openemr.esign_signatures;

SELECT extended_log.id,
    extended_log.date,
    extended_log.event,
    extended_log.user,
    extended_log.recipient,
    extended_log.description,
    extended_log.patient_id
FROM openemr.extended_log;

SELECT external_encounters.ee_id,
    external_encounters.ee_date,
    external_encounters.ee_pid,
    external_encounters.ee_provider_id,
    external_encounters.ee_facility_id,
    external_encounters.ee_encounter_diagnosis,
    external_encounters.ee_external_id
FROM openemr.external_encounters;

SELECT external_procedures.ep_id,
    external_procedures.ep_date,
    external_procedures.ep_code_type,
    external_procedures.ep_code,
    external_procedures.ep_pid,
    external_procedures.ep_encounter,
    external_procedures.ep_code_text,
    external_procedures.ep_facility_id,
    external_procedures.ep_external_id
FROM openemr.external_procedures;

SELECT facility.id,
    facility.uuid,
    facility.name,
    facility.phone,
    facility.fax,
    facility.street,
    facility.city,
    facility.state,
    facility.postal_code,
    facility.country_code,
    facility.federal_ein,
    facility.website,
    facility.email,
    facility.service_location,
    facility.billing_location,
    facility.accepts_assignment,
    facility.pos_code,
    facility.x12_sender_id,
    facility.attn,
    facility.domain_identifier,
    facility.facility_npi,
    facility.facility_taxonomy,
    facility.tax_id_type,
    facility.color,
    facility.primary_business_entity,
    facility.facility_code,
    facility.extra_validation,
    facility.mail_street,
    facility.mail_street2,
    facility.mail_city,
    facility.mail_state,
    facility.mail_zip,
    facility.oid,
    facility.iban,
    facility.info
FROM openemr.facility;

SELECT facility_user_ids.id,
    facility_user_ids.uid,
    facility_user_ids.facility_id,
    facility_user_ids.uuid,
    facility_user_ids.field_id,
    facility_user_ids.field_value
FROM openemr.facility_user_ids;

SELECT fee_sheet_options.fs_category,
    fee_sheet_options.fs_option,
    fee_sheet_options.fs_codes
FROM openemr.fee_sheet_options;

SELECT form_care_plan.id,
    form_care_plan.date,
    form_care_plan.pid,
    form_care_plan.encounter,
    form_care_plan.user,
    form_care_plan.groupname,
    form_care_plan.authorized,
    form_care_plan.activity,
    form_care_plan.code,
    form_care_plan.codetext,
    form_care_plan.description,
    form_care_plan.external_id,
    form_care_plan.care_plan_type
FROM openemr.form_care_plan;

SELECT form_clinical_instructions.id,
    form_clinical_instructions.pid,
    form_clinical_instructions.encounter,
    form_clinical_instructions.user,
    form_clinical_instructions.instruction,
    form_clinical_instructions.date,
    form_clinical_instructions.activity
FROM openemr.form_clinical_instructions;

SELECT form_dictation.id,
    form_dictation.date,
    form_dictation.pid,
    form_dictation.user,
    form_dictation.groupname,
    form_dictation.authorized,
    form_dictation.activity,
    form_dictation.dictation,
    form_dictation.additional_notes
FROM openemr.form_dictation;

SELECT form_encounter.id,
    form_encounter.uuid,
    form_encounter.date,
    form_encounter.reason,
    form_encounter.facility,
    form_encounter.facility_id,
    form_encounter.pid,
    form_encounter.encounter,
    form_encounter.onset_date,
    form_encounter.sensitivity,
    form_encounter.billing_note,
    form_encounter.pc_catid,
    form_encounter.last_level_billed,
    form_encounter.last_level_closed,
    form_encounter.last_stmt_date,
    form_encounter.stmt_count,
    form_encounter.provider_id,
    form_encounter.supervisor_id,
    form_encounter.invoice_refno,
    form_encounter.referral_source,
    form_encounter.billing_facility,
    form_encounter.external_id,
    form_encounter.pos_code,
    form_encounter.parent_encounter_id,
    form_encounter.class_code
FROM openemr.form_encounter;

SELECT form_eye_acuity.id,
    form_eye_acuity.pid,
    form_eye_acuity.SCODVA,
    form_eye_acuity.SCOSVA,
    form_eye_acuity.PHODVA,
    form_eye_acuity.PHOSVA,
    form_eye_acuity.CTLODVA,
    form_eye_acuity.CTLOSVA,
    form_eye_acuity.MRODVA,
    form_eye_acuity.MROSVA,
    form_eye_acuity.SCNEARODVA,
    form_eye_acuity.SCNEAROSVA,
    form_eye_acuity.MRNEARODVA,
    form_eye_acuity.MRNEAROSVA,
    form_eye_acuity.GLAREODVA,
    form_eye_acuity.GLAREOSVA,
    form_eye_acuity.GLARECOMMENTS,
    form_eye_acuity.ARODVA,
    form_eye_acuity.AROSVA,
    form_eye_acuity.CRODVA,
    form_eye_acuity.CROSVA,
    form_eye_acuity.CTLODVA1,
    form_eye_acuity.CTLOSVA1,
    form_eye_acuity.PAMODVA,
    form_eye_acuity.PAMOSVA,
    form_eye_acuity.LIODVA,
    form_eye_acuity.LIOSVA,
    form_eye_acuity.WODVANEAR,
    form_eye_acuity.OSVANEARCC,
    form_eye_acuity.BINOCVA
FROM openemr.form_eye_acuity;

SELECT form_eye_antseg.id,
    form_eye_antseg.pid,
    form_eye_antseg.ODSCHIRMER1,
    form_eye_antseg.OSSCHIRMER1,
    form_eye_antseg.ODSCHIRMER2,
    form_eye_antseg.OSSCHIRMER2,
    form_eye_antseg.ODTBUT,
    form_eye_antseg.OSTBUT,
    form_eye_antseg.OSCONJ,
    form_eye_antseg.ODCONJ,
    form_eye_antseg.ODCORNEA,
    form_eye_antseg.OSCORNEA,
    form_eye_antseg.ODAC,
    form_eye_antseg.OSAC,
    form_eye_antseg.ODLENS,
    form_eye_antseg.OSLENS,
    form_eye_antseg.ODIRIS,
    form_eye_antseg.OSIRIS,
    form_eye_antseg.PUPIL_NORMAL,
    form_eye_antseg.ODPUPILSIZE1,
    form_eye_antseg.ODPUPILSIZE2,
    form_eye_antseg.ODPUPILREACTIVITY,
    form_eye_antseg.ODAPD,
    form_eye_antseg.OSPUPILSIZE1,
    form_eye_antseg.OSPUPILSIZE2,
    form_eye_antseg.OSPUPILREACTIVITY,
    form_eye_antseg.OSAPD,
    form_eye_antseg.DIMODPUPILSIZE1,
    form_eye_antseg.DIMODPUPILSIZE2,
    form_eye_antseg.DIMODPUPILREACTIVITY,
    form_eye_antseg.DIMOSPUPILSIZE1,
    form_eye_antseg.DIMOSPUPILSIZE2,
    form_eye_antseg.DIMOSPUPILREACTIVITY,
    form_eye_antseg.PUPIL_COMMENTS,
    form_eye_antseg.ODKTHICKNESS,
    form_eye_antseg.OSKTHICKNESS,
    form_eye_antseg.ODGONIO,
    form_eye_antseg.OSGONIO,
    form_eye_antseg.ANTSEG_COMMENTS
FROM openemr.form_eye_antseg;

SELECT form_eye_base.id,
    form_eye_base.date,
    form_eye_base.pid,
    form_eye_base.user,
    form_eye_base.groupname,
    form_eye_base.authorized,
    form_eye_base.activity
FROM openemr.form_eye_base;

SELECT form_eye_biometrics.id,
    form_eye_biometrics.pid,
    form_eye_biometrics.ODK1,
    form_eye_biometrics.ODK2,
    form_eye_biometrics.ODK2AXIS,
    form_eye_biometrics.OSK1,
    form_eye_biometrics.OSK2,
    form_eye_biometrics.OSK2AXIS,
    form_eye_biometrics.ODAXIALLENGTH,
    form_eye_biometrics.OSAXIALLENGTH,
    form_eye_biometrics.ODPDMeasured,
    form_eye_biometrics.OSPDMeasured,
    form_eye_biometrics.ODACD,
    form_eye_biometrics.OSACD,
    form_eye_biometrics.ODW2W,
    form_eye_biometrics.OSW2W,
    form_eye_biometrics.ODLT,
    form_eye_biometrics.OSLT
FROM openemr.form_eye_biometrics;

SELECT form_eye_external.id,
    form_eye_external.pid,
    form_eye_external.RUL,
    form_eye_external.LUL,
    form_eye_external.RLL,
    form_eye_external.LLL,
    form_eye_external.RBROW,
    form_eye_external.LBROW,
    form_eye_external.RMCT,
    form_eye_external.LMCT,
    form_eye_external.RADNEXA,
    form_eye_external.LADNEXA,
    form_eye_external.RMRD,
    form_eye_external.LMRD,
    form_eye_external.RLF,
    form_eye_external.LLF,
    form_eye_external.RVFISSURE,
    form_eye_external.LVFISSURE,
    form_eye_external.ODHERTEL,
    form_eye_external.OSHERTEL,
    form_eye_external.HERTELBASE,
    form_eye_external.RCAROTID,
    form_eye_external.LCAROTID,
    form_eye_external.RTEMPART,
    form_eye_external.LTEMPART,
    form_eye_external.RCNV,
    form_eye_external.LCNV,
    form_eye_external.RCNVII,
    form_eye_external.LCNVII,
    form_eye_external.EXT_COMMENTS
FROM openemr.form_eye_external;

SELECT form_eye_hpi.id,
    form_eye_hpi.pid,
    form_eye_hpi.CC1,
    form_eye_hpi.HPI1,
    form_eye_hpi.QUALITY1,
    form_eye_hpi.TIMING1,
    form_eye_hpi.DURATION1,
    form_eye_hpi.CONTEXT1,
    form_eye_hpi.SEVERITY1,
    form_eye_hpi.MODIFY1,
    form_eye_hpi.ASSOCIATED1,
    form_eye_hpi.LOCATION1,
    form_eye_hpi.CHRONIC1,
    form_eye_hpi.CHRONIC2,
    form_eye_hpi.CHRONIC3,
    form_eye_hpi.CC2,
    form_eye_hpi.HPI2,
    form_eye_hpi.QUALITY2,
    form_eye_hpi.TIMING2,
    form_eye_hpi.DURATION2,
    form_eye_hpi.CONTEXT2,
    form_eye_hpi.SEVERITY2,
    form_eye_hpi.MODIFY2,
    form_eye_hpi.ASSOCIATED2,
    form_eye_hpi.LOCATION2,
    form_eye_hpi.CC3,
    form_eye_hpi.HPI3,
    form_eye_hpi.QUALITY3,
    form_eye_hpi.TIMING3,
    form_eye_hpi.DURATION3,
    form_eye_hpi.CONTEXT3,
    form_eye_hpi.SEVERITY3,
    form_eye_hpi.MODIFY3,
    form_eye_hpi.ASSOCIATED3,
    form_eye_hpi.LOCATION3
FROM openemr.form_eye_hpi;

SELECT form_eye_locking.id,
    form_eye_locking.pid,
    form_eye_locking.IMP,
    form_eye_locking.PLAN,
    form_eye_locking.Resource,
    form_eye_locking.Technician,
    form_eye_locking.LOCKED,
    form_eye_locking.LOCKEDDATE,
    form_eye_locking.LOCKEDBY
FROM openemr.form_eye_locking;

SELECT form_eye_mag_dispense.id,
    form_eye_mag_dispense.date,
    form_eye_mag_dispense.encounter,
    form_eye_mag_dispense.pid,
    form_eye_mag_dispense.user,
    form_eye_mag_dispense.groupname,
    form_eye_mag_dispense.authorized,
    form_eye_mag_dispense.activity,
    form_eye_mag_dispense.REFDATE,
    form_eye_mag_dispense.REFTYPE,
    form_eye_mag_dispense.RXTYPE,
    form_eye_mag_dispense.ODSPH,
    form_eye_mag_dispense.ODCYL,
    form_eye_mag_dispense.ODAXIS,
    form_eye_mag_dispense.OSSPH,
    form_eye_mag_dispense.OSCYL,
    form_eye_mag_dispense.OSAXIS,
    form_eye_mag_dispense.ODMIDADD,
    form_eye_mag_dispense.OSMIDADD,
    form_eye_mag_dispense.ODADD,
    form_eye_mag_dispense.OSADD,
    form_eye_mag_dispense.ODHPD,
    form_eye_mag_dispense.ODHBASE,
    form_eye_mag_dispense.ODVPD,
    form_eye_mag_dispense.ODVBASE,
    form_eye_mag_dispense.ODSLABOFF,
    form_eye_mag_dispense.ODVERTEXDIST,
    form_eye_mag_dispense.OSHPD,
    form_eye_mag_dispense.OSHBASE,
    form_eye_mag_dispense.OSVPD,
    form_eye_mag_dispense.OSVBASE,
    form_eye_mag_dispense.OSSLABOFF,
    form_eye_mag_dispense.OSVERTEXDIST,
    form_eye_mag_dispense.ODMPDD,
    form_eye_mag_dispense.ODMPDN,
    form_eye_mag_dispense.OSMPDD,
    form_eye_mag_dispense.OSMPDN,
    form_eye_mag_dispense.BPDD,
    form_eye_mag_dispense.BPDN,
    form_eye_mag_dispense.LENS_MATERIAL,
    form_eye_mag_dispense.LENS_TREATMENTS,
    form_eye_mag_dispense.CTLMANUFACTUREROD,
    form_eye_mag_dispense.CTLMANUFACTUREROS,
    form_eye_mag_dispense.CTLSUPPLIEROD,
    form_eye_mag_dispense.CTLSUPPLIEROS,
    form_eye_mag_dispense.CTLBRANDOD,
    form_eye_mag_dispense.CTLBRANDOS,
    form_eye_mag_dispense.CTLODQUANTITY,
    form_eye_mag_dispense.CTLOSQUANTITY,
    form_eye_mag_dispense.ODDIAM,
    form_eye_mag_dispense.ODBC,
    form_eye_mag_dispense.OSDIAM,
    form_eye_mag_dispense.OSBC,
    form_eye_mag_dispense.RXCOMMENTS,
    form_eye_mag_dispense.COMMENTS
FROM openemr.form_eye_mag_dispense;

SELECT form_eye_mag_impplan.id,
    form_eye_mag_impplan.form_id,
    form_eye_mag_impplan.pid,
    form_eye_mag_impplan.title,
    form_eye_mag_impplan.code,
    form_eye_mag_impplan.codetype,
    form_eye_mag_impplan.codedesc,
    form_eye_mag_impplan.codetext,
    form_eye_mag_impplan.plan,
    form_eye_mag_impplan.PMSFH_link,
    form_eye_mag_impplan.IMPPLAN_order
FROM openemr.form_eye_mag_impplan;

SELECT form_eye_mag_orders.id,
    form_eye_mag_orders.form_id,
    form_eye_mag_orders.pid,
    form_eye_mag_orders.ORDER_DETAILS,
    form_eye_mag_orders.ORDER_STATUS,
    form_eye_mag_orders.ORDER_PRIORITY,
    form_eye_mag_orders.ORDER_DATE_PLACED,
    form_eye_mag_orders.ORDER_PLACED_BYWHOM,
    form_eye_mag_orders.ORDER_DATE_COMPLETED,
    form_eye_mag_orders.ORDER_COMPLETED_BYWHOM
FROM openemr.form_eye_mag_orders;

SELECT form_eye_mag_prefs.PEZONE,
    form_eye_mag_prefs.LOCATION,
    form_eye_mag_prefs.LOCATION_text,
    form_eye_mag_prefs.id,
    form_eye_mag_prefs.selection,
    form_eye_mag_prefs.ZONE_ORDER,
    form_eye_mag_prefs.GOVALUE,
    form_eye_mag_prefs.ordering,
    form_eye_mag_prefs.FILL_ACTION,
    form_eye_mag_prefs.GORIGHT,
    form_eye_mag_prefs.GOLEFT,
    form_eye_mag_prefs.UNSPEC
FROM openemr.form_eye_mag_prefs;

SELECT form_eye_mag_wearing.id,
    form_eye_mag_wearing.ENCOUNTER,
    form_eye_mag_wearing.FORM_ID,
    form_eye_mag_wearing.PID,
    form_eye_mag_wearing.RX_NUMBER,
    form_eye_mag_wearing.ODSPH,
    form_eye_mag_wearing.ODCYL,
    form_eye_mag_wearing.ODAXIS,
    form_eye_mag_wearing.OSSPH,
    form_eye_mag_wearing.OSCYL,
    form_eye_mag_wearing.OSAXIS,
    form_eye_mag_wearing.ODMIDADD,
    form_eye_mag_wearing.OSMIDADD,
    form_eye_mag_wearing.ODADD,
    form_eye_mag_wearing.OSADD,
    form_eye_mag_wearing.ODVA,
    form_eye_mag_wearing.OSVA,
    form_eye_mag_wearing.ODNEARVA,
    form_eye_mag_wearing.OSNEARVA,
    form_eye_mag_wearing.ODHPD,
    form_eye_mag_wearing.ODHBASE,
    form_eye_mag_wearing.ODVPD,
    form_eye_mag_wearing.ODVBASE,
    form_eye_mag_wearing.ODSLABOFF,
    form_eye_mag_wearing.ODVERTEXDIST,
    form_eye_mag_wearing.OSHPD,
    form_eye_mag_wearing.OSHBASE,
    form_eye_mag_wearing.OSVPD,
    form_eye_mag_wearing.OSVBASE,
    form_eye_mag_wearing.OSSLABOFF,
    form_eye_mag_wearing.OSVERTEXDIST,
    form_eye_mag_wearing.ODMPDD,
    form_eye_mag_wearing.ODMPDN,
    form_eye_mag_wearing.OSMPDD,
    form_eye_mag_wearing.OSMPDN,
    form_eye_mag_wearing.BPDD,
    form_eye_mag_wearing.BPDN,
    form_eye_mag_wearing.LENS_MATERIAL,
    form_eye_mag_wearing.LENS_TREATMENTS,
    form_eye_mag_wearing.RX_TYPE,
    form_eye_mag_wearing.COMMENTS
FROM openemr.form_eye_mag_wearing;

SELECT form_eye_neuro.id,
    form_eye_neuro.pid,
    form_eye_neuro.ACT,
    form_eye_neuro.ACT5CCDIST,
    form_eye_neuro.ACT1CCDIST,
    form_eye_neuro.ACT2CCDIST,
    form_eye_neuro.ACT3CCDIST,
    form_eye_neuro.ACT4CCDIST,
    form_eye_neuro.ACT6CCDIST,
    form_eye_neuro.ACT7CCDIST,
    form_eye_neuro.ACT8CCDIST,
    form_eye_neuro.ACT9CCDIST,
    form_eye_neuro.ACT10CCDIST,
    form_eye_neuro.ACT11CCDIST,
    form_eye_neuro.ACT1SCDIST,
    form_eye_neuro.ACT2SCDIST,
    form_eye_neuro.ACT3SCDIST,
    form_eye_neuro.ACT4SCDIST,
    form_eye_neuro.ACT5SCDIST,
    form_eye_neuro.ACT6SCDIST,
    form_eye_neuro.ACT7SCDIST,
    form_eye_neuro.ACT8SCDIST,
    form_eye_neuro.ACT9SCDIST,
    form_eye_neuro.ACT10SCDIST,
    form_eye_neuro.ACT11SCDIST,
    form_eye_neuro.ACT1SCNEAR,
    form_eye_neuro.ACT2SCNEAR,
    form_eye_neuro.ACT3SCNEAR,
    form_eye_neuro.ACT4SCNEAR,
    form_eye_neuro.ACT5CCNEAR,
    form_eye_neuro.ACT6CCNEAR,
    form_eye_neuro.ACT7CCNEAR,
    form_eye_neuro.ACT8CCNEAR,
    form_eye_neuro.ACT9CCNEAR,
    form_eye_neuro.ACT10CCNEAR,
    form_eye_neuro.ACT11CCNEAR,
    form_eye_neuro.ACT5SCNEAR,
    form_eye_neuro.ACT6SCNEAR,
    form_eye_neuro.ACT7SCNEAR,
    form_eye_neuro.ACT8SCNEAR,
    form_eye_neuro.ACT9SCNEAR,
    form_eye_neuro.ACT10SCNEAR,
    form_eye_neuro.ACT11SCNEAR,
    form_eye_neuro.ACT1CCNEAR,
    form_eye_neuro.ACT2CCNEAR,
    form_eye_neuro.ACT3CCNEAR,
    form_eye_neuro.ACT4CCNEAR,
    form_eye_neuro.MOTILITYNORMAL,
    form_eye_neuro.MOTILITY_RS,
    form_eye_neuro.MOTILITY_RI,
    form_eye_neuro.MOTILITY_RR,
    form_eye_neuro.MOTILITY_RL,
    form_eye_neuro.MOTILITY_LS,
    form_eye_neuro.MOTILITY_LI,
    form_eye_neuro.MOTILITY_LR,
    form_eye_neuro.MOTILITY_LL,
    form_eye_neuro.MOTILITY_RRSO,
    form_eye_neuro.MOTILITY_RLSO,
    form_eye_neuro.MOTILITY_RRIO,
    form_eye_neuro.MOTILITY_RLIO,
    form_eye_neuro.MOTILITY_LRSO,
    form_eye_neuro.MOTILITY_LLSO,
    form_eye_neuro.MOTILITY_LRIO,
    form_eye_neuro.MOTILITY_LLIO,
    form_eye_neuro.NEURO_COMMENTS,
    form_eye_neuro.STEREOPSIS,
    form_eye_neuro.ODNPA,
    form_eye_neuro.OSNPA,
    form_eye_neuro.VERTFUSAMPS,
    form_eye_neuro.DIVERGENCEAMPS,
    form_eye_neuro.NPC,
    form_eye_neuro.DACCDIST,
    form_eye_neuro.DACCNEAR,
    form_eye_neuro.CACCDIST,
    form_eye_neuro.CACCNEAR,
    form_eye_neuro.ODCOLOR,
    form_eye_neuro.OSCOLOR,
    form_eye_neuro.ODCOINS,
    form_eye_neuro.OSCOINS,
    form_eye_neuro.ODREDDESAT,
    form_eye_neuro.OSREDDESAT
FROM openemr.form_eye_neuro;

SELECT form_eye_postseg.id,
    form_eye_postseg.pid,
    form_eye_postseg.ODDISC,
    form_eye_postseg.OSDISC,
    form_eye_postseg.ODCUP,
    form_eye_postseg.OSCUP,
    form_eye_postseg.ODMACULA,
    form_eye_postseg.OSMACULA,
    form_eye_postseg.ODVESSELS,
    form_eye_postseg.OSVESSELS,
    form_eye_postseg.ODVITREOUS,
    form_eye_postseg.OSVITREOUS,
    form_eye_postseg.ODPERIPH,
    form_eye_postseg.OSPERIPH,
    form_eye_postseg.ODCMT,
    form_eye_postseg.OSCMT,
    form_eye_postseg.RETINA_COMMENTS,
    form_eye_postseg.DIL_RISKS,
    form_eye_postseg.DIL_MEDS,
    form_eye_postseg.WETTYPE,
    form_eye_postseg.ATROPINE,
    form_eye_postseg.CYCLOMYDRIL,
    form_eye_postseg.TROPICAMIDE,
    form_eye_postseg.CYCLOGYL,
    form_eye_postseg.NEO25
FROM openemr.form_eye_postseg;

SELECT form_eye_refraction.id,
    form_eye_refraction.pid,
    form_eye_refraction.MRODSPH,
    form_eye_refraction.MRODCYL,
    form_eye_refraction.MRODAXIS,
    form_eye_refraction.MRODPRISM,
    form_eye_refraction.MRODBASE,
    form_eye_refraction.MRODADD,
    form_eye_refraction.MROSSPH,
    form_eye_refraction.MROSCYL,
    form_eye_refraction.MROSAXIS,
    form_eye_refraction.MROSPRISM,
    form_eye_refraction.MROSBASE,
    form_eye_refraction.MROSADD,
    form_eye_refraction.MRODNEARSPHERE,
    form_eye_refraction.MRODNEARCYL,
    form_eye_refraction.MRODNEARAXIS,
    form_eye_refraction.MRODPRISMNEAR,
    form_eye_refraction.MRODBASENEAR,
    form_eye_refraction.MROSNEARSHPERE,
    form_eye_refraction.MROSNEARCYL,
    form_eye_refraction.MROSNEARAXIS,
    form_eye_refraction.MROSPRISMNEAR,
    form_eye_refraction.MROSBASENEAR,
    form_eye_refraction.CRODSPH,
    form_eye_refraction.CRODCYL,
    form_eye_refraction.CRODAXIS,
    form_eye_refraction.CROSSPH,
    form_eye_refraction.CROSCYL,
    form_eye_refraction.CROSAXIS,
    form_eye_refraction.CRCOMMENTS,
    form_eye_refraction.BALANCED,
    form_eye_refraction.ARODSPH,
    form_eye_refraction.ARODCYL,
    form_eye_refraction.ARODAXIS,
    form_eye_refraction.AROSSPH,
    form_eye_refraction.AROSCYL,
    form_eye_refraction.AROSAXIS,
    form_eye_refraction.ARODADD,
    form_eye_refraction.AROSADD,
    form_eye_refraction.ARNEARODVA,
    form_eye_refraction.ARNEAROSVA,
    form_eye_refraction.ARODPRISM,
    form_eye_refraction.AROSPRISM,
    form_eye_refraction.CTLODSPH,
    form_eye_refraction.CTLODCYL,
    form_eye_refraction.CTLODAXIS,
    form_eye_refraction.CTLODBC,
    form_eye_refraction.CTLODDIAM,
    form_eye_refraction.CTLOSSPH,
    form_eye_refraction.CTLOSCYL,
    form_eye_refraction.CTLOSAXIS,
    form_eye_refraction.CTLOSBC,
    form_eye_refraction.CTLOSDIAM,
    form_eye_refraction.CTL_COMMENTS,
    form_eye_refraction.CTLMANUFACTUREROD,
    form_eye_refraction.CTLSUPPLIEROD,
    form_eye_refraction.CTLBRANDOD,
    form_eye_refraction.CTLMANUFACTUREROS,
    form_eye_refraction.CTLSUPPLIEROS,
    form_eye_refraction.CTLBRANDOS,
    form_eye_refraction.CTLODADD,
    form_eye_refraction.CTLOSADD,
    form_eye_refraction.NVOCHECKED,
    form_eye_refraction.ADDCHECKED
FROM openemr.form_eye_refraction;

SELECT form_eye_ros.id,
    form_eye_ros.pid,
    form_eye_ros.ROSGENERAL,
    form_eye_ros.ROSHEENT,
    form_eye_ros.ROSCV,
    form_eye_ros.ROSPULM,
    form_eye_ros.ROSGI,
    form_eye_ros.ROSGU,
    form_eye_ros.ROSDERM,
    form_eye_ros.ROSNEURO,
    form_eye_ros.ROSPSYCH,
    form_eye_ros.ROSMUSCULO,
    form_eye_ros.ROSIMMUNO,
    form_eye_ros.ROSENDOCRINE,
    form_eye_ros.ROSCOMMENTS
FROM openemr.form_eye_ros;

SELECT form_eye_vitals.id,
    form_eye_vitals.pid,
    form_eye_vitals.alert,
    form_eye_vitals.oriented,
    form_eye_vitals.confused,
    form_eye_vitals.ODIOPAP,
    form_eye_vitals.OSIOPAP,
    form_eye_vitals.ODIOPTPN,
    form_eye_vitals.OSIOPTPN,
    form_eye_vitals.ODIOPFTN,
    form_eye_vitals.OSIOPFTN,
    form_eye_vitals.IOPTIME,
    form_eye_vitals.ODIOPPOST,
    form_eye_vitals.OSIOPPOST,
    form_eye_vitals.IOPPOSTTIME,
    form_eye_vitals.ODIOPTARGET,
    form_eye_vitals.OSIOPTARGET,
    form_eye_vitals.AMSLEROD,
    form_eye_vitals.AMSLEROS,
    form_eye_vitals.ODVF1,
    form_eye_vitals.ODVF2,
    form_eye_vitals.ODVF3,
    form_eye_vitals.ODVF4,
    form_eye_vitals.OSVF1,
    form_eye_vitals.OSVF2,
    form_eye_vitals.OSVF3,
    form_eye_vitals.OSVF4
FROM openemr.form_eye_vitals;

SELECT form_functional_cognitive_status.id,
    form_functional_cognitive_status.date,
    form_functional_cognitive_status.pid,
    form_functional_cognitive_status.encounter,
    form_functional_cognitive_status.user,
    form_functional_cognitive_status.groupname,
    form_functional_cognitive_status.authorized,
    form_functional_cognitive_status.activity,
    form_functional_cognitive_status.code,
    form_functional_cognitive_status.codetext,
    form_functional_cognitive_status.description,
    form_functional_cognitive_status.external_id
FROM openemr.form_functional_cognitive_status;

SELECT form_group_attendance.id,
    form_group_attendance.date,
    form_group_attendance.group_id,
    form_group_attendance.user,
    form_group_attendance.groupname,
    form_group_attendance.authorized,
    form_group_attendance.encounter_id,
    form_group_attendance.activity
FROM openemr.form_group_attendance;

SELECT form_groups_encounter.id,
    form_groups_encounter.date,
    form_groups_encounter.reason,
    form_groups_encounter.facility,
    form_groups_encounter.facility_id,
    form_groups_encounter.group_id,
    form_groups_encounter.encounter,
    form_groups_encounter.onset_date,
    form_groups_encounter.sensitivity,
    form_groups_encounter.billing_note,
    form_groups_encounter.pc_catid,
    form_groups_encounter.last_level_billed,
    form_groups_encounter.last_level_closed,
    form_groups_encounter.last_stmt_date,
    form_groups_encounter.stmt_count,
    form_groups_encounter.provider_id,
    form_groups_encounter.supervisor_id,
    form_groups_encounter.invoice_refno,
    form_groups_encounter.referral_source,
    form_groups_encounter.billing_facility,
    form_groups_encounter.external_id,
    form_groups_encounter.pos_code,
    form_groups_encounter.counselors,
    form_groups_encounter.appt_id
FROM openemr.form_groups_encounter;

SELECT form_misc_billing_options.id,
    form_misc_billing_options.date,
    form_misc_billing_options.pid,
    form_misc_billing_options.user,
    form_misc_billing_options.groupname,
    form_misc_billing_options.authorized,
    form_misc_billing_options.activity,
    form_misc_billing_options.employment_related,
    form_misc_billing_options.auto_accident,
    form_misc_billing_options.accident_state,
    form_misc_billing_options.other_accident,
    form_misc_billing_options.medicaid_referral_code,
    form_misc_billing_options.epsdt_flag,
    form_misc_billing_options.provider_qualifier_code,
    form_misc_billing_options.provider_id,
    form_misc_billing_options.outside_lab,
    form_misc_billing_options.lab_amount,
    form_misc_billing_options.is_unable_to_work,
    form_misc_billing_options.onset_date,
    form_misc_billing_options.date_initial_treatment,
    form_misc_billing_options.off_work_from,
    form_misc_billing_options.off_work_to,
    form_misc_billing_options.is_hospitalized,
    form_misc_billing_options.hospitalization_date_from,
    form_misc_billing_options.hospitalization_date_to,
    form_misc_billing_options.medicaid_resubmission_code,
    form_misc_billing_options.medicaid_original_reference,
    form_misc_billing_options.prior_auth_number,
    form_misc_billing_options.comments,
    form_misc_billing_options.replacement_claim,
    form_misc_billing_options.icn_resubmission_number,
    form_misc_billing_options.box_14_date_qual,
    form_misc_billing_options.box_15_date_qual
FROM openemr.form_misc_billing_options;

SELECT form_observation.id,
    form_observation.date,
    form_observation.pid,
    form_observation.encounter,
    form_observation.user,
    form_observation.groupname,
    form_observation.authorized,
    form_observation.activity,
    form_observation.code,
    form_observation.observation,
    form_observation.ob_value,
    form_observation.ob_unit,
    form_observation.description,
    form_observation.code_type,
    form_observation.table_code
FROM openemr.form_observation;

SELECT form_reviewofs.id,
    form_reviewofs.date,
    form_reviewofs.pid,
    form_reviewofs.user,
    form_reviewofs.groupname,
    form_reviewofs.authorized,
    form_reviewofs.activity,
    form_reviewofs.fever,
    form_reviewofs.chills,
    form_reviewofs.night_sweats,
    form_reviewofs.weight_loss,
    form_reviewofs.poor_appetite,
    form_reviewofs.insomnia,
    form_reviewofs.fatigued,
    form_reviewofs.depressed,
    form_reviewofs.hyperactive,
    form_reviewofs.exposure_to_foreign_countries,
    form_reviewofs.cataracts,
    form_reviewofs.cataract_surgery,
    form_reviewofs.glaucoma,
    form_reviewofs.double_vision,
    form_reviewofs.blurred_vision,
    form_reviewofs.poor_hearing,
    form_reviewofs.headaches,
    form_reviewofs.ringing_in_ears,
    form_reviewofs.bloody_nose,
    form_reviewofs.sinusitis,
    form_reviewofs.sinus_surgery,
    form_reviewofs.dry_mouth,
    form_reviewofs.strep_throat,
    form_reviewofs.tonsillectomy,
    form_reviewofs.swollen_lymph_nodes,
    form_reviewofs.throat_cancer,
    form_reviewofs.throat_cancer_surgery,
    form_reviewofs.heart_attack,
    form_reviewofs.irregular_heart_beat,
    form_reviewofs.chest_pains,
    form_reviewofs.shortness_of_breath,
    form_reviewofs.high_blood_pressure,
    form_reviewofs.heart_failure,
    form_reviewofs.poor_circulation,
    form_reviewofs.vascular_surgery,
    form_reviewofs.cardiac_catheterization,
    form_reviewofs.coronary_artery_bypass,
    form_reviewofs.heart_transplant,
    form_reviewofs.stress_test,
    form_reviewofs.emphysema,
    form_reviewofs.chronic_bronchitis,
    form_reviewofs.interstitial_lung_disease,
    form_reviewofs.shortness_of_breath_2,
    form_reviewofs.lung_cancer,
    form_reviewofs.lung_cancer_surgery,
    form_reviewofs.pheumothorax,
    form_reviewofs.stomach_pains,
    form_reviewofs.peptic_ulcer_disease,
    form_reviewofs.gastritis,
    form_reviewofs.endoscopy,
    form_reviewofs.polyps,
    form_reviewofs.colonoscopy,
    form_reviewofs.colon_cancer,
    form_reviewofs.colon_cancer_surgery,
    form_reviewofs.ulcerative_colitis,
    form_reviewofs.crohns_disease,
    form_reviewofs.appendectomy,
    form_reviewofs.divirticulitis,
    form_reviewofs.divirticulitis_surgery,
    form_reviewofs.gall_stones,
    form_reviewofs.cholecystectomy,
    form_reviewofs.hepatitis,
    form_reviewofs.cirrhosis_of_the_liver,
    form_reviewofs.splenectomy,
    form_reviewofs.kidney_failure,
    form_reviewofs.kidney_stones,
    form_reviewofs.kidney_cancer,
    form_reviewofs.kidney_infections,
    form_reviewofs.bladder_infections,
    form_reviewofs.bladder_cancer,
    form_reviewofs.prostate_problems,
    form_reviewofs.prostate_cancer,
    form_reviewofs.kidney_transplant,
    form_reviewofs.sexually_transmitted_disease,
    form_reviewofs.burning_with_urination,
    form_reviewofs.discharge_from_urethra,
    form_reviewofs.rashes,
    form_reviewofs.infections,
    form_reviewofs.ulcerations,
    form_reviewofs.pemphigus,
    form_reviewofs.herpes,
    form_reviewofs.osetoarthritis,
    form_reviewofs.rheumotoid_arthritis,
    form_reviewofs.lupus,
    form_reviewofs.ankylosing_sondlilitis,
    form_reviewofs.swollen_joints,
    form_reviewofs.stiff_joints,
    form_reviewofs.broken_bones,
    form_reviewofs.neck_problems,
    form_reviewofs.back_problems,
    form_reviewofs.back_surgery,
    form_reviewofs.scoliosis,
    form_reviewofs.herniated_disc,
    form_reviewofs.shoulder_problems,
    form_reviewofs.elbow_problems,
    form_reviewofs.wrist_problems,
    form_reviewofs.hand_problems,
    form_reviewofs.hip_problems,
    form_reviewofs.knee_problems,
    form_reviewofs.ankle_problems,
    form_reviewofs.foot_problems,
    form_reviewofs.insulin_dependent_diabetes,
    form_reviewofs.noninsulin_dependent_diabetes,
    form_reviewofs.hypothyroidism,
    form_reviewofs.hyperthyroidism,
    form_reviewofs.cushing_syndrom,
    form_reviewofs.addison_syndrom,
    form_reviewofs.additional_notes
FROM openemr.form_reviewofs;

SELECT form_ros.id,
    form_ros.pid,
    form_ros.activity,
    form_ros.date,
    form_ros.weight_change,
    form_ros.weakness,
    form_ros.fatigue,
    form_ros.anorexia,
    form_ros.fever,
    form_ros.chills,
    form_ros.night_sweats,
    form_ros.insomnia,
    form_ros.irritability,
    form_ros.heat_or_cold,
    form_ros.intolerance,
    form_ros.change_in_vision,
    form_ros.glaucoma_history,
    form_ros.eye_pain,
    form_ros.irritation,
    form_ros.redness,
    form_ros.excessive_tearing,
    form_ros.double_vision,
    form_ros.blind_spots,
    form_ros.photophobia,
    form_ros.hearing_loss,
    form_ros.discharge,
    form_ros.pain,
    form_ros.vertigo,
    form_ros.tinnitus,
    form_ros.frequent_colds,
    form_ros.sore_throat,
    form_ros.sinus_problems,
    form_ros.post_nasal_drip,
    form_ros.nosebleed,
    form_ros.snoring,
    form_ros.apnea,
    form_ros.breast_mass,
    form_ros.breast_discharge,
    form_ros.biopsy,
    form_ros.abnormal_mammogram,
    form_ros.cough,
    form_ros.sputum,
    form_ros.shortness_of_breath,
    form_ros.wheezing,
    form_ros.hemoptsyis,
    form_ros.asthma,
    form_ros.copd,
    form_ros.chest_pain,
    form_ros.palpitation,
    form_ros.syncope,
    form_ros.pnd,
    form_ros.doe,
    form_ros.orthopnea,
    form_ros.peripheal,
    form_ros.edema,
    form_ros.legpain_cramping,
    form_ros.history_murmur,
    form_ros.arrythmia,
    form_ros.heart_problem,
    form_ros.dysphagia,
    form_ros.heartburn,
    form_ros.bloating,
    form_ros.belching,
    form_ros.flatulence,
    form_ros.nausea,
    form_ros.vomiting,
    form_ros.hematemesis,
    form_ros.gastro_pain,
    form_ros.food_intolerance,
    form_ros.hepatitis,
    form_ros.jaundice,
    form_ros.hematochezia,
    form_ros.changed_bowel,
    form_ros.diarrhea,
    form_ros.constipation,
    form_ros.polyuria,
    form_ros.polydypsia,
    form_ros.dysuria,
    form_ros.hematuria,
    form_ros.frequency,
    form_ros.urgency,
    form_ros.incontinence,
    form_ros.renal_stones,
    form_ros.utis,
    form_ros.hesitancy,
    form_ros.dribbling,
    form_ros.stream,
    form_ros.nocturia,
    form_ros.erections,
    form_ros.ejaculations,
    form_ros.g,
    form_ros.p,
    form_ros.ap,
    form_ros.lc,
    form_ros.mearche,
    form_ros.menopause,
    form_ros.lmp,
    form_ros.f_frequency,
    form_ros.f_flow,
    form_ros.f_symptoms,
    form_ros.abnormal_hair_growth,
    form_ros.f_hirsutism,
    form_ros.joint_pain,
    form_ros.swelling,
    form_ros.m_redness,
    form_ros.m_warm,
    form_ros.m_stiffness,
    form_ros.muscle,
    form_ros.m_aches,
    form_ros.fms,
    form_ros.arthritis,
    form_ros.loc,
    form_ros.seizures,
    form_ros.stroke,
    form_ros.tia,
    form_ros.n_numbness,
    form_ros.n_weakness,
    form_ros.paralysis,
    form_ros.intellectual_decline,
    form_ros.memory_problems,
    form_ros.dementia,
    form_ros.n_headache,
    form_ros.s_cancer,
    form_ros.psoriasis,
    form_ros.s_acne,
    form_ros.s_other,
    form_ros.s_disease,
    form_ros.p_diagnosis,
    form_ros.p_medication,
    form_ros.depression,
    form_ros.anxiety,
    form_ros.social_difficulties,
    form_ros.thyroid_problems,
    form_ros.diabetes,
    form_ros.abnormal_blood,
    form_ros.anemia,
    form_ros.fh_blood_problems,
    form_ros.bleeding_problems,
    form_ros.allergies,
    form_ros.frequent_illness,
    form_ros.hiv,
    form_ros.hai_status
FROM openemr.form_ros;

SELECT form_soap.id,
    form_soap.date,
    form_soap.pid,
    form_soap.user,
    form_soap.groupname,
    form_soap.authorized,
    form_soap.activity,
    form_soap.subjective,
    form_soap.objective,
    form_soap.assessment,
    form_soap.plan
FROM openemr.form_soap;

SELECT form_taskman.ID,
    form_taskman.REQ_DATE,
    form_taskman.FROM_ID,
    form_taskman.TO_ID,
    form_taskman.PATIENT_ID,
    form_taskman.DOC_TYPE,
    form_taskman.DOC_ID,
    form_taskman.ENC_ID,
    form_taskman.METHOD,
    form_taskman.COMPLETED,
    form_taskman.COMPLETED_DATE,
    form_taskman.COMMENT,
    form_taskman.USERFIELD_1
FROM openemr.form_taskman;

SELECT form_vitals.id,
    form_vitals.date,
    form_vitals.pid,
    form_vitals.user,
    form_vitals.groupname,
    form_vitals.authorized,
    form_vitals.activity,
    form_vitals.bps,
    form_vitals.bpd,
    form_vitals.weight,
    form_vitals.height,
    form_vitals.temperature,
    form_vitals.temp_method,
    form_vitals.pulse,
    form_vitals.respiration,
    form_vitals.note,
    form_vitals.BMI,
    form_vitals.BMI_status,
    form_vitals.waist_circ,
    form_vitals.head_circ,
    form_vitals.oxygen_saturation,
    form_vitals.external_id
FROM openemr.form_vitals;

SELECT forms.id,
    forms.date,
    forms.encounter,
    forms.form_name,
    forms.form_id,
    forms.pid,
    forms.user,
    forms.groupname,
    forms.authorized,
    forms.deleted,
    forms.formdir,
    forms.therapy_group_id,
    forms.issue_id,
    forms.provider_id
FROM openemr.forms;

SELECT gacl_acl.id,
    gacl_acl.section_value,
    gacl_acl.allow,
    gacl_acl.enabled,
    gacl_acl.return_value,
    gacl_acl.note,
    gacl_acl.updated_date
FROM openemr.gacl_acl;

SELECT gacl_acl_sections.id,
    gacl_acl_sections.value,
    gacl_acl_sections.order_value,
    gacl_acl_sections.name,
    gacl_acl_sections.hidden
FROM openemr.gacl_acl_sections;

SELECT gacl_acl_seq.id
FROM openemr.gacl_acl_seq;

SELECT gacl_aco.id,
    gacl_aco.section_value,
    gacl_aco.value,
    gacl_aco.order_value,
    gacl_aco.name,
    gacl_aco.hidden
FROM openemr.gacl_aco;

SELECT gacl_aco_map.acl_id,
    gacl_aco_map.section_value,
    gacl_aco_map.value
FROM openemr.gacl_aco_map;

SELECT gacl_aco_sections.id,
    gacl_aco_sections.value,
    gacl_aco_sections.order_value,
    gacl_aco_sections.name,
    gacl_aco_sections.hidden
FROM openemr.gacl_aco_sections;

SELECT gacl_aco_sections_seq.id
FROM openemr.gacl_aco_sections_seq;

SELECT gacl_aco_seq.id
FROM openemr.gacl_aco_seq;

SELECT gacl_aro.id,
    gacl_aro.section_value,
    gacl_aro.value,
    gacl_aro.order_value,
    gacl_aro.name,
    gacl_aro.hidden
FROM openemr.gacl_aro;

SELECT gacl_aro_groups.id,
    gacl_aro_groups.parent_id,
    gacl_aro_groups.lft,
    gacl_aro_groups.rgt,
    gacl_aro_groups.name,
    gacl_aro_groups.value
FROM openemr.gacl_aro_groups;

SELECT gacl_aro_groups_id_seq.id
FROM openemr.gacl_aro_groups_id_seq;

SELECT gacl_aro_groups_map.acl_id,
    gacl_aro_groups_map.group_id
FROM openemr.gacl_aro_groups_map;

SELECT gacl_aro_map.acl_id,
    gacl_aro_map.section_value,
    gacl_aro_map.value
FROM openemr.gacl_aro_map;

SELECT gacl_aro_sections.id,
    gacl_aro_sections.value,
    gacl_aro_sections.order_value,
    gacl_aro_sections.name,
    gacl_aro_sections.hidden
FROM openemr.gacl_aro_sections;

SELECT gacl_aro_sections_seq.id
FROM openemr.gacl_aro_sections_seq;

SELECT gacl_aro_seq.id
FROM openemr.gacl_aro_seq;

SELECT gacl_axo.id,
    gacl_axo.section_value,
    gacl_axo.value,
    gacl_axo.order_value,
    gacl_axo.name,
    gacl_axo.hidden
FROM openemr.gacl_axo;

SELECT gacl_axo_groups.id,
    gacl_axo_groups.parent_id,
    gacl_axo_groups.lft,
    gacl_axo_groups.rgt,
    gacl_axo_groups.name,
    gacl_axo_groups.value
FROM openemr.gacl_axo_groups;

SELECT gacl_axo_groups_map.acl_id,
    gacl_axo_groups_map.group_id
FROM openemr.gacl_axo_groups_map;

SELECT gacl_axo_map.acl_id,
    gacl_axo_map.section_value,
    gacl_axo_map.value
FROM openemr.gacl_axo_map;

SELECT gacl_axo_sections.id,
    gacl_axo_sections.value,
    gacl_axo_sections.order_value,
    gacl_axo_sections.name,
    gacl_axo_sections.hidden
FROM openemr.gacl_axo_sections;

SELECT gacl_groups_aro_map.group_id,
    gacl_groups_aro_map.aro_id
FROM openemr.gacl_groups_aro_map;

SELECT gacl_groups_axo_map.group_id,
    gacl_groups_axo_map.axo_id
FROM openemr.gacl_groups_axo_map;

SELECT gacl_phpgacl.name,
    gacl_phpgacl.value
FROM openemr.gacl_phpgacl;

SELECT globals.gl_name,
    globals.gl_index,
    globals.gl_value
FROM openemr.globals;

SELECT gprelations.type1,
    gprelations.id1,
    gprelations.type2,
    gprelations.id2
FROM openemr.gprelations;

SELECT groups.id,
    groups.name,
    groups.user
FROM openemr.groups;

SELECT history_data.id,
    history_data.coffee,
    history_data.tobacco,
    history_data.alcohol,
    history_data.sleep_patterns,
    history_data.exercise_patterns,
    history_data.seatbelt_use,
    history_data.counseling,
    history_data.hazardous_activities,
    history_data.recreational_drugs,
    history_data.last_breast_exam,
    history_data.last_mammogram,
    history_data.last_gynocological_exam,
    history_data.last_rectal_exam,
    history_data.last_prostate_exam,
    history_data.last_physical_exam,
    history_data.last_sigmoidoscopy_colonoscopy,
    history_data.last_ecg,
    history_data.last_cardiac_echo,
    history_data.last_retinal,
    history_data.last_fluvax,
    history_data.last_pneuvax,
    history_data.last_ldl,
    history_data.last_hemoglobin,
    history_data.last_psa,
    history_data.last_exam_results,
    history_data.history_mother,
    history_data.dc_mother,
    history_data.history_father,
    history_data.dc_father,
    history_data.history_siblings,
    history_data.dc_siblings,
    history_data.history_offspring,
    history_data.dc_offspring,
    history_data.history_spouse,
    history_data.dc_spouse,
    history_data.relatives_cancer,
    history_data.relatives_tuberculosis,
    history_data.relatives_diabetes,
    history_data.relatives_high_blood_pressure,
    history_data.relatives_heart_problems,
    history_data.relatives_stroke,
    history_data.relatives_epilepsy,
    history_data.relatives_mental_illness,
    history_data.relatives_suicide,
    history_data.cataract_surgery,
    history_data.tonsillectomy,
    history_data.cholecystestomy,
    history_data.heart_surgery,
    history_data.hysterectomy,
    history_data.hernia_repair,
    history_data.hip_replacement,
    history_data.knee_replacement,
    history_data.appendectomy,
    history_data.date,
    history_data.pid,
    history_data.name_1,
    history_data.value_1,
    history_data.name_2,
    history_data.value_2,
    history_data.additional_history,
    history_data.exams,
    history_data.usertext11,
    history_data.usertext12,
    history_data.usertext13,
    history_data.usertext14,
    history_data.usertext15,
    history_data.usertext16,
    history_data.usertext17,
    history_data.usertext18,
    history_data.usertext19,
    history_data.usertext20,
    history_data.usertext21,
    history_data.usertext22,
    history_data.usertext23,
    history_data.usertext24,
    history_data.usertext25,
    history_data.usertext26,
    history_data.usertext27,
    history_data.usertext28,
    history_data.usertext29,
    history_data.usertext30,
    history_data.userdate11,
    history_data.userdate12,
    history_data.userdate13,
    history_data.userdate14,
    history_data.userdate15,
    history_data.userarea11,
    history_data.userarea12
FROM openemr.history_data;

SELECT hl7events_table.id,
    hl7events_table.EventType,
    hl7events_table.PrimaryID,
    hl7events_table.CreatedDateTime,
    hl7events_table.UpdatedDateTime,
    hl7events_table.PollingStatus
FROM openemr.hl7events_table;

SELECT icd10_dx_order_code.dx_id,
    icd10_dx_order_code.dx_code,
    icd10_dx_order_code.formatted_dx_code,
    icd10_dx_order_code.valid_for_coding,
    icd10_dx_order_code.short_desc,
    icd10_dx_order_code.long_desc,
    icd10_dx_order_code.active,
    icd10_dx_order_code.revision
FROM openemr.icd10_dx_order_code;

SELECT icd10_gem_dx_10_9.map_id,
    icd10_gem_dx_10_9.dx_icd10_source,
    icd10_gem_dx_10_9.dx_icd9_target,
    icd10_gem_dx_10_9.flags,
    icd10_gem_dx_10_9.active,
    icd10_gem_dx_10_9.revision
FROM openemr.icd10_gem_dx_10_9;

SELECT icd10_gem_dx_9_10.map_id,
    icd10_gem_dx_9_10.dx_icd9_source,
    icd10_gem_dx_9_10.dx_icd10_target,
    icd10_gem_dx_9_10.flags,
    icd10_gem_dx_9_10.active,
    icd10_gem_dx_9_10.revision
FROM openemr.icd10_gem_dx_9_10;

SELECT icd10_gem_pcs_10_9.map_id,
    icd10_gem_pcs_10_9.pcs_icd10_source,
    icd10_gem_pcs_10_9.pcs_icd9_target,
    icd10_gem_pcs_10_9.flags,
    icd10_gem_pcs_10_9.active,
    icd10_gem_pcs_10_9.revision
FROM openemr.icd10_gem_pcs_10_9;

SELECT icd10_gem_pcs_9_10.map_id,
    icd10_gem_pcs_9_10.pcs_icd9_source,
    icd10_gem_pcs_9_10.pcs_icd10_target,
    icd10_gem_pcs_9_10.flags,
    icd10_gem_pcs_9_10.active,
    icd10_gem_pcs_9_10.revision
FROM openemr.icd10_gem_pcs_9_10;

SELECT icd10_pcs_order_code.pcs_id,
    icd10_pcs_order_code.pcs_code,
    icd10_pcs_order_code.valid_for_coding,
    icd10_pcs_order_code.short_desc,
    icd10_pcs_order_code.long_desc,
    icd10_pcs_order_code.active,
    icd10_pcs_order_code.revision
FROM openemr.icd10_pcs_order_code;

SELECT icd10_reimbr_dx_9_10.map_id,
    icd10_reimbr_dx_9_10.code,
    icd10_reimbr_dx_9_10.code_cnt,
    icd10_reimbr_dx_9_10.ICD9_01,
    icd10_reimbr_dx_9_10.ICD9_02,
    icd10_reimbr_dx_9_10.ICD9_03,
    icd10_reimbr_dx_9_10.ICD9_04,
    icd10_reimbr_dx_9_10.ICD9_05,
    icd10_reimbr_dx_9_10.ICD9_06,
    icd10_reimbr_dx_9_10.active,
    icd10_reimbr_dx_9_10.revision
FROM openemr.icd10_reimbr_dx_9_10;

SELECT icd10_reimbr_pcs_9_10.map_id,
    icd10_reimbr_pcs_9_10.code,
    icd10_reimbr_pcs_9_10.code_cnt,
    icd10_reimbr_pcs_9_10.ICD9_01,
    icd10_reimbr_pcs_9_10.ICD9_02,
    icd10_reimbr_pcs_9_10.ICD9_03,
    icd10_reimbr_pcs_9_10.ICD9_04,
    icd10_reimbr_pcs_9_10.ICD9_05,
    icd10_reimbr_pcs_9_10.ICD9_06,
    icd10_reimbr_pcs_9_10.active,
    icd10_reimbr_pcs_9_10.revision
FROM openemr.icd10_reimbr_pcs_9_10;

SELECT icd9_dx_code.dx_id,
    icd9_dx_code.dx_code,
    icd9_dx_code.formatted_dx_code,
    icd9_dx_code.short_desc,
    icd9_dx_code.long_desc,
    icd9_dx_code.active,
    icd9_dx_code.revision
FROM openemr.icd9_dx_code;

SELECT icd9_dx_long_code.dx_id,
    icd9_dx_long_code.dx_code,
    icd9_dx_long_code.long_desc,
    icd9_dx_long_code.active,
    icd9_dx_long_code.revision
FROM openemr.icd9_dx_long_code;

SELECT icd9_sg_code.sg_id,
    icd9_sg_code.sg_code,
    icd9_sg_code.formatted_sg_code,
    icd9_sg_code.short_desc,
    icd9_sg_code.long_desc,
    icd9_sg_code.active,
    icd9_sg_code.revision
FROM openemr.icd9_sg_code;

SELECT icd9_sg_long_code.sq_id,
    icd9_sg_long_code.sg_code,
    icd9_sg_long_code.long_desc,
    icd9_sg_long_code.active,
    icd9_sg_long_code.revision
FROM openemr.icd9_sg_long_code;

SELECT immunization_observation.imo_id,
    immunization_observation.imo_im_id,
    immunization_observation.imo_pid,
    immunization_observation.imo_criteria,
    immunization_observation.imo_criteria_value,
    immunization_observation.imo_user,
    immunization_observation.imo_code,
    immunization_observation.imo_codetext,
    immunization_observation.imo_codetype,
    immunization_observation.imo_vis_date_published,
    immunization_observation.imo_vis_date_presented,
    immunization_observation.imo_date_observation
FROM openemr.immunization_observation;

SELECT immunizations.id,
    immunizations.uuid,
    immunizations.patient_id,
    immunizations.administered_date,
    immunizations.immunization_id,
    immunizations.cvx_code,
    immunizations.manufacturer,
    immunizations.lot_number,
    immunizations.administered_by_id,
    immunizations.administered_by,
    immunizations.education_date,
    immunizations.vis_date,
    immunizations.note,
    immunizations.create_date,
    immunizations.update_date,
    immunizations.created_by,
    immunizations.updated_by,
    immunizations.amount_administered,
    immunizations.amount_administered_unit,
    immunizations.expiration_date,
    immunizations.route,
    immunizations.administration_site,
    immunizations.added_erroneously,
    immunizations.external_id,
    immunizations.completion_status,
    immunizations.information_source,
    immunizations.refusal_reason,
    immunizations.ordering_provider
FROM openemr.immunizations;

SELECT insurance_companies.id,
    insurance_companies.name,
    insurance_companies.attn,
    insurance_companies.cms_id,
    insurance_companies.ins_type_code,
    insurance_companies.x12_receiver_id,
    insurance_companies.x12_default_partner_id,
    insurance_companies.alt_cms_id,
    insurance_companies.inactive,
    insurance_companies.eligibility_id,
    insurance_companies.x12_default_eligibility_id
FROM openemr.insurance_companies;

SELECT insurance_data.id,
    insurance_data.type,
    insurance_data.provider,
    insurance_data.plan_name,
    insurance_data.policy_number,
    insurance_data.group_number,
    insurance_data.subscriber_lname,
    insurance_data.subscriber_mname,
    insurance_data.subscriber_fname,
    insurance_data.subscriber_relationship,
    insurance_data.subscriber_ss,
    insurance_data.subscriber_DOB,
    insurance_data.subscriber_street,
    insurance_data.subscriber_postal_code,
    insurance_data.subscriber_city,
    insurance_data.subscriber_state,
    insurance_data.subscriber_country,
    insurance_data.subscriber_phone,
    insurance_data.subscriber_employer,
    insurance_data.subscriber_employer_street,
    insurance_data.subscriber_employer_postal_code,
    insurance_data.subscriber_employer_state,
    insurance_data.subscriber_employer_country,
    insurance_data.subscriber_employer_city,
    insurance_data.copay,
    insurance_data.date,
    insurance_data.pid,
    insurance_data.subscriber_sex,
    insurance_data.accept_assignment,
    insurance_data.policy_type
FROM openemr.insurance_data;

SELECT insurance_numbers.id,
    insurance_numbers.provider_id,
    insurance_numbers.insurance_company_id,
    insurance_numbers.provider_number,
    insurance_numbers.rendering_provider_number,
    insurance_numbers.group_number,
    insurance_numbers.provider_number_type,
    insurance_numbers.rendering_provider_number_type
FROM openemr.insurance_numbers;

SELECT issue_encounter.pid,
    issue_encounter.list_id,
    issue_encounter.encounter,
    issue_encounter.resolved
FROM openemr.issue_encounter;

SELECT issue_types.active,
    issue_types.category,
    issue_types.type,
    issue_types.plural,
    issue_types.singular,
    issue_types.abbreviation,
    issue_types.style,
    issue_types.force_show,
    issue_types.ordering,
    issue_types.aco_spec
FROM openemr.issue_types;

SELECT keys.id,
    keys.name,
    keys.value
FROM openemr.keys;

SELECT lang_constants.cons_id,
    lang_constants.constant_name
FROM openemr.lang_constants;

SELECT lang_custom.lang_description,
    lang_custom.lang_code,
    lang_custom.constant_name,
    lang_custom.definition
FROM openemr.lang_custom;

SELECT lang_definitions.def_id,
    lang_definitions.cons_id,
    lang_definitions.lang_id,
    lang_definitions.definition
FROM openemr.lang_definitions;

SELECT lang_languages.lang_id,
    lang_languages.lang_code,
    lang_languages.lang_description,
    lang_languages.lang_is_rtl
FROM openemr.lang_languages;

SELECT layout_group_properties.grp_form_id,
    layout_group_properties.grp_group_id,
    layout_group_properties.grp_title,
    layout_group_properties.grp_subtitle,
    layout_group_properties.grp_mapping,
    layout_group_properties.grp_seq,
    layout_group_properties.grp_activity,
    layout_group_properties.grp_repeats,
    layout_group_properties.grp_columns,
    layout_group_properties.grp_size,
    layout_group_properties.grp_issue_type,
    layout_group_properties.grp_aco_spec,
    layout_group_properties.grp_services,
    layout_group_properties.grp_products,
    layout_group_properties.grp_diags
FROM openemr.layout_group_properties;

SELECT layout_options.form_id,
    layout_options.field_id,
    layout_options.group_id,
    layout_options.title,
    layout_options.seq,
    layout_options.data_type,
    layout_options.uor,
    layout_options.fld_length,
    layout_options.max_length,
    layout_options.list_id,
    layout_options.titlecols,
    layout_options.datacols,
    layout_options.default_value,
    layout_options.edit_options,
    layout_options.description,
    layout_options.fld_rows,
    layout_options.list_backup_id,
    layout_options.source,
    layout_options.conditions,
    layout_options.validation
FROM openemr.layout_options;

SELECT lbf_data.form_id,
    lbf_data.field_id,
    lbf_data.field_value
FROM openemr.lbf_data;

SELECT lbt_data.form_id,
    lbt_data.field_id,
    lbt_data.field_value
FROM openemr.lbt_data;

SELECT list_options.list_id,
    list_options.option_id,
    list_options.title,
    list_options.seq,
    list_options.is_default,
    list_options.option_value,
    list_options.mapping,
    list_options.notes,
    list_options.codes,
    list_options.toggle_setting_1,
    list_options.toggle_setting_2,
    list_options.activity,
    list_options.subtype,
    list_options.edit_options,
    list_options.timestamp
FROM openemr.list_options;

SELECT lists.id,
    lists.uuid,
    lists.date,
    lists.type,
    lists.subtype,
    lists.title,
    lists.begdate,
    lists.enddate,
    lists.returndate,
    lists.occurrence,
    lists.classification,
    lists.referredby,
    lists.extrainfo,
    lists.diagnosis,
    lists.activity,
    lists.comments,
    lists.pid,
    lists.user,
    lists.groupname,
    lists.outcome,
    lists.destination,
    lists.reinjury_id,
    lists.injury_part,
    lists.injury_type,
    lists.injury_grade,
    lists.reaction,
    lists.verification,
    lists.external_allergyid,
    lists.erx_source,
    lists.erx_uploaded,
    lists.modifydate,
    lists.severity_al,
    lists.external_id,
    lists.list_option_id
FROM openemr.lists;

SELECT lists_touch.pid,
    lists_touch.type,
    lists_touch.date
FROM openemr.lists_touch;

SELECT log.id,
    log.date,
    log.event,
    log.category,
    log.user,
    log.groupname,
    log.comments,
    log.user_notes,
    log.patient_id,
    log.success,
    log.checksum,
    log.crt_user,
    log.log_from,
    log.menu_item_id,
    log.ccda_doc_id
FROM openemr.log;

SELECT log_comment_encrypt.id,
    log_comment_encrypt.log_id,
    log_comment_encrypt.encrypt,
    log_comment_encrypt.checksum,
    log_comment_encrypt.checksum_api,
    log_comment_encrypt.version
FROM openemr.log_comment_encrypt;

SELECT login_mfa_registrations.user_id,
    login_mfa_registrations.name,
    login_mfa_registrations.last_challenge,
    login_mfa_registrations.method,
    login_mfa_registrations.var1,
    login_mfa_registrations.var2
FROM openemr.login_mfa_registrations;

SELECT medex_icons.i_UID,
    medex_icons.msg_type,
    medex_icons.msg_status,
    medex_icons.i_description,
    medex_icons.i_html,
    medex_icons.i_blob
FROM openemr.medex_icons;

SELECT medex_outgoing.msg_uid,
    medex_outgoing.msg_pid,
    medex_outgoing.msg_pc_eid,
    medex_outgoing.campaign_uid,
    medex_outgoing.msg_date,
    medex_outgoing.msg_type,
    medex_outgoing.msg_reply,
    medex_outgoing.msg_extra_text,
    medex_outgoing.medex_uid
FROM openemr.medex_outgoing;

SELECT medex_prefs.MedEx_id,
    medex_prefs.ME_username,
    medex_prefs.ME_api_key,
    medex_prefs.ME_facilities,
    medex_prefs.ME_providers,
    medex_prefs.ME_hipaa_default_override,
    medex_prefs.PHONE_country_code,
    medex_prefs.MSGS_default_yes,
    medex_prefs.POSTCARDS_local,
    medex_prefs.POSTCARDS_remote,
    medex_prefs.LABELS_local,
    medex_prefs.LABELS_choice,
    medex_prefs.combine_time,
    medex_prefs.postcard_top,
    medex_prefs.status,
    medex_prefs.MedEx_lastupdated
FROM openemr.medex_prefs;

SELECT medex_recalls.r_ID,
    medex_recalls.r_PRACTID,
    medex_recalls.r_pid,
    medex_recalls.r_eventDate,
    medex_recalls.r_facility,
    medex_recalls.r_provider,
    medex_recalls.r_reason,
    medex_recalls.r_created
FROM openemr.medex_recalls;

SELECT misc_address_book.id,
    misc_address_book.fname,
    misc_address_book.mname,
    misc_address_book.lname,
    misc_address_book.street,
    misc_address_book.city,
    misc_address_book.state,
    misc_address_book.zip,
    misc_address_book.phone
FROM openemr.misc_address_book;

SELECT module_acl_group_settings.module_id,
    module_acl_group_settings.group_id,
    module_acl_group_settings.section_id,
    module_acl_group_settings.allowed
FROM openemr.module_acl_group_settings;

SELECT module_acl_sections.section_id,
    module_acl_sections.section_name,
    module_acl_sections.parent_section,
    module_acl_sections.section_identifier,
    module_acl_sections.module_id
FROM openemr.module_acl_sections;

SELECT module_acl_user_settings.module_id,
    module_acl_user_settings.user_id,
    module_acl_user_settings.section_id,
    module_acl_user_settings.allowed
FROM openemr.module_acl_user_settings;

SELECT module_configuration.module_config_id,
    module_configuration.module_id,
    module_configuration.field_name,
    module_configuration.field_value
FROM openemr.module_configuration;

SELECT modules.mod_id,
    modules.mod_name,
    modules.mod_directory,
    modules.mod_parent,
    modules.mod_type,
    modules.mod_active,
    modules.mod_ui_name,
    modules.mod_relative_link,
    modules.mod_ui_order,
    modules.mod_ui_active,
    modules.mod_description,
    modules.mod_nick_name,
    modules.mod_enc_menu,
    modules.permissions_item_table,
    modules.directory,
    modules.date,
    modules.sql_run,
    modules.type,
    modules.sql_version,
    modules.acl_version
FROM openemr.modules;

SELECT modules_hooks_settings.id,
    modules_hooks_settings.mod_id,
    modules_hooks_settings.enabled_hooks,
    modules_hooks_settings.attached_to
FROM openemr.modules_hooks_settings;

SELECT modules_settings.mod_id,
    modules_settings.fld_type,
    modules_settings.obj_name,
    modules_settings.menu_name,
    modules_settings.path
FROM openemr.modules_settings;

SELECT multiple_db.id,
    multiple_db.namespace,
    multiple_db.username,
    multiple_db.password,
    multiple_db.dbname,
    multiple_db.host,
    multiple_db.port,
    multiple_db.date
FROM openemr.multiple_db;

SELECT notes.id,
    notes.foreign_id,
    notes.note,
    notes.owner,
    notes.date,
    notes.revision
FROM openemr.notes;

SELECT notification_log.iLogId,
    notification_log.pid,
    notification_log.pc_eid,
    notification_log.sms_gateway_type,
    notification_log.smsgateway_info,
    notification_log.message,
    notification_log.email_sender,
    notification_log.email_subject,
    notification_log.type,
    notification_log.patient_info,
    notification_log.pc_eventDate,
    notification_log.pc_endDate,
    notification_log.pc_startTime,
    notification_log.pc_endTime,
    notification_log.dSentDateTime
FROM openemr.notification_log;

SELECT notification_settings.SettingsId,
    notification_settings.Send_SMS_Before_Hours,
    notification_settings.Send_Email_Before_Hours,
    notification_settings.SMS_gateway_username,
    notification_settings.SMS_gateway_password,
    notification_settings.SMS_gateway_apikey,
    notification_settings.type
FROM openemr.notification_settings;

SELECT oauth_clients.client_id,
    oauth_clients.client_role,
    oauth_clients.client_name,
    oauth_clients.client_secret,
    oauth_clients.registration_token,
    oauth_clients.registration_uri_path,
    oauth_clients.register_date,
    oauth_clients.revoke_date,
    oauth_clients.contacts,
    oauth_clients.redirect_uri,
    oauth_clients.grant_types,
    oauth_clients.scope,
    oauth_clients.user_id,
    oauth_clients.site_id,
    oauth_clients.is_confidential,
    oauth_clients.logout_redirect_uris,
    oauth_clients.jwks_uri,
    oauth_clients.jwks,
    oauth_clients.initiate_login_uri,
    oauth_clients.endorsements,
    oauth_clients.policy_uri,
    oauth_clients.tos_uri,
    oauth_clients.is_enabled
FROM openemr.oauth_clients;

SELECT oauth_trusted_user.id,
    oauth_trusted_user.user_id,
    oauth_trusted_user.client_id,
    oauth_trusted_user.scope,
    oauth_trusted_user.persist_login,
    oauth_trusted_user.time,
    oauth_trusted_user.code,
    oauth_trusted_user.session_cache,
    oauth_trusted_user.grant_type
FROM openemr.oauth_trusted_user;

SELECT onotes.id,
    onotes.date,
    onotes.body,
    onotes.user,
    onotes.groupname,
    onotes.activity
FROM openemr.onotes;

SELECT onsite_documents.id,
    onsite_documents.pid,
    onsite_documents.facility,
    onsite_documents.provider,
    onsite_documents.encounter,
    onsite_documents.create_date,
    onsite_documents.doc_type,
    onsite_documents.patient_signed_status,
    onsite_documents.patient_signed_time,
    onsite_documents.authorize_signed_time,
    onsite_documents.accept_signed_status,
    onsite_documents.authorizing_signator,
    onsite_documents.review_date,
    onsite_documents.denial_reason,
    onsite_documents.authorized_signature,
    onsite_documents.patient_signature,
    onsite_documents.full_document,
    onsite_documents.file_name,
    onsite_documents.file_path
FROM openemr.onsite_documents;

SELECT onsite_mail.id,
    onsite_mail.date,
    onsite_mail.owner,
    onsite_mail.user,
    onsite_mail.groupname,
    onsite_mail.activity,
    onsite_mail.authorized,
    onsite_mail.header,
    onsite_mail.title,
    onsite_mail.body,
    onsite_mail.recipient_id,
    onsite_mail.recipient_name,
    onsite_mail.sender_id,
    onsite_mail.sender_name,
    onsite_mail.assigned_to,
    onsite_mail.deleted,
    onsite_mail.delete_date,
    onsite_mail.mtype,
    onsite_mail.message_status,
    onsite_mail.mail_chain,
    onsite_mail.reply_mail_chain,
    onsite_mail.is_msg_encrypted
FROM openemr.onsite_mail;

SELECT onsite_messages.id,
    onsite_messages.username,
    onsite_messages.message,
    onsite_messages.ip,
    onsite_messages.date,
    onsite_messages.sender_id,
    onsite_messages.recip_id
FROM openemr.onsite_messages;

SELECT onsite_online.hash,
    onsite_online.ip,
    onsite_online.last_update,
    onsite_online.username,
    onsite_online.userid
FROM openemr.onsite_online;

SELECT onsite_portal_activity.id,
    onsite_portal_activity.date,
    onsite_portal_activity.patient_id,
    onsite_portal_activity.activity,
    onsite_portal_activity.require_audit,
    onsite_portal_activity.pending_action,
    onsite_portal_activity.action_taken,
    onsite_portal_activity.status,
    onsite_portal_activity.narrative,
    onsite_portal_activity.table_action,
    onsite_portal_activity.table_args,
    onsite_portal_activity.action_user,
    onsite_portal_activity.action_taken_time,
    onsite_portal_activity.checksum
FROM openemr.onsite_portal_activity;

SELECT onsite_signatures.id,
    onsite_signatures.status,
    onsite_signatures.type,
    onsite_signatures.created,
    onsite_signatures.lastmod,
    onsite_signatures.pid,
    onsite_signatures.encounter,
    onsite_signatures.user,
    onsite_signatures.activity,
    onsite_signatures.authorized,
    onsite_signatures.signator,
    onsite_signatures.sig_image,
    onsite_signatures.signature,
    onsite_signatures.sig_hash,
    onsite_signatures.ip
FROM openemr.onsite_signatures;

SELECT openemr_module_vars.pn_id,
    openemr_module_vars.pn_modname,
    openemr_module_vars.pn_name,
    openemr_module_vars.pn_value
FROM openemr.openemr_module_vars;

SELECT openemr_modules.pn_id,
    openemr_modules.pn_name,
    openemr_modules.pn_type,
    openemr_modules.pn_displayname,
    openemr_modules.pn_description,
    openemr_modules.pn_regid,
    openemr_modules.pn_directory,
    openemr_modules.pn_version,
    openemr_modules.pn_admin_capable,
    openemr_modules.pn_user_capable,
    openemr_modules.pn_state
FROM openemr.openemr_modules;

SELECT openemr_postcalendar_categories.pc_catid,
    openemr_postcalendar_categories.pc_constant_id,
    openemr_postcalendar_categories.pc_catname,
    openemr_postcalendar_categories.pc_catcolor,
    openemr_postcalendar_categories.pc_catdesc,
    openemr_postcalendar_categories.pc_recurrtype,
    openemr_postcalendar_categories.pc_enddate,
    openemr_postcalendar_categories.pc_recurrspec,
    openemr_postcalendar_categories.pc_recurrfreq,
    openemr_postcalendar_categories.pc_duration,
    openemr_postcalendar_categories.pc_end_date_flag,
    openemr_postcalendar_categories.pc_end_date_type,
    openemr_postcalendar_categories.pc_end_date_freq,
    openemr_postcalendar_categories.pc_end_all_day,
    openemr_postcalendar_categories.pc_dailylimit,
    openemr_postcalendar_categories.pc_cattype,
    openemr_postcalendar_categories.pc_active,
    openemr_postcalendar_categories.pc_seq,
    openemr_postcalendar_categories.aco_spec
FROM openemr.openemr_postcalendar_categories;

SELECT openemr_postcalendar_events.pc_eid,
    openemr_postcalendar_events.pc_catid,
    openemr_postcalendar_events.pc_multiple,
    openemr_postcalendar_events.pc_aid,
    openemr_postcalendar_events.pc_pid,
    openemr_postcalendar_events.pc_gid,
    openemr_postcalendar_events.pc_title,
    openemr_postcalendar_events.pc_time,
    openemr_postcalendar_events.pc_hometext,
    openemr_postcalendar_events.pc_comments,
    openemr_postcalendar_events.pc_counter,
    openemr_postcalendar_events.pc_topic,
    openemr_postcalendar_events.pc_informant,
    openemr_postcalendar_events.pc_eventDate,
    openemr_postcalendar_events.pc_endDate,
    openemr_postcalendar_events.pc_duration,
    openemr_postcalendar_events.pc_recurrtype,
    openemr_postcalendar_events.pc_recurrspec,
    openemr_postcalendar_events.pc_recurrfreq,
    openemr_postcalendar_events.pc_startTime,
    openemr_postcalendar_events.pc_endTime,
    openemr_postcalendar_events.pc_alldayevent,
    openemr_postcalendar_events.pc_location,
    openemr_postcalendar_events.pc_conttel,
    openemr_postcalendar_events.pc_contname,
    openemr_postcalendar_events.pc_contemail,
    openemr_postcalendar_events.pc_website,
    openemr_postcalendar_events.pc_fee,
    openemr_postcalendar_events.pc_eventstatus,
    openemr_postcalendar_events.pc_sharing,
    openemr_postcalendar_events.pc_language,
    openemr_postcalendar_events.pc_apptstatus,
    openemr_postcalendar_events.pc_prefcatid,
    openemr_postcalendar_events.pc_facility,
    openemr_postcalendar_events.pc_sendalertsms,
    openemr_postcalendar_events.pc_sendalertemail,
    openemr_postcalendar_events.pc_billing_location,
    openemr_postcalendar_events.pc_room
FROM openemr.openemr_postcalendar_events;

SELECT patient_access_onsite.id,
    patient_access_onsite.pid,
    patient_access_onsite.portal_username,
    patient_access_onsite.portal_pwd,
    patient_access_onsite.portal_pwd_status,
    patient_access_onsite.portal_login_username,
    patient_access_onsite.portal_onetime
FROM openemr.patient_access_onsite;

SELECT patient_birthday_alert.pid,
    patient_birthday_alert.user_id,
    patient_birthday_alert.turned_off_on
FROM openemr.patient_birthday_alert;

SELECT patient_data.id,
    patient_data.uuid,
    patient_data.title,
    patient_data.language,
    patient_data.financial,
    patient_data.fname,
    patient_data.lname,
    patient_data.mname,
    patient_data.DOB,
    patient_data.street,
    patient_data.postal_code,
    patient_data.city,
    patient_data.state,
    patient_data.country_code,
    patient_data.drivers_license,
    patient_data.ss,
    patient_data.occupation,
    patient_data.phone_home,
    patient_data.phone_biz,
    patient_data.phone_contact,
    patient_data.phone_cell,
    patient_data.pharmacy_id,
    patient_data.status,
    patient_data.contact_relationship,
    patient_data.date,
    patient_data.sex,
    patient_data.referrer,
    patient_data.referrerID,
    patient_data.providerID,
    patient_data.ref_providerID,
    patient_data.email,
    patient_data.email_direct,
    patient_data.ethnoracial,
    patient_data.race,
    patient_data.ethnicity,
    patient_data.religion,
    patient_data.interpretter,
    patient_data.migrantseasonal,
    patient_data.family_size,
    patient_data.monthly_income,
    patient_data.billing_note,
    patient_data.homeless,
    patient_data.financial_review,
    patient_data.pubpid,
    patient_data.pid,
    patient_data.genericname1,
    patient_data.genericval1,
    patient_data.genericname2,
    patient_data.genericval2,
    patient_data.hipaa_mail,
    patient_data.hipaa_voice,
    patient_data.hipaa_notice,
    patient_data.hipaa_message,
    patient_data.hipaa_allowsms,
    patient_data.hipaa_allowemail,
    patient_data.squad,
    patient_data.fitness,
    patient_data.referral_source,
    patient_data.usertext1,
    patient_data.usertext2,
    patient_data.usertext3,
    patient_data.usertext4,
    patient_data.usertext5,
    patient_data.usertext6,
    patient_data.usertext7,
    patient_data.usertext8,
    patient_data.userlist1,
    patient_data.userlist2,
    patient_data.userlist3,
    patient_data.userlist4,
    patient_data.userlist5,
    patient_data.userlist6,
    patient_data.userlist7,
    patient_data.pricelevel,
    patient_data.regdate,
    patient_data.contrastart,
    patient_data.completed_ad,
    patient_data.ad_reviewed,
    patient_data.vfc,
    patient_data.mothersname,
    patient_data.guardiansname,
    patient_data.allow_imm_reg_use,
    patient_data.allow_imm_info_share,
    patient_data.allow_health_info_ex,
    patient_data.allow_patient_portal,
    patient_data.deceased_date,
    patient_data.deceased_reason,
    patient_data.soap_import_status,
    patient_data.cmsportal_login,
    patient_data.care_team_provider,
    patient_data.care_team_facility,
    patient_data.county,
    patient_data.industry,
    patient_data.imm_reg_status,
    patient_data.imm_reg_stat_effdate,
    patient_data.publicity_code,
    patient_data.publ_code_eff_date,
    patient_data.protect_indicator,
    patient_data.prot_indi_effdate,
    patient_data.guardianrelationship,
    patient_data.guardiansex,
    patient_data.guardianaddress,
    patient_data.guardiancity,
    patient_data.guardianstate,
    patient_data.guardianpostalcode,
    patient_data.guardiancountry,
    patient_data.guardianphone,
    patient_data.guardianworkphone,
    patient_data.guardianemail
FROM openemr.patient_data;

SELECT patient_portal_menu.patient_portal_menu_id,
    patient_portal_menu.patient_portal_menu_group_id,
    patient_portal_menu.menu_name,
    patient_portal_menu.menu_order,
    patient_portal_menu.menu_status
FROM openemr.patient_portal_menu;

SELECT patient_reminders.id,
    patient_reminders.active,
    patient_reminders.date_inactivated,
    patient_reminders.reason_inactivated,
    patient_reminders.due_status,
    patient_reminders.pid,
    patient_reminders.category,
    patient_reminders.item,
    patient_reminders.date_created,
    patient_reminders.date_sent,
    patient_reminders.voice_status,
    patient_reminders.sms_status,
    patient_reminders.email_status,
    patient_reminders.mail_status
FROM openemr.patient_reminders;

SELECT patient_tracker.id,
    patient_tracker.date,
    patient_tracker.apptdate,
    patient_tracker.appttime,
    patient_tracker.eid,
    patient_tracker.pid,
    patient_tracker.original_user,
    patient_tracker.encounter,
    patient_tracker.lastseq,
    patient_tracker.random_drug_test,
    patient_tracker.drug_screen_completed
FROM openemr.patient_tracker;

SELECT patient_tracker_element.pt_tracker_id,
    patient_tracker_element.start_datetime,
    patient_tracker_element.room,
    patient_tracker_element.status,
    patient_tracker_element.seq,
    patient_tracker_element.user
FROM openemr.patient_tracker_element;

SELECT payment_gateway_details.id,
    payment_gateway_details.service_name,
    payment_gateway_details.login_id,
    payment_gateway_details.transaction_key,
    payment_gateway_details.md5
FROM openemr.payment_gateway_details;

SELECT payments.id,
    payments.pid,
    payments.dtime,
    payments.encounter,
    payments.user,
    payments.method,
    payments.source,
    payments.amount1,
    payments.amount2,
    payments.posted1,
    payments.posted2
FROM openemr.payments;

SELECT pharmacies.id,
    pharmacies.name,
    pharmacies.transmit_method,
    pharmacies.email,
    pharmacies.ncpdp,
    pharmacies.npi
FROM openemr.pharmacies;

SELECT phone_numbers.id,
    phone_numbers.country_code,
    phone_numbers.area_code,
    phone_numbers.prefix,
    phone_numbers.number,
    phone_numbers.type,
    phone_numbers.foreign_id
FROM openemr.phone_numbers;

SELECT pnotes.id,
    pnotes.date,
    pnotes.body,
    pnotes.pid,
    pnotes.user,
    pnotes.groupname,
    pnotes.activity,
    pnotes.authorized,
    pnotes.title,
    pnotes.assigned_to,
    pnotes.deleted,
    pnotes.message_status,
    pnotes.portal_relation,
    pnotes.is_msg_encrypted,
    pnotes.update_by,
    pnotes.update_date
FROM openemr.pnotes;

SELECT prescriptions.id,
    prescriptions.uuid,
    prescriptions.patient_id,
    prescriptions.filled_by_id,
    prescriptions.pharmacy_id,
    prescriptions.date_added,
    prescriptions.date_modified,
    prescriptions.provider_id,
    prescriptions.encounter,
    prescriptions.start_date,
    prescriptions.drug,
    prescriptions.drug_id,
    prescriptions.rxnorm_drugcode,
    prescriptions.form,
    prescriptions.dosage,
    prescriptions.quantity,
    prescriptions.size,
    prescriptions.unit,
    prescriptions.route,
    prescriptions.interval,
    prescriptions.substitute,
    prescriptions.refills,
    prescriptions.per_refill,
    prescriptions.filled_date,
    prescriptions.medication,
    prescriptions.note,
    prescriptions.active,
    prescriptions.datetime,
    prescriptions.user,
    prescriptions.site,
    prescriptions.prescriptionguid,
    prescriptions.erx_source,
    prescriptions.erx_uploaded,
    prescriptions.drug_info_erx,
    prescriptions.external_id,
    prescriptions.end_date,
    prescriptions.indication,
    prescriptions.prn,
    prescriptions.ntx,
    prescriptions.rtx,
    prescriptions.txDate
FROM openemr.prescriptions;

SELECT prices.pr_id,
    prices.pr_selector,
    prices.pr_level,
    prices.pr_price
FROM openemr.prices;

SELECT pro_assessments.id,
    pro_assessments.form_oid,
    pro_assessments.form_name,
    pro_assessments.user_id,
    pro_assessments.deadline,
    pro_assessments.patient_id,
    pro_assessments.assessment_oid,
    pro_assessments.status,
    pro_assessments.score,
    pro_assessments.error,
    pro_assessments.created_at,
    pro_assessments.updated_at
FROM openemr.pro_assessments;

SELECT procedure_answers.procedure_order_id,
    procedure_answers.procedure_order_seq,
    procedure_answers.question_code,
    procedure_answers.answer_seq,
    procedure_answers.answer
FROM openemr.procedure_answers;

SELECT procedure_order.procedure_order_id,
    procedure_order.uuid,
    procedure_order.provider_id,
    procedure_order.patient_id,
    procedure_order.encounter_id,
    procedure_order.date_collected,
    procedure_order.date_ordered,
    procedure_order.order_priority,
    procedure_order.order_status,
    procedure_order.patient_instructions,
    procedure_order.activity,
    procedure_order.control_id,
    procedure_order.lab_id,
    procedure_order.specimen_type,
    procedure_order.specimen_location,
    procedure_order.specimen_volume,
    procedure_order.date_transmitted,
    procedure_order.clinical_hx,
    procedure_order.external_id,
    procedure_order.history_order,
    procedure_order.order_diagnosis
FROM openemr.procedure_order;

SELECT procedure_order_code.procedure_order_id,
    procedure_order_code.procedure_order_seq,
    procedure_order_code.procedure_code,
    procedure_order_code.procedure_name,
    procedure_order_code.procedure_source,
    procedure_order_code.diagnoses,
    procedure_order_code.do_not_send,
    procedure_order_code.procedure_order_title
FROM openemr.procedure_order_code;

SELECT procedure_providers.ppid,
    procedure_providers.name,
    procedure_providers.npi,
    procedure_providers.send_app_id,
    procedure_providers.send_fac_id,
    procedure_providers.recv_app_id,
    procedure_providers.recv_fac_id,
    procedure_providers.DorP,
    procedure_providers.direction,
    procedure_providers.protocol,
    procedure_providers.remote_host,
    procedure_providers.login,
    procedure_providers.password,
    procedure_providers.orders_path,
    procedure_providers.results_path,
    procedure_providers.notes,
    procedure_providers.lab_director,
    procedure_providers.active
FROM openemr.procedure_providers;

SELECT procedure_questions.lab_id,
    procedure_questions.procedure_code,
    procedure_questions.question_code,
    procedure_questions.seq,
    procedure_questions.question_text,
    procedure_questions.required,
    procedure_questions.maxsize,
    procedure_questions.fldtype,
    procedure_questions.options,
    procedure_questions.tips,
    procedure_questions.activity
FROM openemr.procedure_questions;

SELECT procedure_report.procedure_report_id,
    procedure_report.procedure_order_id,
    procedure_report.procedure_order_seq,
    procedure_report.date_collected,
    procedure_report.date_collected_tz,
    procedure_report.date_report,
    procedure_report.date_report_tz,
    procedure_report.source,
    procedure_report.specimen_num,
    procedure_report.report_status,
    procedure_report.review_status,
    procedure_report.report_notes
FROM openemr.procedure_report;

SELECT procedure_result.procedure_result_id,
    procedure_result.uuid,
    procedure_result.procedure_report_id,
    procedure_result.result_data_type,
    procedure_result.result_code,
    procedure_result.result_text,
    procedure_result.date,
    procedure_result.facility,
    procedure_result.units,
    procedure_result.result,
    procedure_result.range,
    procedure_result.abnormal,
    procedure_result.comments,
    procedure_result.document_id,
    procedure_result.result_status
FROM openemr.procedure_result;

SELECT procedure_type.procedure_type_id,
    procedure_type.parent,
    procedure_type.name,
    procedure_type.lab_id,
    procedure_type.procedure_code,
    procedure_type.procedure_type,
    procedure_type.body_site,
    procedure_type.specimen,
    procedure_type.route_admin,
    procedure_type.laterality,
    procedure_type.description,
    procedure_type.standard_code,
    procedure_type.related_code,
    procedure_type.units,
    procedure_type.range,
    procedure_type.seq,
    procedure_type.activity,
    procedure_type.notes
FROM openemr.procedure_type;

SELECT product_registration.id,
    product_registration.email,
    product_registration.opt_out
FROM openemr.product_registration;

SELECT product_warehouse.pw_drug_id,
    product_warehouse.pw_warehouse,
    product_warehouse.pw_min_level,
    product_warehouse.pw_max_level
FROM openemr.product_warehouse;

SELECT registry.name,
    registry.state,
    registry.directory,
    registry.id,
    registry.sql_run,
    registry.unpackaged,
    registry.date,
    registry.priority,
    registry.category,
    registry.nickname,
    registry.patient_encounter,
    registry.therapy_group_encounter,
    registry.aco_spec
FROM openemr.registry;

SELECT report_itemized.report_id,
    report_itemized.itemized_test_id,
    report_itemized.numerator_label,
    report_itemized.pass,
    report_itemized.pid
FROM openemr.report_itemized;

SELECT report_results.report_id,
    report_results.field_id,
    report_results.field_value
FROM openemr.report_results;

SELECT rule_action.id,
    rule_action.group_id,
    rule_action.category,
    rule_action.item
FROM openemr.rule_action;

SELECT rule_action_item.category,
    rule_action_item.item,
    rule_action_item.clin_rem_link,
    rule_action_item.reminder_message,
    rule_action_item.custom_flag
FROM openemr.rule_action_item;

SELECT rule_filter.id,
    rule_filter.include_flag,
    rule_filter.required_flag,
    rule_filter.method,
    rule_filter.method_detail,
    rule_filter.value
FROM openemr.rule_filter;

SELECT rule_patient_data.id,
    rule_patient_data.date,
    rule_patient_data.pid,
    rule_patient_data.category,
    rule_patient_data.item,
    rule_patient_data.complete,
    rule_patient_data.result
FROM openemr.rule_patient_data;

SELECT rule_reminder.id,
    rule_reminder.method,
    rule_reminder.method_detail,
    rule_reminder.value
FROM openemr.rule_reminder;

SELECT rule_target.id,
    rule_target.group_id,
    rule_target.include_flag,
    rule_target.required_flag,
    rule_target.method,
    rule_target.value,
    rule_target.interval
FROM openemr.rule_target;

SELECT sequences.id
FROM openemr.sequences;

SELECT session_tracker.uuid,
    session_tracker.created,
    session_tracker.last_updated
FROM openemr.session_tracker;

SELECT shared_attributes.pid,
    shared_attributes.encounter,
    shared_attributes.field_id,
    shared_attributes.last_update,
    shared_attributes.user_id,
    shared_attributes.field_value
FROM openemr.shared_attributes;

SELECT standardized_tables_track.id,
    standardized_tables_track.imported_date,
    standardized_tables_track.name,
    standardized_tables_track.revision_version,
    standardized_tables_track.revision_date,
    standardized_tables_track.file_checksum
FROM openemr.standardized_tables_track;

SELECT supported_external_dataloads.load_id,
    supported_external_dataloads.load_type,
    supported_external_dataloads.load_source,
    supported_external_dataloads.load_release_date,
    supported_external_dataloads.load_filename,
    supported_external_dataloads.load_checksum
FROM openemr.supported_external_dataloads;

SELECT syndromic_surveillance.id,
    syndromic_surveillance.lists_id,
    syndromic_surveillance.submission_date,
    syndromic_surveillance.filename
FROM openemr.syndromic_surveillance;

SELECT template_users.tu_id,
    template_users.tu_user_id,
    template_users.tu_facility_id,
    template_users.tu_template_id,
    template_users.tu_template_order
FROM openemr.template_users;

SELECT therapy_groups.group_id,
    therapy_groups.group_name,
    therapy_groups.group_start_date,
    therapy_groups.group_end_date,
    therapy_groups.group_type,
    therapy_groups.group_participation,
    therapy_groups.group_status,
    therapy_groups.group_notes,
    therapy_groups.group_guest_counselors
FROM openemr.therapy_groups;

SELECT therapy_groups_counselors.group_id,
    therapy_groups_counselors.user_id
FROM openemr.therapy_groups_counselors;

SELECT therapy_groups_participant_attendance.form_id,
    therapy_groups_participant_attendance.pid,
    therapy_groups_participant_attendance.meeting_patient_comment,
    therapy_groups_participant_attendance.meeting_patient_status
FROM openemr.therapy_groups_participant_attendance;

SELECT therapy_groups_participants.group_id,
    therapy_groups_participants.pid,
    therapy_groups_participants.group_patient_status,
    therapy_groups_participants.group_patient_start,
    therapy_groups_participants.group_patient_end,
    therapy_groups_participants.group_patient_comment
FROM openemr.therapy_groups_participants;

SELECT transactions.id,
    transactions.date,
    transactions.title,
    transactions.pid,
    transactions.user,
    transactions.groupname,
    transactions.authorized
FROM openemr.transactions;

SELECT user_settings.setting_user,
    user_settings.setting_label,
    user_settings.setting_value
FROM openemr.user_settings;

SELECT users.id,
    users.uuid,
    users.username,
    users.password,
    users.authorized,
    users.info,
    users.source,
    users.fname,
    users.mname,
    users.lname,
    users.suffix,
    users.federaltaxid,
    users.federaldrugid,
    users.upin,
    users.facility,
    users.facility_id,
    users.see_auth,
    users.active,
    users.npi,
    users.title,
    users.specialty,
    users.billname,
    users.email,
    users.email_direct,
    users.url,
    users.assistant,
    users.organization,
    users.valedictory,
    users.street,
    users.streetb,
    users.city,
    users.state,
    users.zip,
    users.street2,
    users.streetb2,
    users.city2,
    users.state2,
    users.zip2,
    users.phone,
    users.fax,
    users.phonew1,
    users.phonew2,
    users.phonecell,
    users.notes,
    users.cal_ui,
    users.taxonomy,
    users.calendar,
    users.abook_type,
    users.default_warehouse,
    users.irnpool,
    users.state_license_number,
    users.weno_prov_id,
    users.newcrop_user_role,
    users.cpoe,
    users.physician_type,
    users.main_menu_role,
    users.patient_menu_role,
    users.portal_user,
    users.supervisor_id
FROM openemr.users;

SELECT users_facility.tablename,
    users_facility.table_id,
    users_facility.facility_id
FROM openemr.users_facility;

SELECT users_secure.id,
    users_secure.username,
    users_secure.password,
    users_secure.last_update_password,
    users_secure.last_update,
    users_secure.password_history1,
    users_secure.password_history2,
    users_secure.password_history3,
    users_secure.password_history4,
    users_secure.last_challenge_response,
    users_secure.login_work_area,
    users_secure.login_fail_counter
FROM openemr.users_secure;

SELECT uuid_mapping.id,
    uuid_mapping.uuid,
    uuid_mapping.resource,
    uuid_mapping.table,
    uuid_mapping.target_uuid,
    uuid_mapping.created
FROM openemr.uuid_mapping;

SELECT uuid_registry.uuid,
    uuid_registry.table_name,
    uuid_registry.table_id,
    uuid_registry.table_vertical,
    uuid_registry.couchdb,
    uuid_registry.document_drive,
    uuid_registry.mapped,
    uuid_registry.created
FROM openemr.uuid_registry;

SELECT valueset.nqf_code,
    valueset.code,
    valueset.code_system,
    valueset.code_type,
    valueset.valueset,
    valueset.description,
    valueset.valueset_name
FROM openemr.valueset;

SELECT version.v_major,
    version.v_minor,
    version.v_patch,
    version.v_realpatch,
    version.v_tag,
    version.v_database,
    version.v_acl
FROM openemr.version;

SELECT voids.void_id,
    voids.patient_id,
    voids.encounter_id,
    voids.what_voided,
    voids.date_original,
    voids.date_voided,
    voids.user_id,
    voids.amount1,
    voids.amount2,
    voids.other_info
FROM openemr.voids;

SELECT x12_partners.id,
    x12_partners.name,
    x12_partners.id_number,
    x12_partners.x12_sender_id,
    x12_partners.x12_receiver_id,
    x12_partners.processing_format,
    x12_partners.x12_isa01,
    x12_partners.x12_isa02,
    x12_partners.x12_isa03,
    x12_partners.x12_isa04,
    x12_partners.x12_isa05,
    x12_partners.x12_isa07,
    x12_partners.x12_isa14,
    x12_partners.x12_isa15,
    x12_partners.x12_gs02,
    x12_partners.x12_per06,
    x12_partners.x12_dtp03
FROM openemr.x12_partners;
