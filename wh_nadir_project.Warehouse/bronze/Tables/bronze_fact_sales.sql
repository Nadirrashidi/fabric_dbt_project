CREATE TABLE [bronze].[bronze_fact_sales] (

	[sales_id] int NULL, 
	[date_sk] int NULL, 
	[store_sk] int NULL, 
	[product_sk] int NULL, 
	[customer_sk] int NULL, 
	[promotion_sk] int NULL, 
	[quantity] int NULL, 
	[unit_price] decimal(18,2) NULL, 
	[gross_amount] decimal(18,2) NULL, 
	[discount_amount] decimal(18,2) NULL, 
	[net_amount] decimal(18,2) NULL, 
	[payment_method] varchar(8000) NULL
);