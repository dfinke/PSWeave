Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Das Wetter heute ist wunderschön, lass uns spazieren gehen. --> Italienisch
"@

$prompt | Weave PolyglotSuperpowers
