-- =====================================================
-- Bronze Layer Full Load (Databricks)
-- =====================================================
-- Source: CSV files stored in Unity Catalog Volume
-- Path: /Volumes/insurance_dw/bronze/bronze_files/
-- Load Strategy: FULL LOAD (overwrite)
-- =====================================================

SELECT current_timestamp() AS batch_start_time;

-- =====================================================
-- insurance_dim_agent
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_agent;

COPY INTO insurance_dw.bronze.insurance_dim_agent
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_agent.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_customer
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_customer;

COPY INTO insurance_dw.bronze.insurance_dim_customer
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_customer.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_policy
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_policy;

COPY INTO insurance_dw.bronze.insurance_dim_policy
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_policy.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_product
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_product;

COPY INTO insurance_dw.bronze.insurance_dim_product
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_product.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_location
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_location;

COPY INTO insurance_dw.bronze.insurance_dim_location
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_location.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_claim_type
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_claim_type;

COPY INTO insurance_dw.bronze.insurance_dim_claim_type
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_claim_type.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_dim_date
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_dim_date;

COPY INTO insurance_dw.bronze.insurance_dim_date
FROM '/Volumes/insurance_dw/bronze/bronze_files/dim_date.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

-- =====================================================
-- insurance_fact_claims
-- =====================================================
TRUNCATE TABLE insurance_dw.bronze.insurance_fact_claims;

COPY INTO insurance_dw.bronze.insurance_fact_claims
FROM '/Volumes/insurance_dw/bronze/bronze_files/fact_claims.csv'
FILEFORMAT = CSV
FORMAT_OPTIONS ('header' = 'true');

SELECT current_timestamp() AS batch_end_time;
