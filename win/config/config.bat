@echo off

cd C:

Winget install -e --id Python.Python.3.11

set minhaPasta = Audit-DAFF.zip

curl  -L ^
      -H "Accept: aaplication/vnd.github+json" ^
      -H "Authorization: Bearer " ^
      -H "X-Github-Api-Version: 2022-11-28" ^
      -o Audit-DAFF.zip ^
      "https://api.github.com/repos/vj-bots/Audit-DAFF/zipball/main!"

mkdir Audit-DAFF&& tar -zxvf %minhaPasta% -C Audit-DAFF --strip-components=1

cd Audit-DAFF

pip install -r requirementes.txt

SCHTASKS /CREATE /SC DAILY /TN "MYTASKS\Audit-DAFF" /TR "C:Audit-DAFF\main.py" /ST 00:00 /RU Jhonathan
