@echo off
set /p a=������ļ����ļ���(�粻�ڴ��ļ��У��������ļ�����·�������⣬��չ��ֻ��Ϊ.rsa���Ѿ��趨��ϣ���������):
set /p b=���ܺ��ļ��������ļ���(�粻�����ڴ��ļ��У��������ļ�����·�������⣬ע�����������ǰ�ļ���ͬ����չ��):
set /p c=˽Կ�ı��(��ֱ�ӻس�����Ĭ��Ϊinitial):
if not defined c (set c=initial) 
openssl pkeyutl -decrypt -inkey rsa_private_key_%c%.pem -in %a%.rsa -out %b%
echo ִ����ϣ��밴������˳�&pause>nul