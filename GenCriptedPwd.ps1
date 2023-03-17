Start-Process -NoNewWindow -FilePath "PBAutoBuild210.exe" -ArgumentList "/p", $args[0] -RedirectStandardOutput "./tmp.pwd"
