Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Joe: Hi Hannah!
Hannah: Hi Joe! Are you coming over?
Joe: Yup! Hey I, uh, forgot where you live.
Hannah: No problem! It's 4085 Paco Ln, Los Altos CA 94306.
Joe: Got it, thanks!
"@

$prompt | Weave PIIPurifier