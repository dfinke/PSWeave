<p align="center">  
  <a href="https://x.com/dfinke">
    <img src="https://img.shields.io/twitter/follow/dfinke.svg?style=social&label=Follow%20%40dfinke">
  </a>
  <a href="https://youtube.com/@dougfinke">
    <img src="https://img.shields.io/youtube/channel/subscribers/UCP47ZkO5EDkoI2sr-3P4ShQ">
  </a>  
<a href="https://www.powershellgallery.com/packages/PSWeave/">
    <img src="https://img.shields.io/powershellgallery/v/PSWeave.svg">
  </a>  
  <a href="https://www.powershellgallery.com/packages/PSWeave/">
    <img src="https://img.shields.io/powershellgallery/dt/PSWeave.svg">
  </a>
</p>


# PSWeave - Innovating automation
![Alt text](media/psweave.png)

## In Action
There are 27+ ready to go prompts that you can pipe to.
You can list them with:
`Weave -List`

Then choose one and pipe to it. For example:

```powershell
'arm templates, ansible, terraform, bicep' | CompareAndContrast 
```

Contrasts each of those IaC tools based on criteria GPT determines. The output is a markdown table.
All controlled via the prompt, that you can tweak.

|           | Arm Templates | Bicep | Ansible | Terraform |
|-----------|---------------|-------|---------|-----------|
| Language  | JSON          | Bicep | YAML    | HCL       |
| Complexity| High          | Low   | Medium  | Medium    |
| Provisioning| Yes         | Yes   | Yes     | Yes       |
| Configuration Management| No | No   | Yes     | No       |
| Cloud Compatibility| Azure | Azure | Multi-Cloud | Multi-Cloud   |
| Community Support| Good   | Growing| Strong   | Strong    |
| Learning Curve| Steep | Moderate | Moderate | Moderate  |

<br/>

## In Action
Check out the video below to see PSWeave in action.

<center>
<a href="https://youtu.be/PZM0tgddJ18"><img src="https://img.youtube.com/vi/PZM0tgddJ18/0.jpg" width="200" /></a>
</center>

Inspired by this Python implementation https://github.com/danielmiessler/fabric. Bootstrapped with the prompts from that repo.

## Requirements
- `PSWeave` will install the required module: `Install-Module PowerShellAIAssistant` - PowerShell integration to OpenAI 

## Configure OpenAI API Key

1. Create an [OpenAI account](https://platform.openai.com/signup) or [sign in](https://platform.openai.com/login).
2. Navigate to the [API key page](https://platform.openai.com/account/api-keys).
3. Click "Create new secret key", optionally naming the key. Make sure to save this somewhere safe and do not share it with anyone.
4. Set the environment variable `OpenAIKey` to your API key.
5. Open a new PowerShell and type `$ENV:OpenAIKey`. If you do not see your API key, you may need to either restart your computer or use a script like [Refresh-EnvironmentVariables](https://github.com/asheroto/Refresh-EnvironmentVariables) for it to be detected.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to add or change.
