@echo off
set /p a=RSA密钥长度(推荐长度:16384，如直接回车，则默认长度为16384):
set /p b=密钥的编号(例：输入1，生成rsa_private_key_1.pem，rsa_public_key_1.pem；如不进行编号，请直接按回车，默认生成并替代原有的密钥文件，即rsa_private_key_initial.pem，rsa_public_key_initial.pem):
if not defined a (set a=16384)
if not defined b (set b=initial) 
echo 生成密钥中，请稍候……
openssl genrsa -out rsa_private_key_%b%.pem %a%
openssl rsa -in rsa_private_key_%b%.pem -pubout -out rsa_public_key_%b%.pem
echo 执行完毕，请按任意键退出&pause>nul