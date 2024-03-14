Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
All the world's a stage, and all the men and women merely players. They have their exits and their entrances; And one man in his time plays many parts.
"@

$prompt | Weave EmojiEncoder