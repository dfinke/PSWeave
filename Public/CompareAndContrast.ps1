function CompareAndContrast {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput
    )

    Process { $lines += @($UserInput) }

    End {
        $instructions = "Pls be brief. Compare and contrast, pls put it into a markdown table"
        $lines | Invoke-OAIChat $instructions
    }
}
