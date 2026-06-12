CREATE TABLE [bronze].[scd_dim_customer] (

	[customer_sk] int NULL, 
	[customer_code] varchar(8000) NULL, 
	[first_name] varchar(8000) NULL, 
	[last_name] varchar(8000) NULL, 
	[gender] varchar(8000) NULL, 
	[email] varchar(8000) NULL, 
	[phone] varchar(8000) NULL, 
	[loyalty_tier] varchar(8000) NULL, 
	[signup_date] date NULL, 
	[dbt_scd_id] varchar(32) NULL, 
	[dbt_updated_at] datetime2(6) NULL, 
	[dbt_valid_from] datetime2(6) NULL, 
	[dbt_valid_to] datetime2(6) NULL
);