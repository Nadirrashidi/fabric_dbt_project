CREATE TABLE [silver].[silver_dim_product] (

	[product_sk] int NULL, 
	[product_code] varchar(8000) NULL, 
	[department] varchar(8000) NULL, 
	[category] varchar(8000) NULL, 
	[supplier_sk] int NULL, 
	[list_price] decimal(18,2) NULL, 
	[product_name] varchar(8000) NULL, 
	[quantity_value] numeric(4,1) NOT NULL, 
	[quantity_unit] varchar(8000) NULL
);