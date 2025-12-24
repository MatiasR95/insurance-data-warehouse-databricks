-- =========================================
-- Bronze Table: insurance_dim_policy
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_policy;

CREATE TABLE insurance_dw.bronze.insurance_dim_policy (
  policy_key INT,
  policy_number STRING,
  policy_start_date DATE,
  policy_end_date DATE,
  policy_status STRING,
  coverage_limit INT,
  deductible INT,
  premium_amount INT
)
USING DELTA;
