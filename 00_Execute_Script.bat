@echo off
rem 00_Execute_Script.bat
rem http://www.neko.ne.jp/~freewing/software/build_fritzing_100_windows/
rem Copyright (c) 2023 FREE WING,Y.Sakamoto
echo %0
cd /d \00_fritzing

start /wait 02_Download_Requirement_Files.bat > 02_Download_Requirement_Files.log
start /wait 03_Install_Qt_653.bat > 03_Install_Qt_653.log
start /wait 04_Install_Visual_Studio_Build_Tools_2019.bat > 04_Install_Visual_Studio_Build_Tools_2019.log
start /wait 05_Extract_Requirement_Files.bat > 05_Extract_Requirement_Files.log
start /wait 06_Download_from_Git.bat > 06_Download_from_Git.log
start /wait 07_Build_Library.bat > 07_Build_Library.log
start /wait 08_Fix_Library_place_Fritzing.bat > 08_Fix_Library_place_Fritzing.log

start /wait 09_Download_Fritzing_Source_code.bat > 09_Download_Fritzing_Source_code.log
start /wait 10_Download_Fritzing_Parts_Library.bat > 10_Download_Fritzing_Parts_Library.log
start /wait 11_Fix_Fritzing_Source_code.bat > 11_Fix_Fritzing_Source_code.log
start /wait 12_Fix_Fritzing_Header_files.bat > 12_Fix_Fritzing_Header_files.log

start /wait 13_Build_phoenix_pro_with_Qt.bat > 13_Build_phoenix_pro_with_Qt.log
start /wait 15_Copy_Fritzing_Requirement_DLL_files.bat > 15_Copy_Fritzing_Requirement_DLL_files.log
start /wait 16_Copy_Qt_Requirement_DLL_files.bat > 16_Copy_Qt_Requirement_DLL_files.log

start /wait 17_1st_Build_Parts_DB_file.bat > 17_1st_Build_Parts_DB_file.log
start /wait 18_2nd_Launch_Fritzing.bat > 18_2nd_Launch_Fritzing.log

start /wait 19_Organize_unnecessary_files.bat > 19_Organize_unnecessary_files.log
start /wait 20_Create_Fritzing_zip_package.bat > 20_Create_Fritzing_zip_package.log

exit

