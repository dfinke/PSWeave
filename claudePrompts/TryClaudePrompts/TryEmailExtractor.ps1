Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Phone Directory:
John Latrabe, 555-232-1995, [john909709@geemail.com]
Josie Lana, 555-759-2905, [josie@josielananier.com]
Keven Stevens, 555-980-7000, [drkevin22@geemail.com]

Phone directory will be kept up to date by the HR manager.
"@

$prompt | Weave EmailExtractor
