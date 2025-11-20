@echo off

start cmd /c "config.bat"

choco install googlechrome -y

choco install python --version=3.11 -y
 
curl  -L ^
      -H "Accept: application/vnd.github+json" ^
      -H "Authorization: Bearer %token%" ^
      -H "X-Github-Api-Version: 2022-11-28" ^
      -o Audit-DAFF.zip ^
      "https://api.github.com/repos/vj-bots/Audit-DAFF/zipball/main"

mkdir Audit-DAFF&& tar -zxvf Audit-DAFF.zip -C Audit-DAFF --strip-components=1

cd Audit-DAFF

pip install -r requirements.txt

SCHTASKS /CREATE /SC DAILY /TN "MYTASKS\Audit-DAFF" /TR "C:Audit-DAFF\main.py" /ST 00:00 /RU Jhonathan

python main.py