cd ..\..\FarmList
set SourcePath=%CD%
set TargetPath="F:\World of Warcraft\_classic_\Interface\AddOns\"
mkdir %TargetPath%\FarmList
xcopy /S /E /Y %SourcePath%\* %TargetPath%\FarmList\*
%TargetPath%\..\..\WoWClassic.exe


