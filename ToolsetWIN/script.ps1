
Add-Type -AssemblyName System.Windows.Forms

# Ruta al archivo de icono (reemplázala con la ruta a tu propio archivo .ico)
$iconPath = "C:\ToolsetWIN\icon.ico"
$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($iconPath)
$form.ShowInTaskbar = $true


$form = New-Object System.Windows.Forms.Form
$form.Text = 'Activador de Windows'
$form.Size = New-Object System.Drawing.Size(500, 63)

$mainMenu = New-Object System.Windows.Forms.MenuStrip

# Opción 1 con submenú
$menuOption1 = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOption1.Text = 'Seleccionar Versión'

$subMenu1 = New-Object System.Windows.Forms.ContextMenuStrip

# Submenú "Home Edition"
$subMenuItemHomeEdition = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemHomeEdition.Text = "Home Edition"
$subMenuItemHomeEdition.Add_Click({
    Write-Host "Ejecutando comando para Home Edition"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\home.bat"
})
$subMenu1.Items.Add($subMenuItemHomeEdition)

# Submenú "Pro v1 Edition"
$subMenuItemProv1Edition = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProv1Edition.Text = "Pro v1 Edition"
$subMenuItemProv1Edition.Add_Click({
    Write-Host "Ejecutando comando para Pro v1 Edition"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\prov1.bat"
})
$subMenu1.Items.Add($subMenuItemProv1Edition)

# Submenú "Pro v2 Edition"
$subMenuItemProv2Edition = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProv2Edition.Text = "Pro v2 Edition"
$subMenuItemProv2Edition.Add_Click({
    Write-Host "Ejecutando comando para Pro v2 Edition"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\prov2.bat"
})
$subMenu1.Items.Add($subMenuItemProv2Edition)

# Submenú "Pro Education"
$subMenuItemProEducation = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProEducation.Text = "Pro Education"
$subMenuItemProEducation.Add_Click({
    Write-Host "Ejecutando comando para Pro Education"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\proedu.bat"
})
$subMenu1.Items.Add($subMenuItemProEducation)

# Submenú "Pro Education N"
$subMenuItemProEducationN = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProEducationN.Text = "Pro Education N   |   Sin Apps Preinstaladas"
$subMenuItemProEducationN.Add_Click({
    Write-Host "Ejecutando comando para Pro Education N"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\proedun.bat"
})
$subMenu1.Items.Add($subMenuItemProEducationN)

# Submenú "Pro N v1"
$subMenuItemProNv1 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProNv1.Text = "Pro N v1                 |   Sin Apps Preinstaladas"
$subMenuItemProNv1.Add_Click({
    Write-Host "Ejecutando comando para Pro N v1"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\pronv1.bat"
})
$subMenu1.Items.Add($subMenuItemProNv1)

# Submenú "Pro N v2"
$subMenuItemProNv2 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemProNv2.Text = "Pro N v2                 |   Sin Apps Preinstaladas"
$subMenuItemProNv2.Add_Click({
    Write-Host "Ejecutando comando para Pro N v2"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\pronv2.bat"
})
$subMenu1.Items.Add($subMenuItemProNv2)

# Submenú "Enterprise v1"
$subMenuItemEnterpriseV1 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemEnterpriseV1.Text = "Enterprise v1"
$subMenuItemEnterpriseV1.Add_Click({
    Write-Host "Ejecutando comando para Pro Enterprise v1"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\enterprisev1.bat"
})
$subMenu1.Items.Add($subMenuItemEnterpriseV1)

# Submenú "Enterprise v2"
$subMenuItemEnterpriseV2 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemEnterpriseV2.Text = "Enterprise v2"
$subMenuItemEnterpriseV2.Add_Click({
    Write-Host "Ejecutando comando para Pro Enterprise v2"
    # Agrega tu comando aquí
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\versiones\enterprisev2.bat"
})
$subMenu1.Items.Add($subMenuItemEnterpriseV2)



$menuOption1.DropDown = $subMenu1

# Opción 2 con submenú
$menuOption2 = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOption2.Text = 'Office'

# Submenú "Office" directamente en la opción principal
$subMenu2 = New-Object System.Windows.Forms.ContextMenuStrip

# Submenú "Office 2010"
$subMenuItemOffice2010 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemOffice2010.Text = "Office 2010 (❌)"
$subMenuItemOffice2010.Add_Click({
    Write-Host "Ejecutando comando para Office 2010"
    # Agrega tu comando aquí
})
$subMenu2.Items.Add($subMenuItemOffice2010)

# Submenú "Office 2012"
$subMenuItemOffice2012 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemOffice2012.Text = "Office 2012 (❌)"
$subMenuItemOffice2012.Add_Click({
    Write-Host "Ejecutando comando para Office 2012"
    # Agrega tu comando aquí
})
$subMenu2.Items.Add($subMenuItemOffice2012)

# Submenú "Office 2013"
$subMenuItemOffice2013 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemOffice2013.Text = "Office 2013 (❌)"
$subMenuItemOffice2013.Add_Click({
    Write-Host "Ejecutando comando para Office 2013"
    # Agrega tu comando aquí
})
$subMenu2.Items.Add($subMenuItemOffice2013)

# Submenú "Office 2016"
$subMenuItemOffice2016 = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenuItemOffice2016.Text = "Office 2016"
$subMenuItemOffice2016.Add_Click({
    # Agregar aquí el comando para ejecutar el archivo VBS
    Start-Process -FilePath "wscript.exe" -ArgumentList .\Data\vbs\office2016.vbs
})
$subMenu2.Items.Add($subMenuItemOffice2016)

$menuOption2.DropDown = $subMenu2

# Opción 3 "Seleccionar Servidor"
$menuOption3 = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOption3.Text = 'Seleccionar Servidor'

$subMenu3 = New-Object System.Windows.Forms.ContextMenuStrip

# Submenú "kms.digiboy.ir"
$subMenudigiboy = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenudigiboy.Text = "kms.digiboy.ir"
$subMenudigiboy.Add_Click({
    # Agregar aquí el comando para ejecutar el archivo VBS
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\servidor\digiboy.bat"
})
$subMenu3.Items.Add($subMenudigiboy)

# Submenú "kms.msguides.com"
$subMenumsguides = New-Object System.Windows.Forms.ToolStripMenuItem
$subMenumsguides.Text = "kms.msguides.com"
$subMenumsguides.Add_Click({
    # Agregar aquí el comando para ejecutar el archivo VBS
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\servidor\msguides.bat"
})
$subMenu3.Items.Add($subMenumsguides)


$menuOption3.DropDown = $subMenu3

# Opción 4 "Activar Windows"
$menuOption4 = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOption4.Text = 'Activar Windows'
$menuOption4.Add_Click({
    Write-Host "Ejecutando comando para Activar Windows"
    # Agregar aquí el comando para ejecutar el archivo VBS
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c C:\ToolsetWIN\Data\bat\windows\activar.bat"
})

# Agregar al menú principal
$mainMenu.Items.AddRange(@($menuOption1, $menuOption2, $menuOption3, $menuOption4))

$form.MainMenuStrip = $mainMenu
$form.Controls.Add($mainMenu)

$form.ShowDialog()
# Cierra el formulario al hacer clic en el botón
