# Установка кодировки UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8
$currentDateTime = Get-Date

$computerSystem = Get-WmiObject -Class Win32_ComputerSystem
$domain = $computerSystem.Domain
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$bios = Get-WmiObject -Class Win32_BIOS
$cpuinfo = Get-CimInstance -ClassName CIM_Processor

$currentDateTime
$env:USERNAME
if ($domain) {
    Write-Host "Пользователь включен в домен: $domain"
} else {
    Write-Host "Пользователь не включен в домен."
}
$os | Format-List Caption, Version, BuildType, BuildNumber, InstallDate
$cpuinfo | Format-List Name, Description, Version
$bios

Read-Host -Prompt "Нажмите Enter для выхода"