CREATE TABLE [bronze].[bronze_dim_customer] (

	[customer_sk] int NULL, 
	[customer_code] varchar(8000) NULL, 
	[first_name] varchar(8000) NULL, 
	[last_name] varchar(8000) NULL, 
	[gender] varchar(8000) NULL, 
	[email] varchar(8000) NULL, 
	[phone] varchar(8000) NULL, 
	[loyalty_tier] varchar(8000) NULL, 
	[signup_date] date NULL
);