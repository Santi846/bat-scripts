taskkill /im wbgx.exe /t /f

taskkill /im winword.exe /t /f

taskkill /im excel.exe /t /f

taskkill /im outlook.exe /t /f



rd /s /q "C:\Worldox"
rd /s /q "C:%HOMEPATH%\AppData\Roaming\WORLDOX"


rd /s /q "C:%HOMEPATH%\AppData\Roaming\WDXTEMP"


rd /s /q "C:%HOMEPATH%\AppData\Local\Worldox"


del "C:%HOMEPATH%\AppData\Roaming\Microsoft\Excel\XLSTART\@w*.*" /F /Q


del "C:%HOMEPATH%\AppData\Roaming\Microsoft\Word\STARTUP\@w*.*" /F /Q