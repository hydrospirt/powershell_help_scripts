# Установка кодировки UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8

$currentDateTime = Get-Date
$productKey = (Get-WmiObject -query "select * from SoftwareLicensingService").OA3xOriginalProductKey
Write-Host "Текущая дата: $currentDateTime"
Write-Host "Имя компьютера: $env:COMPUTERNAME"
Write-Host "OEM-ключ продукта Windows: $productKey"
Read-Host -Prompt "Нажмите Enter для выхода"
