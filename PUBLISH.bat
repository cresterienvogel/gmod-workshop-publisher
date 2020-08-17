@echo off

title Addon Publisher

"required/gmad.exe" create -folder "addon" -out "addon.gma"

if exist "addon.gma" (
	"required/gmpublish.exe" create -addon "addon.gma" -icon "addon.jpg"
)

if exist "addon.gma" (
	del /Q "addon.gma"
)

pause