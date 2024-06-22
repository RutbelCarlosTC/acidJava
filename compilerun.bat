@echo off

:: Verificar si se proporcionó el nombre del archivo de la clase principal como argumento
if "%1" == "" (
  echo Uso: %0 <nombre_archivo_clase>
  exit /b 1
)

:: Asignar el argumento proporcionado a una variable y quitar el sufijo .java si está presente
set "MAIN_CLASS=%1"
if "%MAIN_CLASS:~-5%" == ".java" set "MAIN_CLASS=%MAIN_CLASS:~0,-5%"

:: Compilar los archivos Java
javac -cp lib\mysql-connector-j-8.4.0.jar -d bin *.java
:: Verificar si la compilación fue exitosa
if %errorlevel% neq 0 (
  echo La compilación falló.
  exit /b 1
)

:: Ejecutar la aplicación Java
java -cp bin;lib\mysql-connector-j-8.4.0.jar app.%MAIN_CLASS%
:: Verificar si la ejecución fue exitosa
if %errorlevel% neq 0 (
  echo La ejecución falló.
  exit /b 1
)
