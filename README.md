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
The following message may be encountered when attempting to execute more complex commands.
`Error: Please avoid using the following characters as part of scripts' parameters: ; & | ! $ ( )`. 
Base64 encoding can be used as a workaround.

## Usage
### Windows
#### Execute one simple command
```
run ps1 whoami
```
#### Execute complex / multiple of commands
```
run ps1 "-enc asdasd=="
```

### Linux / MacOS
```
```
