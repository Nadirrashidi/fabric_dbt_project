CREATE TABLE [silver].[silver_dim_customer] (

	[customer_sk] int NULL, 
	[first_name] varchar(8000) NULL, 
	[last_name] varchar(8000) NULL, 
	[email] varchar(8000) NULL, 
	[loyalty_tier] varchar(8000) NULL, 
	[signup_date] date NULL, 
	[signup_year] int NULL, 
	[signup_month] int NULL
);