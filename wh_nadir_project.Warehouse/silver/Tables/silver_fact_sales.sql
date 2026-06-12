CREATE TABLE [silver].[silver_fact_sales] (

	[sales_id] int NULL, 
	[date_sk] int NULL, 
	[store_sk] int NULL, 
	[product_sk] int NULL, 
	[customer_sk] int NULL, 
	[promotion_sk] int NULL, 
	[quantity] int NULL, 
	[unit_price] float NULL, 
	[gross_amount] float NULL, 
	[discount_amount] float NULL, 
	[net_amount] float NULL, 
	[payment_method] varchar(8000) NULL
);