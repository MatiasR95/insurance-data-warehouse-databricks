-- =========================================
-- Bronze Table: insurance_dim_product
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_product;

CREATE TABLE insurance_dw.bronze.insurance_dim_product (
  product_key INT,
  product_code STRING,
  product_name STRING,
  coverage_type STRING
)
USING DELTA;
