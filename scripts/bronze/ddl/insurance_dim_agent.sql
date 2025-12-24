-- =========================================
-- Bronze Table: insurance_dim_agent
-- =========================================
-- Source: CSV file in Databricks Volume
-- Load type: Full reload
-- =========================================

DROP TABLE IF EXISTS insurance_dw.bronze.insurance_dim_agent;

CREATE TABLE insurance_dw.bronze.insurance_dim_agent (
  agent_key INT,
  agent_id STRING,
  agent_name STRING,
  channel STRING,
  state_assigned STRING
)
USING DELTA;
