# MDE Live Response: Run Arbitrary Commands
Run arbitrary `PowerShell` and `Bash` commands once a MDE Live Response session is established. 
* By default the `run` command executes a previously uploaded script or executable file.
* Adds functionality where a script is uploaded that interprets and executes its arguments.
* Commands including special characters can be executed as encoded base64.

## Setup
#### Upload scrip to MDE library
#### Configure CyberChef as input encoder

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
