-- =========================================
-- Bronze Table: insurance_fact_claims
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_fact_claims;

CREATE TABLE insurance_dw.bronze.insurance_fact_claims (
  claim_payment_id INT,
  claim_id STRING,
  policy_key INT,
  customer_key INT,
  date_key INT,
  location_key INT,
  product_key INT,
  claim_type_key INT,
  agent_key INT,
  claim_amount INT,
  paid_amount INT,
  reserve_amount INT,
  deductible_amount INT,
  payment_status STRING,
  payment_date DATE
)
USING DELTA;
