@{
    RootModule        = 'PSWeave.psm1'
    ModuleVersion     = '0.2.3'
    GUID              = '5fc57b3b-8500-40be-ac8f-1afe13d72244'
    Author            = 'Douglas Finke'
    CompanyName       = 'Doug Finke'
    Copyright         = 'c 2024 All rights reserved.'

    Description       = @'
PowerShell module that innovates automation with AI to make you more productive
'@

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{ModuleName = 'PowerShellAIAssistant'; ModuleVersion = "0.1.0" ; GUID = "23da7dfe-f77e-4ca6-8b69-5e69603a73ca" }
    )

    FunctionsToExport = @(
        'Add-PromptPath'
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