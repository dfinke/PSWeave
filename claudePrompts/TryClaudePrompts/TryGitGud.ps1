Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
I have made some changes to my local files and I want to save them in my local Git repository. What Git command should I use?
"@

$prompt | Weave GitGud