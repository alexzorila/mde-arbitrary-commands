# MDE Live Response: Run Arbitrary Commands
Run arbitrary `PowerShell` and `Bash` commands once a MDE Live Response session is established. 
* By default the `run` command executes a previously uploaded script or executable file.
* Adds functionality where a script is uploaded that interprets and executes its arguments.
* Commands including special characters can be executed as encoded base64.

## Setup
### Live Response library
Upload the following files to MDE Live Response file library to add functionality.
* PowerShell interpreter: `ps1`
* Linux Shell interpreter: `sh`
  
### CyberChef as input encoder
Command execution may fail with: 
`Error: Please avoid using the following characters as part of scripts' parameters: ; & | ! $ ( )`. 

Base64 encoding can be used as a workaround. CyberChef recipies can be employed for ease of use.
* PowerShell recipe: [Link](https://gchq.github.io/CyberChef/#recipe=To_Base64('A-Za-z0-9%2B/%3D')Find_/_Replace(%7B'option':'Regex','string':'%5E'%7D,'run%20ps1%20%22-enc%20',true,false,true,false)Find_/_Replace(%7B'option':'Regex','string':'$'%7D,'%22',true,false,true,false))
* Linux Shell recipe: [Link](https://gchq.github.io/CyberChef/#recipe=To_Base64('A-Za-z0-9%2B/%3D')Find_/_Replace(%7B'option':'Regex','string':'%5E'%7D,'run%20sh%20%22-enc%20',true,false,true,false)Find_/_Replace(%7B'option':'Regex','string':'$'%7D,'%22',true,false,true,false))

## Usage
### Windows
```
run ps1 whoami
```
```
run ps1 "-enc d2hvYW1pCnB3ZApscw=="
```

### Linux / MacOS
```
run sh whoami
```
```
run sh 
```

