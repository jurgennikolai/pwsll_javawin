## Powershell - AuthWin
### Descripción

El script permite obtener la versión del Java. Así mismo, en el reporte que brinda se muestran los siguientes estados: No tiene comunicación con el servidor, No tiene instalado el Java y Versión del Java. Además, el script tendrá como entrada los hostnames o ip's de los servidores a los cuales se realizará la consulta, para esto será necesario usar su usuario administrador a nivel de dominio. 

### Preparación

1. El archivo **hostnames.txt** debe contener las ip´s o hostname´s de los servidores con los cuales se ingresará las credenciales, como la siguiente manera: 

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

* **En cmd:**
 `$ powershell -File <path file>.ps1 `
*Ejemplo:*
 `$ powershell -File D:\directory01\script_auth.ps1`
* **En powershell:** 
`$ powershell -noexit .\script_auth.ps1`
*Ejemplo:*
 `$ powershell -noexit .\script_auth.ps1`

Seguidamente te pedirá que ingreses tu usuario y contraseña a nivel de dominio. Una vez finalizado, se generará un reporte en .csv con el nombre de report.csv el cual tendrá las siguientes columnas:

`report.csv`

Hostname | Category | Val | Exception
--- | --- | --- | --- 
... | ... | ... | ...


### Nota

Este script fue probado en la versión de powershell 5.1.0. y solo solo funciona para un entorno de dominio. Así mismo, si se quiere modificar el código recomiendo Powershell ISE.

**@jurgennikolai**