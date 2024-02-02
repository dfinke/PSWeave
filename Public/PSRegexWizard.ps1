function PsRegexWizard {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput,
        [Switch]$Chat
    )

    Process { $lines += @($UserInput) } 

    End {

        $instructionsFile = "$PSScriptRoot\..\instructions\ps_regex_wizard\instructions.md"

        $instructions = Get-Content $instructionsFile -Raw

        if($Chat) {
            'Time to chat'
        } 
        else {
            $lines | Invoke-OAIChat $instructions
        }
    }
} 
