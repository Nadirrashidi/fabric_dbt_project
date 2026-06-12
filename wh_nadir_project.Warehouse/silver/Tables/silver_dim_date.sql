CREATE TABLE [silver].[silver_dim_date] (

	[date_sk] int NULL, 
	[date] date NULL, 
	[day] int NULL, 
	[month] int NULL, 
	[month_name] varchar(8000) NULL, 
	[quarter] int NULL, 
	[year] int NULL, 
	[day_of_week] int NULL, 
	[day_name] varchar(8000) NULL, 
	[is_weekend] bit NULL, 
	[is_month_end] bit NULL, 
	[is_month_start] bit NULL, 
	[is_quarter_end] bit NULL, 
	[is_quarter_start] bit NULL
);