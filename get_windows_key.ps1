# ��������� ��������� UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8

$currentDateTime = Get-Date
$productKey = (Get-WmiObject -query "select * from SoftwareLicensingService").OA3xOriginalProductKey
Write-Host "������� ����: $currentDateTime"
Write-Host "��� ����������: $env:COMPUTERNAME"
Write-Host "OEM-���� �������� Windows: $productKey"
Read-Host -Prompt "������� Enter ��� ������"
