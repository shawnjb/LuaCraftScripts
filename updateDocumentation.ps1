$REPO_URL = "https://github.com/shawnjb/LuaCraft.git"
$FOLDER_PATH = "src/main/resources/lua/docs"
$TEMP_DIR = "$env:TEMP\LuaCraftDocs"
$DESTINATION_DIR = "$PSScriptRoot\docs"

if (Test-Path -Path $DESTINATION_DIR) {
    Write-Host "Removing existing docs folder..."
    Remove-Item -Recurse -Force $DESTINATION_DIR
}

if (Test-Path -Path $TEMP_DIR) {
    Remove-Item -Recurse -Force -Path $TEMP_DIR
}

git clone --depth 1 --filter=blob:none --sparse $REPO_URL $TEMP_DIR
Set-Location -Path $TEMP_DIR
git sparse-checkout init
git sparse-checkout set $FOLDER_PATH

Copy-Item -Recurse -Force "$TEMP_DIR\$FOLDER_PATH" $DESTINATION_DIR
Set-Location -Path $PSScriptRoot
Remove-Item -Recurse -Force $TEMP_DIR

Write-Host "Lua docs have been downloaded to $DESTINATION_DIR"
