Executive KPI Dashboard DAX Measures

Total Revenue =
SUM(FactFinance[Revenue])

Total Expenses =
SUM(FactFinance[Expenses])

Total Profit =
[Total Revenue] - [Total Expenses]

Profit Margin % =
DIVIDE([Total Profit], [Total Revenue], 0)

Customer Count =
DISTINCTCOUNT(DimCustomer[CustomerID])

YOY Revenue Growth % =
DIVIDE(
    [Total Revenue] -
        CALCULATE([Total Revenue], DATEADD(DimDate[Date], -1, YEAR)),
    CALCULATE([Total Revenue], DATEADD(DimDate[Date], -1, YEAR)),
    0
)
