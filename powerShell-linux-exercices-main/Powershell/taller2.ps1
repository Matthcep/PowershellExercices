# 1. Iniciar nueva sesión en línea de comandos cmd
# En PowerShell ya estamos en la línea de comandos, no es necesario iniciar una nueva sesión

# 2. Ubicarse en el directorio documentos/documents o el de su preferencia
cd $HOME\Documents

# 3. Crear una nueva carpeta llamada webApp por línea de comandos
New-Item -Path . -Name "webApp" -ItemType "Directory"

# 4. Crear 3 subdirectorios (uno, dos, tres) respectivamente
New-Item -Path .\webApp -Name "uno","dos","tres" -ItemType "Directory"

# 5. Renombrar los directorios creados a html, css y javascript
Rename-Item -Path .\webApp\uno -NewName "html"
Rename-Item -Path .\webApp\dos -NewName "css"
Rename-Item -Path .\webApp\tres -NewName "javascript"

# 6. Crear los archivos index.html, styles.css, scripts.js en la carpeta raíz
New-Item -Path .\webApp -Name "index.html" -ItemType "File"
New-Item -Path .\webApp -Name "styles.css" -ItemType "File"
New-Item -Path .\webApp -Name "scripts.js" -ItemType "File"

# 7. Mover los archivos previamente creados a sus respectivas carpetas
Move-Item -Path .\webApp\index.html -Destination .\webApp\html\
Move-Item -Path .\webApp\styles.css -Destination .\webApp\css\
Move-Item -Path .\webApp\scripts.js -Destination .\webApp\javascript\

# 8. Generar una copia del directorio webApp y llamarla webApp_v1.2
Copy-Item -Path .\webApp -Destination .\webApp_v1.2 -Recurse

# 9. Crear dos carpetas en webApp_v1.2, cliente y servidor
New-Item -Path .\webApp_v1.2 -Name "cliente", "servidor" -ItemType "Directory"

# 10. Mover las carpetas html, css, javascript a la carpeta cliente
Move-Item -Path .\webApp_v1.2\html -Destination .\webApp_v1.2\cliente\
Move-Item -Path .\webApp_v1.2\css -Destination .\webApp_v1.2\cliente\
Move-Item -Path .\webApp_v1.2\javascript -Destination .\webApp_v1.2\cliente\

# 11. En la carpeta servidor crear archivo llamado database.sql y app.js
New-Item -Path .\webApp_v1.2\servidor -Name "database.sql" -ItemType "File"
New-Item -Path .\webApp_v1.2\servidor -Name "app.js" -ItemType "File"

# 12. Visualizar el directorio webApp en forma de diagrama de árbol
Tree .\webApp_v1.2

# 13. Limpiar la pantalla
Clear-Host
