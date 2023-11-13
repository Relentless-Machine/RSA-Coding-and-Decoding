@echo off
set /p a=需解密文件的文件名(如不在此文件夹，需输入文件完整路径；另外，拓展名只能为.rsa，已经设定完毕，无需输入):
set /p b=解密后文件的完整文件名(如不保存在此文件夹，需输入文件完整路径；另外，注意输入与加密前文件相同的拓展名):
set /p c=私钥的编号(如直接回车，则默认为initial):
if not defined c (set c=initial) 
openssl pkeyutl -decrypt -inkey rsa_private_key_%c%.pem -in %a%.rsa -out %b%
echo 执行完毕，请按任意键退出&pause>nul