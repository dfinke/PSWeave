function PostToX {
    param(
        [Parameter(ValueFromPipeline)]
        $UserInput
    )

    Process { $lines += @($UserInput) }

    End {
        $instructions = "Pls be brief. Post to X (aka twitter). X (aka twitter) has a 280 char limit that you must respect"
        $lines | Invoke-OAIChat $instructions
    }
}