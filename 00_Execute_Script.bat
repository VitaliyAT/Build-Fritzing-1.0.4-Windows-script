@echo off
rem 00_Execute_Script.bat
rem http://www.neko.ne.jp/~freewing/software/build_fritzing_100_windows/
rem Copyright (c) 2023 FREE WING,Y.Sakamoto
echo %0
cd /d \00_fritzing

call 02_Download_Requirement_Files.bat > 02_Download_Requirement_Files.log & type 02_Download_Requirement_Files.log
call 03_Install_Qt_653.bat > 03_Install_Qt_653.log & type 03_Install_Qt_653.log
call 04_Install_Visual_Studio_Build_Tools_2019.bat > 04_Install_Visual_Studio_Build_Tools_2019.log & type 04_Install_Visual_Studio_Build_Tools_2019.log
call 05_Extract_Requirement_Files.bat > 05_Extract_Requirement_Files.log & type 05_Extract_Requirement_Files.log
call 06_Download_from_Git.bat > 06_Download_from_Git.log & type 06_Download_from_Git.log
call 07_Build_Library.bat > 07_Build_Library.log & type 07_Build_Library.log
call 08_Fix_Library_place_Fritzing.bat > 08_Fix_Library_place_Fritzing.log & type 08_Fix_Library_place_Fritzing.log

call 09_Download_Fritzing_Source_code.bat > 09_Download_Fritzing_Source_code.log & type 09_Download_Fritzing_Source_code.log
call 10_Download_Fritzing_Parts_Library.bat > 10_Download_Fritzing_Parts_Library.log & type 10_Download_Fritzing_Parts_Library.log
call 11_Fix_Fritzing_Source_code.bat > 11_Fix_Fritzing_Source_code.log & type 11_Fix_Fritzing_Source_code.log
call 12_Fix_Fritzing_Header_files.bat > 12_Fix_Fritzing_Header_files.log & type 12_Fix_Fritzing_Header_files.log

call 13_Build_phoenix_pro_with_Qt.bat > 13_Build_phoenix_pro_with_Qt.log & type 13_Build_phoenix_pro_with_Qt.log
call 15_Copy_Fritzing_Requirement_DLL_files.bat > 15_Copy_Fritzing_Requirement_DLL_files.log & type 15_Copy_Fritzing_Requirement_DLL_files.log
call 16_Copy_Qt_Requirement_DLL_files.bat > 16_Copy_Qt_Requirement_DLL_files.log & type 16_Copy_Qt_Requirement_DLL_files.log

call 17_1st_Build_Parts_DB_file.bat > 17_1st_Build_Parts_DB_file.log & type 17_1st_Build_Parts_DB_file.log
call 18_2nd_Launch_Fritzing.bat > 18_2nd_Launch_Fritzing.log & type 18_2nd_Launch_Fritzing.log

call 19_Organize_unnecessary_files.bat > 19_Organize_unnecessary_files.log & type 19_Organize_unnecessary_files.log
call 20_Create_Fritzing_zip_package.bat > 20_Create_Fritzing_zip_package.log & type 20_Create_Fritzing_zip_package.log

exit

