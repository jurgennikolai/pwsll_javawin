## Powershell - AuthWin
### Description

The script allows to automate the validation of credentials on domain level servers. It also allows to identify the following states: Communication over port 3389 (RDP), DMZ and server access.

### Preparation

1. The **hostnames.txt** file must contain the ip's or hostname's of the servers with which we will validate the credentials, as follows: 

`hostnames.txt` 

	192.168.1.22
	SRV01.network.com
	SRV03.network.com
	192.168.1.12
	...

2. Open with any text editor the file **script_auth.ps1**, and focus on the first line of code.

`script_auth.ps1` 

	$pathDirectory = '<insert path>'

Modify the value of the $pathDirectory variable with the path where the script is located, as follows: 

	$pathDirectory = 'D:\Programación\Script_AuthWin'

That would be all.

### Execution

* **cmd: **
 `$ powershell -File <path file>.ps1 `
*Example:*
 `$ powershell -File D:\directory01\script_auth.ps1`
* **powershell:** 
`$ powershell -noexit .\script_auth.ps1`
*Example:*
 `$ powershell -noexit .\script_auth.ps1`


### Note

This script was tested on powershell version 5.1.0. and only works for a domain environment. Also, if you want to modify the code I recommend Powershell ISE.


**@jurgennikolai**