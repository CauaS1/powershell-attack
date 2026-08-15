<<<<<<< HEAD
﻿$path = "C:\Users\semne\passd.txt"
$who = whoami
$locaUser = Get-LocalUser
$queryUser = query User
$firewall = netsh advfirewall show allprofiles
$systemInfo = systeminfo
$tasks = Get-ScheduledTask

if (-not (Test-Path -Path $path)) {
    Write-Warning "It does not exist"

    New-Item -Path "C:\Users\semne" -Name "passd.txt" -ItemType File
    Add-Content -Path "C:\Users\semne\passd.txt" -Value "This is the possible password for everything: passejrkjt
    
    " 
    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    USER & GROUPS INFORMATION ==================================================
    
    "
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $who
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $localUser
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $queryUser


    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    FIREWALL & SYSTEM INFORMATION ==================================================
    
    "
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $systemInfo
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $firewall

    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    TASKS INFORMATION ==================================================
    
    "

    Add-Content -Path "C:\Users\semne\passd.txt" -Value $tasks




}
=======
﻿$path = "C:\Users\semne\passd.txt"
$who = whoami
$locaUser = Get-LocalUser
$queryUser = query User
$firewall = netsh advfirewall show allprofiles
$systemInfo = systeminfo
$tasks = Get-ScheduledTask

if (-not (Test-Path -Path $path)) {
    Write-Warning "It does not exist"

    New-Item -Path "C:\Users\semne" -Name "passd.txt" -ItemType File
    Add-Content -Path "C:\Users\semne\passd.txt" -Value "This is the possible password for everything: passejrkjt
    
    " 
    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    USER & GROUPS INFORMATION ==================================================
    
    "
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $who
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $localUser
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $queryUser


    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    FIREWALL & SYSTEM INFORMATION ==================================================
    
    "
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $systemInfo
    Add-Content -Path "C:\Users\semne\passd.txt" -Value $firewall

    Add-Content -Path "C:\Users\semne\passd.txt" -Value "
    TASKS INFORMATION ==================================================
    
    "

    Add-Content -Path "C:\Users\semne\passd.txt" -Value $tasks




}
>>>>>>> 5c5aa5511f554b265e8c929a0df30f59b62afee7
    