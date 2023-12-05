@ECHO OFF

set "officePath=%ProgramFiles%\Microsoft Office\Office16"

if not exist "%officePath%" (
    echo La ruta predeterminada no existe.
    set "officePath=%ProgramFiles(x86)%\Microsoft Office\Office16"
)

echo Usando la ruta: %officePath%
cd /d %officePath%

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
    echo El script se está ejecutando con privilegios de administrador.
    set ELEVATED=true
) else (
    echo El script no tiene privilegios de administrador.
    set ELEVATED=false
)

cscript ospp.vbs /act

pause

