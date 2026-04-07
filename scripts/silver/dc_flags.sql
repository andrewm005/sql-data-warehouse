/*
Different Flags used for data cleansing on silver layer
*/
-- Check for unwanted Spaces
-- Expectation: No Result
SELECT
cst_id,
COUNT(*)
FROM silver.crm_cust_info
GROUP BY cst_id
HAVING COUNT(*) > 1 OR cst_id IS NULL

--Check for unwanted Spaces
-- Expectation: No Results
SELECT cst_key
FROM silver.crm_cust_info
WHERE cst_key != TRIM(cst_key)


-- Data Standardization & Consistency
SELECT DISTINCT cst_marital_status
FROM silver.crm_cust_info

SELECT * FROM silver.crm_cust_info
