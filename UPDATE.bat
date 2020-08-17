@echo off

title Addon Updater

"required/gmad.exe" create -folder "addon" -out "addon.gma"

if exist "addon.gma" (
	"required/gmpublish.exe" update -addon "addon.gma" -id "Addon Workshop ID"
)

if exist "addon.gma" (
	del /Q "addon.gma"
)

pause