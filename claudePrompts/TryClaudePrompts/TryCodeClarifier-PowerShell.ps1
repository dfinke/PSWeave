Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
1..10 | ?{$_.%2 -eq 0} 
"@

$prompt | Weave CodeClarifier 