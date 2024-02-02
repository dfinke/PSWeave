param ($fullPath)

if (-not $fullPath) {
    $fullpath = $env:PSModulePath -split ":(?!\\)|;|," |
        Where-Object {$_ -notlike ([System.Environment]::GetFolderPath("UserProfile")+"*") -and $_ -notlike "$pshome*"} |
            Select-Object -First 1
            $fullPath = Join-Path $fullPath -ChildPath "PSWeave"
}

Push-location $PSScriptRoot
Robocopy . $fullPath /mir /XD .vscode images media .git .github CI __tests__ data mdHelp spikes /XF README.md README.original.md appveyor.yml azure-pipelines.yml .gitattributes .gitignore filelist.txt install.ps1 InstallModule.ps1 PublishToGallery.ps1
Pop-Location