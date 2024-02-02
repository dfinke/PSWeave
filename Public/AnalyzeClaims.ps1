function AnalyzeClaims {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput,
        [Switch]$Chat
    )

    Process { $lines += @($UserInput) } 

    End {

        $instructionsFile = "$PSScriptRoot\..\instructions\analyze_claims\instructions.md"

        $instructions = Get-Content $instructionsFile -Raw

        if($Chat) {
            'Time to chat'
        } 
        else {
            $lines | Invoke-OAIChat $instructions
        }
    }
} 
