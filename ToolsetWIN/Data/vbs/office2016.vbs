Set objShell = CreateObject("WScript.Shell")

' Ruta al directorio de C:\ToolsetWIN
rutaToolsetWIN = "C:\ToolsetWIN"

' Construir las rutas de los archivos BAT en la ruta de C:\ToolsetWIN
bat1Path = rutaToolsetWIN & "\Data\bat\office2016\pt1.bat"
bat2Path = rutaToolsetWIN & "\Data\bat\office2016\pt2.bat"
bat3Path = rutaToolsetWIN & "\Data\bat\office2016\pt3.bat"
bat4Path = rutaToolsetWIN & "\Data\bat\office2016\pt4.bat"
bat5Path = rutaToolsetWIN & "\Data\bat\office2016\pt5.bat"
bat6Path = rutaToolsetWIN & "\Data\bat\office2016\pt6.bat"
bat7Path = rutaToolsetWIN & "\Data\bat\office2016\pt7.bat"
bat8Path = rutaToolsetWIN & "\Data\bat\office2016\pt8.bat"

' Intenta ejecutar cada archivo BAT con privilegios de administrador
objShell.Run "cmd.exe /c " & bat1Path, 1, True
objShell.Run "cmd.exe /c " & bat2Path, 1, True
objShell.Run "cmd.exe /c " & bat3Path, 1, True
objShell.Run "cmd.exe /c " & bat4Path, 1, True
objShell.Run "cmd.exe /c " & bat5Path, 1, True
objShell.Run "cmd.exe /c " & bat6Path, 1, True
objShell.Run "cmd.exe /c " & bat7Path, 1, True
objShell.Run "cmd.exe /c " & bat8Path, 1, True
