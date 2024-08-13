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

## Revenue per Customer

[Total Revenue] divided by the [Total Customers].

Revenue Per Customer = 'Measures Table'[Total Revenue]/'Measures Table'[Total Customers]

## Previous Quarter Orders

Counts the number of orders in the previous quarter

Previous Quarter Orders = CALCULATE( [Total Orders], PREVIOUSQUARTER('Date'[Date]))

Modifed as data in project ends in mid 2023 so PREVIOUSQUARTER returns no data on page tied to todays date.

Previous Quarter Orders = 
VAR CurrentQuarterStart = MAX('Date'[Start of Quarter])
VAR PreviousQuarterStart = EDATE(CurrentQuarterStart, -3)
VAR PreviousQuarterEnd = EDATE(CurrentQuarterStart, -1)
RETURN
CALCULATE([Total Orders], 'Date'[Start of Quarter] = PreviousQuarterStart)

## Previous Quarter Profit

Calculates the previous quarters profit level

Previous Quarter Profit = CALCULATE( [Total Profit] , PREVIOUSQUARTER('Date'[Date]))

Modifed as data in project ends in mid 2023 so PREVIOUSQUARTER returns no data on page tied to todays date.

Previous Quarter Profit = 
VAR CurrentQuarterStart = MAX('Date'[Start of Quarter])
VAR PreviousQuarterStart = EDATE(CurrentQuarterStart, -3)
VAR PreviousQuarterEnd = EDATE(CurrentQuarterStart, -1)
RETURN
CALCULATE([Total Profit], 'Date'[Start of Quarter] = PreviousQuarterStart)

## Previous Quarter Revenue

Calculates the previous quarters revenue level

Previous Quarter Revenue = CALCULATE( [Total Revenue] , PREVIOUSQUARTER('Date'[Date]))

Modifed as data in project ends in mid 2023 so PREVIOUSQUARTER returns no data on page tied to todays date.

Previous Quarter Revenue = 
VAR CurrentQuarterStart = MAX('Date'[Start of Quarter])
VAR PreviousQuarterStart = EDATE(CurrentQuarterStart, -3)
VAR PreviousQuarterEnd = EDATE(CurrentQuarterStart, -1)
RETURN
CALCULATE([Total Revenue], 'Date'[Start of Quarter] = PreviousQuarterStart)

## Quarterly Order Target 5%

Calculates the order target for the quarter by increasing the performance of the last quarter by 5% (multiply by 105%)

Quarterly Order Target = 'Measures Table'[Previous Quarter Orders] * 1.05

## Quarterly Profit Target 5%

Calculates the profit target for the quarter by increasing the performance of the last quarter by 5% (multiply by 105%)

Quarterly Profit Target = 'Measures Table'[Previous Quarter Profit] * 1.05

## Quarterly Revenue Target 5%

Calculates the revenue target for the quarter by increasing the performance of the last quarter by 5% (multiply by 105%)

Quarterly Revenue Target = 'Measures Table'[Previous Quarter Revenue] * 1.05

## Current Quarter Orders 

Current Quarter Orders = CALCULATE( [Total Orders], DATESQTD('Date'[Date]))

## Current Quarter Profit

Current Quarter Profit = CALCULATE( [Total Profit], DATESQTD('Date'[Date]))

## Current Quarter Revenue 

Current Quarter Revenue = CALCULATE( [Total Revenue], DATESQTD('Date'[Date]))

## Quarterly Order Target 10% 

Calculates the order target for the quarter by increasing the performance of the last quarter by 10% (multiply by 110%)

Quarterly Order Target 10%  = 'Measures Table'[Previous Quarter Orders] * 1.1

## Quarterly Profit Target 10% 

Calculates the profit target for the quarter by increasing the performance of the last quarter by 10% (multiply by 110%)

Quarterly Profit Target 10% = 'Measures Table'[Previous Quarter Profit] * 1.1

## Quarterly Revenue Target 10% 

Calculates the revenue target for the quarter by increasing the performance of the last quarter by 10% (multiply by 110%)

Quarterly Revenue Target 10% = 'Measures Table'[Previous Quarter Revenue] * 1.1

## Category Selection

Showing the category filter selected

Category Selection = IF(ISFILTERED(Products[Category]), SELECTEDVALUE(Products[Category], "No Selection"), "No Selection")

## Country Selection

Showing the country filter selected

Country Selection = IF(ISFILTERED(Stores[Country]), SELECTEDVALUE(Stores[Country],"No Selection"))

## Profit per Order

Profit Per Order = 'Measures Table'[Total Profit] / 'Measures Table'[Total Orders]

## Profit Goal

Calculating the previous year profit in the same time period and increasing by 20%

Profit Goal = CALCULATE(TOTALYTD([Total Profit], 'Date'[Date]), SAMEPERIODLASTYEAR('Date'[Date])) * 1.2

## Revenue Goal 

Calculating the previous year revenue in the same time period and increasing by 20%

Revenue Goal = CALCULATE(TOTALYTD([Total Revenue], 'Date'[Date]), SAMEPERIODLASTYEAR('Date'[Date])) * 1.2

## Store Selection

Shows the selected store as selected in the filter (through the drilldown)

Store Selection = IF(ISFILTERED(Stores[Country Region]), SELECTEDVALUE(Stores[Country Region], "No Selection"), "No Selection")