Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Create a spreadsheet containing information about books in a library. Include the following columns: Book ID, Title, Author, Genre, Publication Year, and Available Copies. Ensure that the data covers a variety of genres and publication years, and that the number of available copies varies between books.
"@

$prompt | Weave SpreadsheetSorcerer