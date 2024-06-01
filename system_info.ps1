# ��������� ��������� UTF-8
$OutputEncoding = [System.Text.Encoding]::UTF8
$currentDateTime = Get-Date

$computerSystem = Get-WmiObject -Class Win32_ComputerSystem
$domain = $computerSystem.Domain
$os = Get-CimInstance -ClassName Win32_OperatingSystem

Write-Host "������� ����: $currentDateTime"
Write-Host "��� ������������: $env:USERNAME"

Write-Host "��� ����������: $env:COMPUTERNAME"
if ($domain) {
    Write-Host "������������ ������� � �����: $domain"
} else {
    Write-Host "������������ �� ������� � �����."
}
$os | Format-List Caption, Version, BuildType, BuildNumber, InstallDate
Read-Host -Prompt "������� Enter ��� ������"