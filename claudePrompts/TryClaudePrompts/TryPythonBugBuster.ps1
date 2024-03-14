Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
def calculate_average(nums):
sum = 0
for num in nums:
    sum += num
average = sum / len(nums)
return average

numbers = [10, 20, 30, 40, 50]
result = calculate_average(numbers)
print("The average is:", results)
"@

$prompt | Weave PythonBugBuster