CREATE TABLE [bronze].[bronze_dim_product] (

	[product_sk] int NULL, 
	[product_code] varchar(8000) NULL, 
	[product_name] varchar(8000) NULL, 
	[department] varchar(8000) NULL, 
	[category] varchar(8000) NULL, 
	[supplier_sk] int NULL, 
	[list_price] float NULL, 
	[uom] varchar(8000) NULL
);