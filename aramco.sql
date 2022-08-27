
/*
/* ** Create a new query that outputs the  % average change in adj_close and volume by month
   **  Steps:
           1. select date, adj_close, volume, and create 2 new columns year and month from  the Date column using the date_part clause  
		   2. limit the query to  '2022-07-13', using the where clause and the order clause 
		   3.  use a cte function to wrap the query then start the 2nd  query 
		   4. from the 2nd query , select  year, month  then create 2 new columns namely the average of adj_close and Volume
		       using both average and the group by clause to group by month and year, then order by year
		   
		   5.  create 2 new colums which will be the lag values of the average of adj_close and volume using the LAG clause
		   6. wrap the 2nd query in a cte function
		   7. use the 2nd cte_function to start the last query
		   8. select year , month  and then carry out the % change in average value of both tha adj_close and Volume
		   9. % change formula = ((current_value/prev_value)-1) * 100
*/
with cte_month as (
   select 
       "Date",
       date_part('month',"Date") as  month,
	   date_part('year', "Date") as year,
	    adj_close,
		"Volume"
   from 
     aramco_stock
   where "Date" <= '2022-07-13'
   Order By
	 "Date"
),

cte_avg as (
   select
	   year,
       month,
       AVG(adj_close) as avg_monthly_adjclose,
	   AVG("Volume") as avg_monthly_volume,
	   LAG(AVG(adj_close), 1) OVER (
		       ORDER BY
		                  year ASC,
		                  month
	   ) as prev_adjclose_monthly,
	   LAG(AVG("Volume"), 1) OVER (
	            ORDER BY
		                year ASC,
		                month
	   ) as prev_volume_monthly
  from
     cte_month
  group by
       month,
	   year
	  
   order by 
	   year Asc,
	   month
)
select 
        year,
		month,
		(((avg_monthly_adjclose/prev_adjclose_monthly )-1)* 100) as %_change_adjclose_monthly,
		(((avg_monthly_volume/prev_volume_monthly)-1)*100) as  %_change_volume_monthly
from cte_avg
*/

/* 2. Create a new query that outputs the  % average change in adj_close and volume by year
   **  Steps:
           1. select date, adj_close, volume, and create a new column year from  the Date column using the date_part clause  
		   2. limit the query to  '2022-07-13', using the where clause and the order clause 
		   3.  use a cte function to wrap the query then start the 2nd  query 
		   4. from the 2nd query , select  year, month  then create 2 new columns namely the average of adj_close and Volume
		       using both average and the group by clause to group by year, then order by year
		   
		   5.  create 2 new colums which will be the lag values of the average of adj_close and volume using the LAG clause
		   6. wrap the 2nd query in a cte function
		   7. use the 2nd cte_function to start the last query
		   8. select year   and then carry out the % change in average value of both tha adj_close and Volume
		   9. % change formula = ((current_value/prev_value)-1) * 100

*/
/*
With cte_aramco AS (
     select 
        "Date",
        Adj_Close,
		"Volume",
		date_part('year', "Date") As year 

    from 
     aramco_stock
    where "Date" <= '2022-07-13'
   Order By
	 "Date"
),

cte_year as (
     select
	   year,
       AVG(adj_close) as avg_yearly_adjclose,
	   AVG("Volume") as avg_yearly_volume,
	   LAG(AVG(adj_close), 1) OVER (
		       ORDER BY
		                  year ASC
		            
	   ) as prev_adjclose_yearly,
	   LAG(AVG("Volume"), 1) OVER (
	            ORDER BY
		                year ASC
		                
	   ) as prev_volume_yearly
  from
     cte_aramco
  group by
	   year
	  
   order by 
	   year Asc
)
select 
        year,
		(((avg_yearly_adjclose/prev_adjclose_yearly )-1)* 100) as %_change_adjclose_yearly,
		(((avg_yearly_volume/prev_volume_yearly)-1)*100) as  %_change_volume_yearly
from cte_year
*/

/*
/* 3,  Create a new query that outputs the  % average change in oilprice by year
   **  Steps:
           1. select date, oil_price  and create 2 new columns year and month from  the Date column using the date_part clause  
		   
		   2.  use a cte function to wrap the query then start the 2nd  query 
		   3. from the 2nd query , select  year  then create a new column  average oil_price 
		       using both average and the group by clause to group the avrage by year, then order by year
		   
		   4.  create a new column which will be the lag value for the average  oil_price  using the LAG clause
		   5. wrap the 2nd query in a cte function
		   6. use the 2nd cte_function to start the last query
		   7. select year   and then carry out the % change in average value of both tha adj_close and Volume
		   8. % change formula = ((current_value/prev_value)-1) * 100


*/
With cte_oilprcie as (
    select 
        oil_price,
		date_part('year', "Date") As year
		date_part('month', "Date") As month
    from 
     opec_basket
   Order By
	 "Date"
),

cte_year_oil as (
     select
	   year,
       AVG(oil_price) as avg_yearly_oilprice,
	
	   LAG(AVG(oil_price), 1) OVER (
		       ORDER BY
		                  year ASC
		            
	   ) as prev_oilprice_yearly
	
	
  from
     cte_oil
  group by
	   year
	  
   order by 
	   year Asc
)

select 
        year,
		(((avg_yearly_oilprice/prev_oilprice_yearly )-1)* 100) as %_change_oilprice_yearly
from cte_year_oil
	  
*/
/* 4.. Create a new query that outputs the  % average change in oil_price by month
   **  Steps:
           1. select date, oil_price, and create 2 new columns year and month from  the Date column using the date_part clause  
		   
		   2.  use a cte function to wrap the query then start the 2nd  query 
		   3. from the 2nd query , select  year, month  then create a new column  'average of oil_price', 
		       using both average and the group by clause to group the average of oil_price by month and year, then order by year
		   
		   4.  create a new column which will be the lag value of the average of oil_price  using the LAG clause
		   5. wrap the 2nd query in a cte function
		   6. use the 2nd cte_function to start the last query
		   7. select year , month  and then carry out the % change in average value of both tha adj_close and Volume
		   8. % change formula = ((current_value/prev_value)-1) * 100


*/
With cte_oil_month as (
    select 
        oil_price,
		date_part('year', "Date") As year,
	    date_part('month', "Date") AS month
    from 
     opec_basket
   Order By
	 "Date"
),

cte_month_oil as (
     select
	   year,
	   month,
       AVG(oil_price) as avg_monthly_oilprice,
	
	   LAG(AVG(oil_price), 1) OVER (
		       ORDER BY
		                  year ASC ,
		                  month
		            
	   ) as prev_oilprice_monthly	
    from
     cte_oil_month
    group by
	   month,
	   year 
	  
   order by 
	   year ASC,
	   month
)

select 
        year ,
        month,
		(((avg_monthly_oilprice/prev_oilprice_monthly )-1)* 100) as %_change_oilprice_monthly
from cte_month_oil

	