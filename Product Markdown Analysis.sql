#1 Distinct Brand-wise total original price

select distinct Brand, sum(round(Original_Price)) as Total_Original_Price from synthetic_markdown_dataset group by Brand;

#2 Competitor Price
select distinct Brand, sum(round(Competitor_Price)) as Total_Compititor_Price from synthetic_markdown_dataset group by Brand;

#3 Brand wise Markdown 1

select distinct Brand, sum(Markdown_1) as Total_Markdown_1 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_2) as Total_Markdown_2 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_3) as Total_Markdown_3 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_4) as Total_Markdown_4 from synthetic_markdown_dataset group by Brand;


#4 Sales after markdown wise

select distinct Brand, sum(Markdown_1) as Total_Markdown_1, sum(Sales_After_M1) as Total_sales_1 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_2) as Total_Markdown_2, sum(Sales_After_M2) as Total_sales_2 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_3) as Total_Markdown_3, sum(Sales_After_M3) as Total_sales_3 from synthetic_markdown_dataset group by Brand;
select distinct Brand, sum(Markdown_1) as Total_Markdown_4, sum(Sales_After_M4) as Total_sales_4 from synthetic_markdown_dataset group by Brand;


#5 Category wise total original price 

select distinct Category , sum(round(Original_Price)) as Total_original_price from synthetic_markdown_dataset group by Category;

#6 Seasonal wise category total original price

select distinct Category, Season, sum(round(Original_Price)) as Total_Price from synthetic_markdown_dataset where
Season = 'Summer' group by Category, Season;

select distinct Category, Season, sum(round(Original_Price)) as Total_Price from synthetic_markdown_dataset where
Season = 'Winter' group by Category, Season;

select distinct Category, Season, sum(round(Original_Price)) as Total_Price from synthetic_markdown_dataset where
Season = 'Spring' group by Category, Season;

select distinct Category, Season, sum(round(Original_Price)) as Total_Price from synthetic_markdown_dataset where
Season = 'Rainy' group by Category, Season;


#7 Which category of products preferred the most promotion type

select distinct Category, promotion_type, count(promotion_type) as promotion_type from synthetic_markdown_dataset 
group by category, promotion_type order by promotion_type desc;


#8 Markdown wise total sales after markdown

select sum(Markdown_1), sum(sales_after_m1) from synthetic_markdown_dataset;

select sum(Markdown_2), sum(sales_after_m2) from synthetic_markdown_dataset;

select sum(Markdown_3), sum(sales_after_m3) from synthetic_markdown_dataset;

select sum(Markdown_4), sum(sales_after_m4) from synthetic_markdown_dataset;

#9 Brand wise sales after markdown

select Brand, sum(sales_after_m1) as total_sales from synthetic_markdown_dataset where Brand = 'BrandA';
select Brand, sum(sales_after_m2) as total_sales from synthetic_markdown_dataset where Brand = 'BrandA';
select Brand, sum(sales_after_m3) as total_sales from synthetic_markdown_dataset where Brand = 'BrandA';
select Brand, sum(sales_after_m4) as total_sales from synthetic_markdown_dataset where Brand = 'BrandA';



select Brand, sum(sales_after_m1) as total_sales from synthetic_markdown_dataset where Brand = 'BrandB';
select Brand, sum(sales_after_m2) as total_sales from synthetic_markdown_dataset where Brand = 'BrandB';
select Brand, sum(sales_after_m3) as total_sales from synthetic_markdown_dataset where Brand = 'BrandB';
select Brand, sum(sales_after_m4) as total_sales from synthetic_markdown_dataset where Brand = 'BrandB';


select Brand, sum(sales_after_m1) as total_sales from synthetic_markdown_dataset where Brand = 'BrandC';
select Brand, sum(sales_after_m2) as total_sales from synthetic_markdown_dataset where Brand = 'BrandC';
select Brand, sum(sales_after_m3) as total_sales from synthetic_markdown_dataset where Brand = 'BrandC';
select Brand, sum(sales_after_m4) as total_sales from synthetic_markdown_dataset where Brand = 'BrandC';


select Brand, sum(sales_after_m1) as total_sales from synthetic_markdown_dataset where Brand = 'BrandD';
select Brand, sum(sales_after_m2) as total_sales from synthetic_markdown_dataset where Brand = 'BrandD';
select Brand, sum(sales_after_m3) as total_sales from synthetic_markdown_dataset where Brand = 'BrandD';
select Brand, sum(sales_after_m4) as total_sales from synthetic_markdown_dataset where Brand = 'BrandD';


































































