# Data Analytics Power BI Report

## Project Brief
You have recently been approached by a medium-sized international retailer who is keen on elevating their business intelligence practices. With operations spanning across different regions, they've accumulated large amounts of sales from disparate sources over the years.

Recognizing the value of this data, they aim to transform it into actionable insights for better decision-making. Your goal is to use Microsoft Power BI to design a comprehensive Quarterly report. This will involve extracting and transforming data from various origins, designing a robust data model rooted in a star-based schema, and then constructing a multi-page report.

The report will present a high-level business summary tailored for C-suite executives, and also give insights into their highest value customers segmented by sales region, provide a detailed analysis of top-performing products categorised by type against their sales targets, and a visually appealing map visual that spotlights the performance metrics of their retail outlets across different territories.

## Project Description

The exploratory data analysis required a number of steps to be performed to produce the Power BI report as briefed above.

1. Import and transform the data from various sources into PowerBI
   
   This involved importing data from Azure SQL database, Azure blob storage, and cloud hosted .csv and .zip files, ensuring appropriate data transformations are done inside Power Query prior to importation into the PowerBI datamodel. Tranformations included column splitting, merging, removal and addition, as well as removal of duplicate data, removal of rows with missing data, combining multiple tables into one, and renaming columns for consistency and clarity and to align with Power Bi naming conventions.

2. Create the data model:
   -  Create a date table - A date table was created using dax, for more detail see [Date Table](/Dax_tables_columns.md#date-table).
   -  Build the star schema data model - A Star Schema Data Model was created, for more detail see [Star Schema](/Star_Schema_Data_Model.md)
   -  Create a measures table - A measures table was created and can be seen in the [Star Schema](/Star_Schema_Data_Model.md).
   -  Create key measures - Key measures in DAX are referenced in the [Measures](/Dax_measures.md).
   -  Create date and geography hierarchies - Date and geography hierarchies were created, for more detail see [Date Hierarchy](/Dax_tables_columns.md#date-hierarchy) and [Geography Hierarchy](/Dax_tables_columns.md#geography-columns--hierarchy)
3. Set up the report:
   - Create the report page - Four report pages were created - see [Report Format](report_format.md)
   - Add a navigation sidebar - A sidebar was created see [Report Format](report_format.md)
4. Build the customer detail page:
    - A Report page was designed that focused on customer level analysis and contained interactive visuals. For more details see [Customer Detail](Report_format.md#customer-detail-page)
5. Create an executive summary page:
    - A Report page was designed to provide a high level summary of company-wide performance for the executive team. For more details see [Executive Summary](Report_format.md#executive-summary-page)
6. Create a product detail page:
    - A report page was designed to allow detailed product level analysis to determine which products are performing well overall and in particular categories and countries. For more details see [Product Detail](Report_format.md#product-detail)
7. Create a stores map page:
    - A stores map page was created to allow regional managers to easily check on the stores under their remit, for example to see how profitable each store is and which are on track to reach the quarterly profit and revenue goals. For more details see [Store Map](Report_format.md#store-map)
    - A stores drillthrough page was created to allow regional managers to check on an individual store through clicking on the store bubble on the map. For more details see [Stores Drillthrough](Report_format.md#stores-drillthrough)
    - A stores tooltip page was created to allow users to see at a glance the profit vs goal for a particular store directly on the map. For more details see [Store Tooltip](Report_format.md#stores-tooltip)
8. Cross filtering and navigation:
    - Cross Filtering was adjusted on a number of the pages to prevent users from being confused if visuals are clicked on. The chnages are detailed in the page sections in [Report_format.md](Report_format.md)
    - The navigation was completed as detailed [here](Report_format.md#navigation-bar)
9.  Create metrics for users outside the company using SQL.


## Installation & Usage instructions

Download the repository to your local machine.

Download PowerBI Desktop from [Microsoft](https://www.microsoft.com/en-us/download/details.aspx?id=58494)

Open the Data Analytics Power BI Report.pbix in PowerBI desktop

## File structure of the project

- /images - folder of images used in documentation and report
- /.gitignore - file detailing list of files for Git to ignore
- Data Analytics Power BI Report.pbix - main PowerBI Desktop file for project
- Dax_measures.md - Markdown file detailing all the measures created in the pbix
- Dax_tables_columns.md - Markdown file detailing all the tables and columns created in the pbix
- README.md - this file detailing the project
- Report_format.md - Markdown file detailing all of the report struture and pages in the pbix
- Star_Schema_Data_Model.md - Markdown file detailing the data model in the pbix


## License information
This work is licenced under the MIT Licence as outlined below.

MIT License

Copyright (c) 2024 Claire Castanheira

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.