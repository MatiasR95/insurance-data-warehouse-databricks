-- =========================================
-- Bronze Table: insurance_dim_date
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_date;

CREATE TABLE insurance_dw.bronze.insurance_dim_date (
  date_key INT,
  full_date DATE,
  day INT,
  month INT,
  month_name STRING,
  quarter INT,
  year INT,
  is_weekend BOOLEAN
)
USING DELTA;
