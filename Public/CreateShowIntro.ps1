function CreateShowIntro {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput,
        [Switch]$Chat
    )

    Process { $lines += @($UserInput) } 

    End {

        $instructionsFile = "$PSScriptRoot\..\instructions\create_show_intro\instructions.md"

        $instructions = Get-Content $instructionsFile -Raw

        if($Chat) {
            'Time to chat'
        } 
        else {
            $lines | Invoke-OAIChat $instructions
        }
    }
} 
