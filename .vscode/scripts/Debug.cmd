cd ..\..\FarmList
set SourcePath=%CD%
set TargetPath="F:\World of Warcraft\_classic_\Interface\AddOns\FarmList"
mkdir %TargetPath%
xcopy /Y %SourcePath%\FarmList.lua %TargetPath%\FarmList\FarmList.lua
xcopy /Y %SourcePath%\FarmList.toc %TargetPath%\FarmList\FarmList.toc
xcopy /Y %SourcePath%\FarmList.xml %TargetPath%\FarmList\FarmList.xml
%TargetPath%\..\..\..\WoWClassic.exe


