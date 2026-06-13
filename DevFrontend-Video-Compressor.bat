@echo off
setlocal EnableDelayedExpansion
title DevFrontend Video Compressor
color 0B

:: ==========================================================
:: VERIFICAR FFMPEG
:: ==========================================================

where ffmpeg >nul 2>&1

if %errorlevel% neq 0 (
    if not exist "%~dp0ffmpeg.exe" (
        cls
        echo ==================================================
        echo ERRO: FFMPEG NAO ENCONTRADO
        echo ==================================================
        echo.
        echo Instale o FFmpeg ou coloque ffmpeg.exe
        echo na mesma pasta deste script.
        echo.
        pause
        exit
    )
    set FFMPEG=%~dp0ffmpeg.exe
) else (
    set FFMPEG=ffmpeg
)

:MENU

cls

echo ==================================================
echo DEVFRONTEND VIDEO COMPRESSOR
echo ==================================================
echo.
echo [1] Alta Qualidade
echo [2] Qualidade Balanceada
echo [3] Alta Compressao
echo [4] Compressao para WhatsApp
echo [5] Compressao para Instagram
echo [6] Processar todos os MP4 da pasta
echo [0] Sair
echo.

set /p OPCAO=Escolha uma opcao:

if "%OPCAO%"=="1" goto ALTA
if "%OPCAO%"=="2" goto MEDIA
if "%OPCAO%"=="3" goto BAIXA
if "%OPCAO%"=="4" goto WHATSAPP
if "%OPCAO%"=="5" goto INSTAGRAM
if "%OPCAO%"=="6" goto LOTE
if "%OPCAO%"=="0" exit

goto MENU

:: ==========================================================
:: ESCOLHER VIDEO
:: ==========================================================

:ESCOLHER

cls

echo.
echo Arraste o video para esta janela e pressione ENTER:
echo.

set /p VIDEO=

if not exist %VIDEO% (
    echo.
    echo Arquivo nao encontrado.
    pause
    goto MENU
)

for %%A in (%VIDEO%) do (
    set NOME=%%~nA
    set EXT=%%~xA
    set PASTA=%%~dpA
    set TAMANHO=%%~zA
)

goto PROCESSAR

:: ==========================================================
:: MODOS
:: ==========================================================

:ALTA
set CRF=23
set PRESET=medium
goto ESCOLHER

:MEDIA
set CRF=28
set PRESET=slow
goto ESCOLHER

:BAIXA
set CRF=32
set PRESET=veryslow
goto ESCOLHER

:WHATSAPP
set CRF=30
set PRESET=veryslow
set RESCALE=1280
goto ESCOLHER

:INSTAGRAM
set CRF=28
set PRESET=slow
set RESCALE=1080
goto ESCOLHER

:: ==========================================================
:: PROCESSAMENTO
:: ==========================================================

:PROCESSAR

cls

echo ==================================================
echo COMPACTANDO VIDEO
echo ==================================================
echo.
echo Arquivo:
echo %VIDEO%
echo.

if defined RESCALE (
    %FFMPEG% -y -i %VIDEO% ^
    -c:v libx265 ^
    -crf %CRF% ^
    -preset %PRESET% ^
    -vf scale=%RESCALE%:-2 ^
    -c:a aac ^
    -b:a 96k ^
    "%PASTA%%NOME%_compactado.mp4"
) else (
    %FFMPEG% -y -i %VIDEO% ^
    -c:v libx265 ^
    -crf %CRF% ^
    -preset %PRESET% ^
    -c:a aac ^
    -b:a 128k ^
    "%PASTA%%NOME%_compactado.mp4"
)

if not exist "%PASTA%%NOME%_compactado.mp4" (
    echo.
    echo Falha ao compactar.
    pause
    goto MENU
)

for %%A in ("%PASTA%%NOME%_compactado.mp4") do (
    set NOVO=%%~zA
)

echo.
echo ==================================================
echo RESULTADO
echo ==================================================
echo.
echo Original:    !TAMANHO! bytes
echo Compactado: !NOVO! bytes
echo.
echo Arquivo salvo em:
echo %PASTA%%NOME%_compactado.mp4
echo.

pause
goto MENU

:: ==========================================================
:: PROCESSAMENTO EM LOTE
:: ==========================================================

:LOTE

cls

echo ==================================================
echo PROCESSAMENTO EM LOTE
echo ==================================================
echo.

for %%F in (*.mp4) do (

    echo Compactando %%F ...

    %FFMPEG% -y ^
    -i "%%F" ^
    -c:v libx265 ^
    -crf 28 ^
    -preset slow ^
    -c:a aac ^
    -b:a 96k ^
    "compactado_%%~nF.mp4"

)

echo.
echo Todos os videos foram processados.
echo.

pause
goto MENU