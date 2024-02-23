$fabric = Get-ChildItem D:\mygit\fabric\patterns -Directory -Name | ForEach-Object {
    $parts = $_ -split '_', ''
    $parts = $parts | ForEach-Object {
        $_.Substring(0, 1).ToUpper() + $_.Substring(1)    
    }
    $destinationName = -join $parts
    
    [PSCustomObject]@{
        SourceName      = "D:\mygit\fabric\patterns\" + $_
        DestinationName = $destinationName
    }
}

$psweave = Get-ChildItem D:\mygit\PSWeave\InstructionPrompts -Name | ForEach-Object {
    $_ -replace '.txt', ''
}

$diff = $fabric.DestinationName | Where-Object { $_ -notin $psweave }

foreach ($targetInstruction in $diff) {
    $source = $fabric | Where-Object { $_.DestinationName -eq $targetInstruction }
    $instructionContent = Get-Content "$($source.SourceName)\system.md"
    $destinationFile = $source.DestinationName + ".txt"
    $outputPath = "$PSScriptRoot\..\InstructionPrompts\"
    $FullNameOutFile = Join-Path -Path $outputPath -ChildPath $destinationFile    
    $FullNameOutFile
}

