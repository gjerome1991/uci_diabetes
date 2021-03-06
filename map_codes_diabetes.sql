SELECT * ,
CASE
WHEN admission_type_id=1 THEN "Emergency"
WHEN admission_type_id=2 THEN "Urgent"
WHEN admission_type_id=3 THEN "Elective"
WHEN admission_type_id=4 THEN "Newborn"
WHEN admission_type_id=5 THEN "Not Available"
WHEN admission_type_id=6 THEN "NULL"
WHEN admission_type_id=7 THEN "Trauma Center"
ELSE null
END as admission_type_id_description,
CASE WHEN discharge_disposition_id=1 THEN "Discharged to home"
WHEN discharge_disposition_id=2 THEN "Discharged/transferred to another short term hospital"
WHEN discharge_disposition_id=3 THEN "Discharged/transferred to SNF"
WHEN discharge_disposition_id=4 THEN "Discharged/transferred to ICF"
WHEN discharge_disposition_id=5 THEN "Discharged/transferred to another type of inpatient care institution"
WHEN discharge_disposition_id=6 THEN "Discharged/transferred to home with home health service"
WHEN discharge_disposition_id=7 THEN "Left AMA"
WHEN discharge_disposition_id=8 THEN "Discharged/transferred to home under care of Home IV provider"
WHEN discharge_disposition_id=9 THEN "Admitted as an inpatient to this hospital"
WHEN discharge_disposition_id=10 THEN "Neonate discharged to another hospital for neonatal aftercare"
WHEN discharge_disposition_id=11 THEN "Expired"
WHEN discharge_disposition_id=12 THEN "Still patient or expected to return for outpatient services"
WHEN discharge_disposition_id=13 THEN "Hospice / home"
WHEN discharge_disposition_id=14 THEN "Hospice / medical facility"
WHEN discharge_disposition_id=15 THEN "Discharged/transferred within this institution to Medicare approved swing bed"
WHEN discharge_disposition_id=16 THEN "Discharged/transferred/referred another institution for outpatient services"
WHEN discharge_disposition_id=17 THEN "Discharged/transferred/referred to this institution for outpatient services"
WHEN discharge_disposition_id=18 THEN "NULL"
WHEN discharge_disposition_id=19 THEN "Expired at home. Medicaid only, hospice."
WHEN discharge_disposition_id=20 THEN "Expired in a medical facility. Medicaid only, hospice."
WHEN discharge_disposition_id=21 THEN "Expired, place unknown. Medicaid only, hospice."
WHEN discharge_disposition_id=22 THEN "Discharged/transferred to another rehab fac including rehab units of a hospital ."
WHEN discharge_disposition_id=23 THEN "Discharged/transferred to a long term care hospital."
WHEN discharge_disposition_id=24 THEN "Discharged/transferred to a nursing facility certified under Medicaid but not certified under Medicare."
WHEN discharge_disposition_id=25 THEN "Not Mapped"
WHEN discharge_disposition_id=26 THEN "Unknown/Invalid"
WHEN discharge_disposition_id=30 THEN "Discharged/transferred to another Type of Health Care Institution not Defined Elsewhere"
WHEN discharge_disposition_id=27 THEN "Discharged/transferred to a federal health care facility"
WHEN discharge_disposition_id=28 THEN "Discharged/transferred/referred to a psychiatric hospital of psychiatric distinct part unit of a hospital"
WHEN discharge_disposition_id=29 THEN "Discharged/transferred to a Critical Access Hospital (CAH)"
ELSE NULL
END as discharge_disposition_id_description,
CASE
WHEN admission_source_id=1 THEN " Physician Referral"
WHEN admission_source_id=2 THEN "Clinic Referral"
WHEN admission_source_id=3 THEN "HMO Referral"
WHEN admission_source_id=4 THEN "Transfer from a hospital"
WHEN admission_source_id=5 THEN " Transfer from a Skilled Nursing Facility (SNF)"
WHEN admission_source_id=6 THEN " Transfer from another health care facility"
WHEN admission_source_id=7 THEN " Emergency Room"
WHEN admission_source_id=8 THEN " Court/Law Enforcement"
WHEN admission_source_id=9 THEN " Not Available"
WHEN admission_source_id=10 THEN " Transfer from critial access hospital"
WHEN admission_source_id=11 THEN "Normal Delivery"
WHEN admission_source_id=12 THEN " Premature Delivery"
WHEN admission_source_id=13 THEN " Sick Baby"
WHEN admission_source_id=14 THEN " Extramural Birth"
WHEN admission_source_id=15 THEN "Not Available"
WHEN admission_source_id=17 THEN "NULL"
WHEN admission_source_id=18 THEN " Transfer From Another Home Health Agency"
WHEN admission_source_id=19 THEN "Readmission to Same Home Health Agency"
WHEN admission_source_id=20 THEN " Not Mapped"
WHEN admission_source_id=21 THEN "Unknown/Invalid"
WHEN admission_source_id=22 THEN " Transfer from hospital inpt/same fac reslt in a sep claim"
WHEN admission_source_id=23 THEN " Born inside this hospital"
WHEN admission_source_id=24 THEN " Born outside this hospital"
WHEN admission_source_id=25 THEN " Transfer from Ambulatory Surgery Center"
WHEN admission_source_id=26 THEN "Transfer from Hospice"
ELSE NULL
END as admission_source_id_description
FROM hospitals.diabetes;
