-- =========================================
-- Bronze Table: insurance_dim_claim_type
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_claim_type;

CREATE TABLE insurance_dw.bronze.insurance_dim_claim_type (
  claim_type_key INT,
  claim_type_code STRING,
  claim_type_desc STRING
)
USING DELTA;
