# Установка кодировки UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8
$currentDateTime = Get-Date

$computerSystem = Get-WmiObject -Class Win32_ComputerSystem
$domain = $computerSystem.Domain
$os = Get-CimInstance -ClassName Win32_OperatingSystem

Write-Host "Текущая дата: $currentDateTime"
Write-Host "Имя пользователя: $env:USERNAME"

Write-Host "Имя компьютера: $env:COMPUTERNAME"
if ($domain) {
    Write-Host "Пользователь включен в домен: $domain"
} else {
    Write-Host "Пользователь не включен в домен."
}
$os | Format-List Caption, Version, BuildType, BuildNumber, InstallDate
Read-Host -Prompt "Нажмите Enter для выхода"