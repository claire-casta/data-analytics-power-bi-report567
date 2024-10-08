# Dax Tables and Columns

The following are the tables and columns that have been created in PowerBi using DAX.

## Date Table

Create the initial date table using the following DAX in 'New Table'

Date = CALENDAR(MIN(Orders[Order Date]), ENDOFYEAR(Orders[Shipping Date]))

Then create the relevant columns using the following DAX

- Day of Week = FORMAT('Date'[Date], "dddd")
- Month Number = MONTH('Date'[Date])
- Month Name = FORMAT('Date'[Date],"mmm")
- Quarter = QUARTER('Date'[Date])
- Year = YEAR('Date'[Date])
- Start of Year = STARTOFYEAR('Date'[Date])
- Start of Quarter = STARTOFQUARTER('Date'[Date])
- Start of Month = STARTOFMONTH('Date'[Date])
- Start of Week = ('Date'[Date]) - WEEKDAY('Date'[Date], 2) +1

Ensure the table is configured as a date table with 'Date'[Date] as the date field.

## Date Hierarchy

A date hierarchy was created as below to allow drill-down in line charts etc.

- Start of Year
- Start of Quarter
- Start of Month
- Start of Week
- Date

## Geography Columns & Hierarchy

A new calculated column was created in the Stores table called Country that creates a full country name for each row, based on the Stores[Country Code] column, according to the following scheme:

GB : United Kingdom
US : United States
DE : Germany

The DAX code for this was as follows

Country = 
SWITCH(
    'Stores'[Country Code],
    "GB", "United Kingdom",
    "US", "United States",
    "DE", "Germany",
    "Unknown"
)

A full geography column was also calculated in the Stores table called Geography that creates a full geography name for each row, based on the Stores[Country Region], and Stores[Country] columns, separated by a comma and a space. The DAX for this was 

Geography = 'Stores'[Country Region] & ", " & 'Stores'[Country]

Data Categories were assigned as below

- World Region : Continent
- Country : Country
- Country Region : State or Province

A Geography hierarchy was created with the following levels

- World Region
- Country
- Country Region

## Profit per Item

A calculated column in the Products table to detail the unit profit generated by each product.

Profit Per Item = Products[Sales Price] - Products[Cost Price]

