$pathDirectory = '<insert path>'

$pathReport = "$pathDirectory\report.csv"
$hostnames = Get-Content  "$pathDirectory\hostnames.txt"

$credential = Get-Credential

#Format CSV: 
Add-Content -Path $pathReport -Value "Hostname/Category/Val/Exception" #Header CSV

foreach ($hostname in $hostnames)
{
    $Error.Clear()

    $result = Invoke-Command -ComputerName $hostname -Credential $credential -ScriptBlock {Java -version}

    foreach ($err in $Error){
        if(( $err.FullyQualifiedErrorId -eq "WinRMOperationTimeout,PSSessionStateBroken") -or ($err.FullyQualifiedErrorId -eq "NetworkPathNotFound,PSSessionStateBroken") -or ($err.FullyQualifiedErrorId -eq "CannotConnect,PSSessionStateBroken") -or ($err.FullyQualifiedErrorId -eq "CannotConnectWinRMService,PSSessionStateBroken") ){
            $hostname = $err.TargetObject
            $value = $err.ErrorDetails
            $category = $err.CategoryInfo
            $exception = $err.Exception

            Add-Content -Path $pathReport -Value "$hostname/$category/No tiene llegada al servidor./$exception"
        }
        elseif( ( $err.FullyQualifiedErrorId -eq "CommandNotFoundException") ){
            $hostname = $err.OrifinInfo
            $category = $err.CategoryInfo
            $exception = $err.Exception

            Add-Content -Path $pathReport -Value "$hostname/$category/Java no se encuentra instalado, no reconoce el comando Java -version./$exception"
        }
        else{
            $hostname = $err.OrifinInfo
            $value = $err.TargetObject
            $exception = $err.Exception
            Add-Content -Path $pathReport -Value "$hostname/Found/$value/$exception"
        }
               
    }

}