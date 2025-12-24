-- =========================================
-- Bronze Table: insurance_dim_customer
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_customer;

CREATE TABLE insurance_dw.bronze.insurance_dim_customer (
  customer_key INT,
  customer_id STRING,
  first_name STRING,
  last_name STRING,
  gender STRING,
  date_of_birth DATE,
  customer_segment STRING
)
USING DELTA;
