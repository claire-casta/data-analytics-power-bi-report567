# DAX Measures

The following are the measures that have been created with their DAX code

## Profit YTD

Calculates the total profit for the current year

Profit YTD = TOTALYTD([Total Profit],'Date'[Date])

## Revenue YTD

Calculates the total revenue for the current year

Revenue YTD = TOTALYTD([Total Revenue],'Date'[Date])

## Total Customers

Counts the number of unique customers in the Orders table

Total Customers = DISTINCTCOUNT(Orders[User ID])

## Total Orders 

Counts the number of orders in the Orders table
 
Total Orders = COUNTROWS(Orders)

## Total Profit

For each row, subtracts the Products[Cost_Price] from the Products[Sale_Price], and then multiplies the result by the Orders[Product Quantity] and sums the result for all rows

Total Profit = sumx(Orders, Orders[Product Quantity] * (RELATED(Products[Sales Price]) -RELATED(Products[Cost Price])))

## Total Quantity

Counts the number of items sold in the Orders table

Total Quantity = sum(Orders[Product Quantity])

## Total Revenue 

Multiplies the Orders[Product Quantity] column by the Products[Sale_Price] column for each row, and then sums the result

Total Revenue = SUMX(Orders, Orders[Product Quantity] * RELATED(Products[Sales Price]))