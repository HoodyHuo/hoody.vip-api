echo off

set version=%1
if "%version%"==""   goto  missArg



echo =--------------��ʼ���jar ��������-----------------
call mvnw package -DskipTests

echo =--------------��ʼ����docker ����  vip-hoody-site-api:%version%--------------

call docker build -t vip-hoody-site-api:%version% .
goto end

:missArg
echo ���ڲ������ϰ汾�� eg: build-docker-image.bat 1.3
goto end

:end