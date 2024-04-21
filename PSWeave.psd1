@{
    RootModule        = 'PSWeave.psm1'
    ModuleVersion     = '0.3.1'
    GUID              = '5fc57b3b-8500-40be-ac8f-1afe13d72244'
    Author            = 'Douglas Finke'
    CompanyName       = 'Doug Finke'
    Copyright         = '© 2024 All rights reserved.'

    Description       = @'
PowerShell module that innovates automation with AI to make you more productive
'@

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{ModuleName = 'PSAI'; ModuleVersion = "0.1.0" ; GUID = "68662d19-a8f1-484f-b1b7-3bf0e8a436df" }
    )

    FunctionsToExport = @(
        'Add-PromptPath'
        'Get-WeavePromptPath'
        'Get-WeaveContent'
        'Weave'
    )

    AliasesToExport   = @()

    PrivateData       = @{
        PSData = @{
            Category   = "PowerShell GPT AI OpenAI Module"
            Tags       = @("PowerShell", "GPT", "OpenAI", "AI")
            ProjectUri = "https://github.com/dfinke/PSWeave"
            LicenseUri = "https://github.com/dfinke/PSWeave/blob/master/LICENSE"
        }
    }
}