$script:instructionPromptPath = @(
    "$PSScriptRoot\InstructionPrompts"
)

function Weave {
    [CmdletBinding()]
    param(
        [ValidateSet([InstructionPrompts])]
        $Instructions,
        [Parameter(ValueFromPipeline)]
        $UserInput,
        [Switch]$Chat,
        [Switch]$ListPrompts
    )

    Process { $lines += @($UserInput) } 

    End {
        if ($ListPrompts) {
            (Get-InstructionPromptNames).Keys | Sort-Object
            return
        }

        $instructionsFile = (Get-InstructionPromptNames)[$instructions]
        $instructionPrompt = Get-Content $instructionsFile -Raw

        if ($Chat) {
            'Not yet implemented, coming soon...'
        }
        else {
            $instructionPrompt = $ExecutionContext.InvokeCommand.ExpandString($instructionPrompt)
            Write-Verbose $instructionPrompt
            $lines | Invoke-OAIChat $instructionPrompt
        }
    }
} 

function Get-InstructionPromptNames {
    $map = [Ordered]@{}
    Get-ChildItem $script:instructionPromptPath | ForEach-Object { 
        $map[$_.BaseName] = $_.FullName
    }
    $map
}

function Add-PromptPath {
    param(
        [string]$Path
    )

    if (-not (Test-Path $Path)) {
        Write-Error "Path $Path does not exist"
        return
    }

    $Path = (Resolve-Path $Path).Path
    $script:instructionPromptPath += @($Path)
}

Class InstructionPrompts : System.Management.Automation.IValidateSetValuesGenerator {
    [String[]] GetValidValues() {
        $prompts = Get-InstructionPromptNames
        return ($prompts.Keys | Sort-Object)
    }
}