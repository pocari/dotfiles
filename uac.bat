rem fileName uac.bat
rem usage    uac.bat [command]
rem          [command] : ”CˆÓ‚Ìexeƒtƒ@ƒCƒ‹–¼

powershell start-process -verb runas %1
