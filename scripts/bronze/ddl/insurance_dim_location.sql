-- =========================================
-- Bronze Table: insurance_dim_location
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_location;

CREATE TABLE insurance_dw.bronze.insurance_dim_location (
  location_key INT,
  state_code STRING,
  state_name STRING,
  region STRING
)
USING DELTA;
