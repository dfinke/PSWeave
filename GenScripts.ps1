$functions = Get-ChildItem .\instructions -Recurse instructions.md | Select-Object -First 100 | ForEach-Object {
    $dir = Split-Path $_.FullName
    $name = Split-Path -Leaf $dir

    $NewName = $name -split '_' | ForEach-Object {
        $_.Substring(0, 1).ToUpper() + $_.Substring(1).ToLower()
    }

    [PSCustomObject]@{
        FunctionName = -join $NewName
        Path         = $_.FullName
    }
}

foreach ($function in $functions) {
    $script = @'
function {0} {{
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput
    )

    Process {{ $lines += @($UserInput) }}

    End {{
        $instructions = @"
{1}
"@
        $lines | Invoke-OAIChat $instructions
    }}
}}
'@ -f $function.FunctionName, (Get-Content $function.Path -Raw)

    $script | Set-Content -Encoding utf8 "$PSScriptRoot\Public\$($function.FunctionName).ps1" 
    Write-Host "Created $($function.FunctionName)"
}