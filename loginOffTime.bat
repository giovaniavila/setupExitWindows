@echo off
echo O sistema será desligado em 2 horas.
set /p choice=Digite S para desligar agora ou qualquer outra tecla para cancelar: 
if /i "%choice%"=="S" (
    shutdown /s /f /t 7200
    set /p cancel=Para cancelar o desligamento, digite C e pressione Enter: 
    if /i "%cancel%"=="C" (
        shutdown /a
        echo Desligamento cancelado. Pressione qualquer tecla para sair.
        pause >nul
    ) else (
        echo Comando inválido. O sistema será desligado em 2 horas. Pressione qualquer tecla para sair.
        shutdown /s /f /t 7200
    )
) else (
    echo Desligamento cancelado. Pressione qualquer tecla para sair.
    pause >nul
)
