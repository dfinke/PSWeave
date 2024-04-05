Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Create a an assistant for learning the history of england.
"@

$prompt | Weave MetaPrompt