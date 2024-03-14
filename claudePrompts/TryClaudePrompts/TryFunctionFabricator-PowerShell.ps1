Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
I want a function that can solve a Sudoku puzzle. The function should take a 9x9 Sudoku grid as input, where empty cells are represented by the value 0. The function should solve the puzzle using a backtracking algorithm and return the solved grid. If the puzzle is unsolvable, it should return None. The function should also validate the input grid to ensure it is a valid Sudoku puzzle.
"@

$prompt | Weave FunctionFabricatorPowerShell
