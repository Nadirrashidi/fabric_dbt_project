CREATE TABLE [silver].[silver_fact_returns] (

	[sales_id] int NULL, 
	[date_sk] int NULL, 
	[store_sk] int NULL, 
	[product_sk] int NULL, 
	[returned_qty] int NULL, 
	[return_reason] varchar(8000) NULL, 
	[refund_amount] float NULL
);