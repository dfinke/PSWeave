Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
import random

def bubble_sort(arr):
    n = len(arr)
    for i in range(n-1):
        for j in range(n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]
    return arr

numbers = [random.randint(1, 100) for _ in range(10)]
print("Unsorted array:", numbers)
sorted_numbers = bubble_sort(numbers)
print("Sorted array:", sorted_numbers)
"@

$prompt | Weave CodeClarifier