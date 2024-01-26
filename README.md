# PSWeave - Human Augmentor
![Alt text](media/psweave.png)

Inspired by this Python implementation https://github.com/danielmiessler/fabric. Bootstrapped with the prompts from that repo.

## Requirements
- `Install-Module PowerShellAIAssistant` - PowerShell integration to OpenAI 
- OpenAI API key

    First, create an [OpenAI account](https://platform.openai.com/signup) or [sign in](https://platform.openai.com/login). Next, navigate to the [API key page](https://platform.openai.com/account/api-keys) and "Create new secret key", optionally naming the key. Make sure to save this somewhere safe and do not share it with anyone.

    Then set the environment variable to the key:`$env:OpenAIKey='sk-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'`

## In Action
There are 27 ready to go functions with prompts that you can pipe to.

`Get-Command -Module PSWeave`

Also, you can add your own and you can pipe text to the first, get the response from GPT, and pipe that to the next, and so on.

```powershell
'arm templates, ansible, terraform, bicep' | CompareAndContrast 
```

Contrasts each of those IaC tools based on criteria GPT determines. The output is a markdown table.

All controlled via the prompt, that you can tweak.


![Alt text](media/PSWeave-release.gif)

## Get Augmented

Let's see what you build.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to add or change.