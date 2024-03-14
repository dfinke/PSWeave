Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
function greet {
    Write-Host "Hello, World!"
}
"@

$prompt | Weave PowerShellBugBuster