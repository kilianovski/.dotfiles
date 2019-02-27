foreach($ext in Get-Content .\extensions.txt) {
    code --install-extension $ext
}