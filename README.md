## Powershell - AuthWin
### Description

The script allows to obtain the Java version. Likewise, the following statuses are shown in the report: No communication with the server, No Java installed and Java version. In addition, the script will have as input the hostnames or ip's of the servers to which the query will be made, for this it will be necessary to use its administrator user at domain level.

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

* **cmd:**
 `$ powershell -File <path file>.ps1 `
*Example:*
 `$ powershell -File D:\directory01\script_auth.ps1`
* **powershell:** 
`$ powershell -noexit .\script_auth.ps1`
*Example:*
 `$ powershell -noexit .\script_auth.ps1`

You will then be prompted to enter your user and password at the domain level. Once finished, a .csv report will be generated with the name report.csv which will have the following columns:

`report.csv`

Hostname | Category | Val | Exception
--- | --- | --- | --- 
... | ... | ... | ...

### Note

This script was tested on powershell version 5.1.0. and only works for a domain environment. Also, if you want to modify the code I recommend Powershell ISE.


**@jurgennikolai**