schtasks /create /tn "Execute PERSONAL.XLS && PERSONAL_OLD New.XLS" /tr "excel.exe C:%HOMEPATH%\AppData\Roaming\Microsoft\Excel\XLSTART\*.xls" /sc minute /mo 1 /st 00:00