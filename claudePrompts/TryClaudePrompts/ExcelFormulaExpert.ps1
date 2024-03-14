Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
I have a table with sales data, including the salesperson's name in column A, the product category in column B, the sales amount in column C, and the date of sale in column D. I want to calculate the total sales amount for each salesperson, but only for sales of products in the "Electronics" category that occurred in the month of January. Can you help me with the Excel formula to achieve this?
"@

$prompt | Weave ExcelFormulaExpert