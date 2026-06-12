CREATE TABLE [bronze].[bronze_dim_store] (

	[store_sk] int NULL, 
	[store_code] varchar(8000) NULL, 
	[store_name] varchar(8000) NULL, 
	[city] varchar(8000) NULL, 
	[state_province] varchar(8000) NULL, 
	[region] varchar(8000) NULL, 
	[country] varchar(8000) NULL, 
	[open_date] date NULL, 
	[sq_ft] int NULL
);