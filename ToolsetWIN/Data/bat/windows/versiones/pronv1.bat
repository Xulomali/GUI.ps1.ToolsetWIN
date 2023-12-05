@ECHO OFF

NET SESSION >nul 2>&1
if %errorLevel% == 0 (
    echo Ejecutando con privilegios de administrador
) else (
    echo Solicitando privilegios de administrador...
    powershell Start-Process -FilePath "%0" -Verb RunAs
    exit
)

net session >nul 2>&1
if %errorLevel% == 0 (
    echo El script se esta ejecutando con privilegios de administrador.
    set ELEVATED=true
) else (
    echo El script no tiene privilegios de administrador.
    set ELEVATED=false
)

lmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9