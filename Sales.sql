
select 
Year,Month,

case
   when Month=1 then 'January'
   when Month=2 then 'February'
   when Month=3 then 'March'
   when Month=4 then 'Aprel'
   when Month=5 then 'May'
   when Month=6 then 'June'
   when Month=7 then 'July'
   when Month=8 then 'August'
   when Month=9 then 'September'
   when Month=10 then 'October'
   when Month=11 then 'November'
   when Month=12 then 'December'
   else 'Not'
end as MonthName ,

sum(Quantity*UnitPrice) as Profit,
sum(Quantity) as Quantity

from SalesUpdate
group by Year,Month
order by Year asc,Month asc


