@echo == ApplyImage.bat ==
@echo.
@echo == These commands deploy a specified Windows
@echo    image file to the Windows partition, and configure
@echo    the system partition.
@echo.
@echo    Usage:   ApplyImage WimFileName 
@echo    Example: ApplyImage E:\WindowsWithFrench.wim ==
@echo.
@pause
@rem Use this menu to choose standard or Compact OS deployment 
@SET /P M=Deploy as Compact OS? (Y or N):
if %M%.==Y. set COMPACTOS=True
if %M%.==y. set COMPACTOS=True
@echo.
rem == Apply the image to the Windows partition == 
md w:\scratchdir
if not %COMPACTOS%.==True. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\ /scratchdir:w:\scratchdir
if %COMPACTOS%.==True. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\ /compact /scratchdir:w:\scratchdir
@echo.
rem @echo == Apply the image to the Windows partition ==
rem dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\
@echo.
@echo == Copy boot files to the System partition ==
W:\Windows\System32\bcdboot W:\Windows /s S:
@echo.
@echo == Copy the Windows RE image to the
@echo    Windows RE Tools partition ==
md R:\Recovery\WindowsRE
xcopy /h W:\Windows\System32\Recovery\Winre.wim R:\Recovery\WindowsRE\
@echo.
@echo == Register the location of the recovery tools ==
W:\Windows\System32\Reagentc /Setreimage /Path R:\Recovery\WindowsRE /Target W:\Windows
@echo == Note: Windows RE may appear as Disabled, this is OK.
pause
W:\Windows\System32\Reagentc /info /Target W:\Windows

pause
