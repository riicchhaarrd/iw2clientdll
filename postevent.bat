@echo off

if %username% == R (
	cd Release
	upx.exe mss32.dll
	cp mss32.dll "C:\Program Files (x86)\Steam\steamapps\common\Call of Duty 2\mss32.dll"
	cp mss32.pdb "C:\Program Files (x86)\Steam\steamapps\common\Call of Duty 2\mss32.pdb"
	
	echo|set /p="mss32.dll:" > deployment.txt
	certutil -hashfile "mss32.dll" SHA256 | findstr /V ":" >> deployment.txt
)

if %username% == kung (
	cd Release
	copy mss32.dll C:\games\cod2_1_3_clean_for_mapping
)
