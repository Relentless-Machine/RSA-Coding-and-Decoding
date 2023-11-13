@echo off 
set /p a=需加密文件的完整文件名(含拓展名，如不在此文件夹，需输入文件完整路径):
set /p b=加密后文件的文件名(如不保存在此文件夹，需输入文件完整路径；另外，拓展名已经设定为.rsa，无需输入):
set /p c=公钥的编号(如直接回车，则默认为initial):
if not defined c (set c=initial)
openssl pkeyutl -encrypt -inkey rsa_public_key_%c%.pem -pubin -in %a% -out %b%.rsa
echo 执行完毕，请按任意键退出&pause>nul