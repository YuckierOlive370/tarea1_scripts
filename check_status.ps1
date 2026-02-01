Clear-Host
Write-Host "++++++++INFORMACION DEL S.O++++++++"
Write-Host "Nombre: $env:COMPUTERNAME"
$ip = Get-NetIPAddress -AddressFamily IPv4 |
Where-Object {
    $_.IPAddress -notlike "169.254*" -and
    $_.InterfaceAlias -notlike "*Loopback*"
} |
Select-Object -First 1 -ExpandProperty IPAddress
Write-Host "Ip actual: $ip"
$disco = Get-PSDrive -Name C
$espacioLibre = [math]::Round($disco.Free / 1GB, 2)
Write-Host "Espacio actual: $espacioLibre GB libres"
$fecha = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
Write-Host "Fecha y hora: $fecha"
