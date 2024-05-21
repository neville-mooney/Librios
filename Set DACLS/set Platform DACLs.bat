@ECHO OFF


REM ===============================================================================
REM ==  !! Do not run this batch file from the volume that your are modifying!!  ==
REM ===============================================================================



SET LogFileDir=D:\Platform-A\DACLs\Logs
MKDIR %LogFileDir%

SET today=%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%%time:~6,2%
SET LogFilePrefix=%LogFileDir%\%today%_


NET USE Z: \\libnetbrooklandsmain.file.core.windows.net\platform-a /user:localhost\libnetbrooklandsmain [key goes here]
@ECHO.
@ECHO Save before.icacls...
ICACLS Z: /save %LogFilePrefix%SetPlatform-before.icacls
@ECHO --------------------------------------------------------------------------------------
@ECHO.


GOTO DoNotResetToDefault
@ECHO.
@ECHO Reset root to defaults and propagate to all files and folders.
ICACLS Z: /reset /t  
@ECHO --------------------------------------------------------------------------------------
@ECHO.
GOTO End
:DoNotResetToDefault


@ECHO.
@ECHO Grant 'Brooklands - Administrators' full permissions to root...
ICACLS Z: /grant "Brooklands - Administrators":(OI)(CI)(F) /t
@ECHO --------------------------------------------------------------------------------------
@ECHO.
	
@ECHO.
@ECHO Grant 'Brooklands - Platform-A - Librios Studio Users' read permissions to contents of root...
ICACLS Z:\* /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(RX) /t
@ECHO --------------------------------------------------------------------------------------
@ECHO.


@ECHO.
@ECHO Grant 'Brooklands - Platform-A - Librios Studio Users' full permissions to required folders...
ICACLS Z:\Databases /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS Z:\Projects /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
@ECHO --------------------------------------------------------------------------------------
@ECHO.



@ECHO Save after.icacls
ICACLS Z: /save %LogFilePrefix%SetPlatform-after.icacls
NET USE Z: /delete



REM Snippets
REM To take everything (including root) back to absolute default: ICACLS Z: /reset /t  
REM To take all folders within root back to default (which may include changes made to root): ICACLS Z:\* /reset /t


:End
pause