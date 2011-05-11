@echo off
set SAMPLE=%~dp0..
set AKKA_HOME=%SAMPLE%\..\..\..\..
set JAVA_OPTS=-Xms1536M -Xmx1536M -Xss1M -XX:MaxPermSize=256M -XX:+UseParallelGC
set AKKA_CLASSPATH=%AKKA_HOME%\lib\scala-library.jar;%AKKA_HOME%\lib\akka\*
set SAMPLE_CLASSPATH=%AKKA_CLASSPATH%;%SAMPLE%\lib\*;%SAMPLE%\config

java %JAVA_OPTS% -cp "%SAMPLE_CLASSPATH%" -Dakka.home="%SAMPLE%" akka.kernel.Main
