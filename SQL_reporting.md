# SQL Reporting

To ensure data insights can ber shared with external partners and clients, a postgres database on Azure can be queried with SQL and data extracted without relying on visualisation such as Power BI.

## Connecting to SQL Server

The database was accessed through Visual Studio Code using the SQLTools extension and SQLTools postgres driver through the extensions menu. For more details see the [Installation & Usage instructions](readme.md#installation--usage-instructions)

The azure based database server was then accessed using the supplied credentials.

## Checking the Table and Column Names

As the table and column names are different to those in Power BI, the table names and columns details in each were queried and the results saved to a csv. The links to the sql and csv files are linked below

- Table Names - [SQL](sql/database_tables.sql) and [CSV](SQL_CSV/database_tables.csv)
- dim_products columns - [SQL](sql/dim_products_columns.sql) and [CSV](SQL_CSV/dim_products_columns.csv)
- dim_stores columns - [SQL](sql/dim_products_columns.sql) and [CSV](SQL_CSV/dim_stores_columns.csv)
- dim_users columns - [SQL](sql/dim_users_column.sql) and [CSV](SQL_CSV/dim_users_columns.csv)
- orders_powerbi - [SQL](sql/orders_columns.sql) and [CSV](SQL_CSV/orders_powerBI_columns.csv)

However on inspection of the column outputs from the dim_users table [CSV](SQL_CSV/dim_users_columns.csv), it was clear there was issues with the database as the column names looked like a record, not a column names. Any further queries will need to await the planned re-loading of the database by the aicore technical team.