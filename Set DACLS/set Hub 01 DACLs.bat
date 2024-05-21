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
ICACLS Z: /save %LogFilePrefix%SetHub01-before.icacls
@ECHO.
@ECHO.
@ECHO.


@ECHO.
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
@ECHO --  Set read permissions on required folders within Librios data folder for web user                                                      --
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
ICACLS "Z:\Databases\Hub 01\Data\connections" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\filters" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\postprocessors" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\projectresources" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\release" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\reports" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\spell" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
ICACLS "Z:\Databases\Hub 01\Data\xsl" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(RX) /t
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------

@ECHO.
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
@ECHO --  Set full permissions on required folders within Librios data folder for web user                                                      --
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
ICACLS "Z:\Databases\Hub 01\Data\import" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\logfiles" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\markers" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\media" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\POD" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\search" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\SocialDRM" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\templates" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\validation" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Databases\Hub 01\Data\versions" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------

@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------
@ECHO ------------------------- Set read permissions on whole website for Librios back office users ------------------------------------------
@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------
ICACLS "Z:\Websites\Hub 01\*" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(RX) /t
@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------


@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------
@ECHO ----------------------- Set full permissions on required folders within website folder for Librios back office users -------------------------
@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------
ICACLS "Z:\Websites\Hub 01\Apps" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\config" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\DBResources" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Display" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Documents" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Icals" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Icons" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Media" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Resources" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Temp" /grant "Brooklands - Platform-A - Librios Studio Users":(OI)(CI)(F) /t
@ECHO ----------------------------------------------------------------------------------------------------------------------------------------------


@ECHO.
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
@ECHO --  Grant web user full permissions to required website folders.                                                                        --
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
ICACLS "Z:\Websites\Hub 01\*" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F)
ICACLS "Z:\Websites\Hub 01\DBResources" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Display" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Documents" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\icals" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Icons" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Media" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
ICACLS "Z:\Websites\Hub 01\Temp" /grant "brooklands-librioshub01web@librios.net":(OI)(CI)(F) /t
@ECHO --------------------------------------------------------------------------------------------------------------------------------------------
@ECHO.


@ECHO.
@ECHO.
@ECHO.
@ECHO Save after.icacls
ICACLS Z: /save %LogFilePrefix%SetHub01-after.icacls
NET USE Z: /delete



pause