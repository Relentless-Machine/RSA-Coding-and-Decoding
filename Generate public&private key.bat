@echo off
set /p a=RSA��Կ����(�Ƽ�����:16384����ֱ�ӻس�����Ĭ�ϳ���Ϊ16384):
set /p b=��Կ�ı��(��������1������rsa_private_key_1.pem��rsa_public_key_1.pem���粻���б�ţ���ֱ�Ӱ��س���Ĭ�����ɲ����ԭ�е���Կ�ļ�����rsa_private_key_initial.pem��rsa_public_key_initial.pem):
if not defined a (set a=16384)
if not defined b (set b=initial) 
echo ������Կ�У����Ժ򡭡�
openssl genrsa -out rsa_private_key_%b%.pem %a%
openssl rsa -in rsa_private_key_%b%.pem -pubout -out rsa_public_key_%b%.pem
echo ִ����ϣ��밴������˳�&pause>nul