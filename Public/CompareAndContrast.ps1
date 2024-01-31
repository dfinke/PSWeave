function CompareAndContrast {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput
    )

    Process { $lines += @($UserInput) }

    End {
        $instructions = @"
# IDENTITY and PURPOSE

Pls be brief. Compare and contrast, pls put it into a markdown table
"@
        $lines | Invoke-OAIChat $instructions
    }
}
