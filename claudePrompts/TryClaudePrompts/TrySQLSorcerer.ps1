Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Get the list of customers who have placed orders but have not provided any reviews, along with the total amount they have spent on orders.
"@

$prompt | Weave SQLSorcerer