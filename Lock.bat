@echo off 
set /p a=������ļ��������ļ���(����չ�����粻�ڴ��ļ��У��������ļ�����·��):
set /p b=���ܺ��ļ����ļ���(�粻�����ڴ��ļ��У��������ļ�����·�������⣬��չ���Ѿ��趨Ϊ.rsa����������):
set /p c=��Կ�ı��(��ֱ�ӻس�����Ĭ��Ϊinitial):
if not defined c (set c=initial)
openssl pkeyutl -encrypt -inkey rsa_public_key_%c%.pem -pubin -in %a% -out %b%.rsa
echo ִ����ϣ��밴������˳�&pause>nul