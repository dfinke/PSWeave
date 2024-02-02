$functions = Get-ChildItem .\instructions -Recurse instructions.md | ForEach-Object {
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

$template = Get-Content -Raw "$PSScriptRoot\template.txt"

foreach ($function in $functions) {
    $functionName = $function.FunctionName
    $instructions = Get-Content -Raw $function.Path

    $script = $ExecutionContext.InvokeCommand.ExpandString($template)

    $script | Set-Content -Encoding utf8 "$PSScriptRoot\Public\$($functionName).ps1"
    Write-Host "Created $($functionName)"
}