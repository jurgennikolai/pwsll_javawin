## Powershell - AuthWin
### Descripción

El script permite automatizar la validación de credenciales en servidores a nivel de dominio. Así mismo, permite identificar los siguientes estados: Comunicación por el puerto 3389 (RDP), DMZ y acceso al servidor.

### Preparación

1. El archivo **hostnames.txt** debe contener las ip´s o hostname´s de los servidores con los cuales validaremos las credenciales, como la siguiente manera: 

`hostnames.txt` 

	192.168.1.22
	SRV01.network.com
	SRV03.network.com
	192.168.1.12
	...

2. Abrir con cualquier editor de texto el archivo **script_auth.ps1**, y enfocarse en la primera linea de código.

`script_auth.ps1` 

	$pathDirectory = '<insert path>'

Modificar el valor de la variable $pathDirectory con la ruta donde se encuentra el script, de la siguiente forma: 

	$pathDirectory = 'D:\Programación\Script_AuthWin'

Eso sería todo.

### Ejecución

* **En cmd: **
 `$ powershell -File <path file>.ps1 `
*Ejemplo:*
 `$ powershell -File D:\directory01\script_auth.ps1`
* **En powershell:** 
`$ powershell -noexit .\script_auth.ps1`
*Ejemplo:*
 `$ powershell -noexit .\script_auth.ps1`


### Nota

Este script fue probado en la versión de powershell 5.1.0. y solo solo funciona para un entorno de dominio. Así mismo, si se quiere modificar el código recomiendo Powershell ISE.

**@jurgennikolai**