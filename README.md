# Data Analytics Power BI Report

## Project Brief
You have recently been approached by a medium-sized international retailer who is keen on elevating their business intelligence practices. With operations spanning across different regions, they've accumulated large amounts of sales from disparate sources over the years.

Recognizing the value of this data, they aim to transform it into actionable insights for better decision-making. Your goal is to use Microsoft Power BI to design a comprehensive Quarterly report. This will involve extracting and transforming data from various origins, designing a robust data model rooted in a star-based schema, and then constructing a multi-page report.

The report will present a high-level business summary tailored for C-suite executives, and also give insights into their highest value customers segmented by sales region, provide a detailed analysis of top-performing products categorised by type against their sales targets, and a visually appealing map visual that spotlights the performance metrics of their retail outlets across different territories.

## Project Description
A description of the project: what it does, the aim of the project, and what you learned.

This project .... ADD MORE DETAILS TO THIS BIT

The exploratory data analysis has several steps built into the project:
1. Import and transform the data from various sources into PowerBI
   
   This involved importing data from Azure SQL database, Azure blob storage, and cloud hosted .csv and .zip files, ensuring appropriate data transformations are done inside Power Query prior to importation into the PowerBI datamodel. Tranformations included column splitting, merging, removal and addition, as well as removal of duplicate data, removal of rows with missing data, combining multiple tables into one, and renaming columns for consistency and clarity and to align with Power Bi naming conventions.

2. Create the data model:
   -  Create a date table - A date table was created using dax, for more detail see [Date Table](/Dax_tables_columns#date-table).
   -  Build the star schema data model - A Star Schema Data Model was created, for more detail see [Star Schema](/Star_Schema_Data_Model.md)
   -  Create a measures table - A measures table was created and can be seen in the [Star Schema](/Star_Schema_Data_Model.md).
   -  Create key measures - Key measures in DAX are referenced in the [Measures](/Dax_measures).
   -  Create date and geography hierarchies - Date and geography hierarchies were created, for more detail see [Date Hierarchy](/Dax_tables_columns#date-hierarchy) and [Geography Hierarchy](/Dax_tables_columns.md#geography-columns--hierarchy)
3. Set up the report:
   - Create the report page
   - Add a navigation sidebar
4. Build the customer detail page:
    - copy
    - list
    - from
    - milestone 5
5. Create an executive summary page:
    - copy
    - list
    - from
    - milestone 6
6. Create a product detail page:
    - copy
    - list
    - from
    - milestone 7
7. Create a stores map page:
    - Add a map visual
    - Add a country slicer
    - Create a stores drillthrough page
    - Create a stores tooltip page
8. Cross filtering and navigation:
    - Fix the cross-filtering
    - Finish the navigation bar
9.  Create metrics for users outside the company using SQL.


## Installation & Usage instructions

Download the repository to your local machine.

ADD MORE INFO

## File structure of the project

EXAMPLE - EDIT THIS!!!!!


EDA Project
 - analysis_and_visualisations.ipynb (Notebook 2 for this EDA project detailing the analysis of dataframe)
 - correlation matrix.csv (Output by loan_payments_queries.ipynb to allow a more detailed analysis of correlated columns)
 - db_utils_local.py (Code referenced by loan_payments_queries.ipynb for use on the local machine)
 - db_utils.py (Code referenced by loan_payments_queries.ipynb to extract data from the database and download it to a csv file on the local machine)
 - loan_payments_queries.ipynb (Notebook 1 for this EDA project detailing the data preparation before analysis)
 - loan_payments.csv (the original csv file downloaded from the database)
 - mod_loan_payments_post_skew_corr.csv (Output by loan_payments_queries.ipynb to allow further analysis of the dataframe after correction for skew)
 - mod_loan_payments_pre_skew.csv (Output by loan_payments_queries.ipynb to allow further analysis of the dataframe without the alterations to the data produced by skew corrections)
 - README.md (information document to aid understanding of the contents of his repository)
 - requirements.txt (contains a list of all the imports required for the code in this project to work)

## License information
This work is licenced under the MIT Licence as outlined below.

MIT License

Copyright (c) 2024 Claire Castanheira

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.