rem fileName uac.bat
rem usage    uac.bat [command]
rem          [command] : 任意のexeファイル名

powershell start-process -verb runas %1
