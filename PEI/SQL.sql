--The total amount spent and the country for the Pending delivery status for each country.

		select c.Country,sum(o.Amount) as 'Total Amount'
		from Customers c,Orders o,Shippings s
		where c.Customer_id=o.Customer_id
		and c.Customer_id=s.Customer
		and s.Status='Pending'
		group by c.Country

--The total number of transactions, total quantity sold, and total amount spent for each customer, along with the product details.

		select count(Item) as 'Total Quantity Sold',sum(Amount),Item
		from Orders
		group by Item


--The maximum product purchased for each country.
		with t1 as (select c.country,count(o.item) as ItemsPurchased,o.Item
		from Customers c,Orders o
		where c.customer_id=o.customer_id
		group by c.country,item),
				
		t2 as (select dense_rank() over (partition by country order by ItemsPurchased desc) as rank, country,item,ItemsPurchased from t1 )

		select * from t2 where rank =1

--The most purchased product based on the age category less than 30 and above 30.

		with t as 
		(select case 
		when age<30 then 'Below30'
		when age>30 then 'Above30'
		end as AgeCategory,
		customer_id,country 
		from Customers),

		t1 as (select c.country,count(o.item) as ItemsPurchased,o.Item,c.AgeCategory
		from t c,Orders o
		where c.customer_id=o.customer_id
		group by c.country,item),
				
		t2 as (select dense_rank() over (partition by AgeCategory order by ItemsPurchased desc) as rank,AgeCategory, country,item,ItemsPurchased from t1 )

		select AgeCategory,item from t2 where rank =1

--The country that had minimum transactions and sales amount.

		select country from (select country , dense_rank() over (order by AmountSpent,Trans) as rank
		from 
		(select c.country,sum(o.amount) as AmountSpent ,count(o.item) as Trans
		from customers c,orders o
		where c.customer_id=o.order_id
		group by c.country))
		where rank =1 
