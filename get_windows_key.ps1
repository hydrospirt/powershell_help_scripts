# Установка кодировки UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8

Write-Host "OEM-ключ продукта Windows:"
$productKey = (Get-WmiObject -query "select * from SoftwareLicensingService").OA3xOriginalProductKey
$productKey | Out-Host
Read-Host -Prompt "Нажмите Enter для выхода"

