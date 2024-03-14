Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Please convert the following JSON data into a CSV file:

[
{
"name": "John Doe",
"age": 30,
"city": "New York",
"email": "john.doe@example.com"
},
{
"name": "Jane Smith",
"age": 25,
"city": "London",
"email": "jane.smith@example.com"
},
{
"name": "Bob Johnson",
"age": 35,
"city": "Paris",
"email": "bob.johnson@example.com"
}
]

Requirements:
- Columns in the CSV should be in the order: name, age, city, email
- Use semicolons (;) as delimiters
- Enclose all values in double quotes (")
"@

$prompt | Weave CSVConverter