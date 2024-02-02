function ExtractSponsors {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput,
        [Switch]$Chat
    )

    Process { $lines += @($UserInput) } 

    End {

        $instructionsFile = "$PSScriptRoot\..\instructions\extract_sponsors\instructions.md"

        $instructions = Get-Content $instructionsFile -Raw

        if($Chat) {
            'Time to chat'
        } 
        else {
            $lines | Invoke-OAIChat $instructions
        }
    }
} 
