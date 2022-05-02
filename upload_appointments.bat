@echo off
title Upload appointments

goto prepare

:: Steps
:prepare
    echo Preparing appointments...
    call kibot appointments prepare

    if %ERRORLEVEL% == 1 (
        echo Script couldn't be executed because there was an error.
        goto end
    )
        
    goto upload


:upload
    echo Uploading appointments...
    call kibot appointments upload

:end
    cmd.exe /k cmd /c