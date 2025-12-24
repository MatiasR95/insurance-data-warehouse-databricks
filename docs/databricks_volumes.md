# Databricks Volumes

This project uses Unity Catalog Volumes to store raw CSV files
used for loading the Bronze layer.

## Volume Path
/Volumes/insurance_dw/bronze/bronze_files/

## Purpose
- Acts as landing zone for raw insurance CSV datasets
- Replaces local file system used in SQL Server projects
- Required for COPY INTO operations in Databricks

## Source of Files
The CSV files originate from:
datasets/raw/

Files are manually uploaded into the Databricks volume.
