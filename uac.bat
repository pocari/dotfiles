rem fileName uac.bat
rem usage    uac.bat [command]
rem          [command] : �C�ӂ�exe�t�@�C����

powershell start-process -verb runas %1
