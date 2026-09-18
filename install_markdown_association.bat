@echo off
set "APPDIR=%~dp0"
reg add "HKCU\Software\Classes\.md" /ve /d "MarkdownViewerFile" /f
reg add "HKCU\Software\Classes\MarkdownViewerFile" /ve /d "Markdown document" /f
reg add "HKCU\Software\Classes\MarkdownViewerFile\DefaultIcon" /ve /d "%APPDIR%markdown.ico" /f
reg add "HKCU\Software\Classes\MarkdownViewerFile\shell\open" /ve /d "Open with Markdown Viewer" /f
reg add "HKCU\Software\Classes\MarkdownViewerFile\shell\open\command" /ve /d "\"%APPDIR%myCode.exe\" \"%%1\"" /f
echo.
echo Markdown association installed for the current user.
echo You can now double-click .md files.
pause
