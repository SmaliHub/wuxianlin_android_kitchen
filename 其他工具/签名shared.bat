@echo off
TITLE APK简易工具箱
color 0a
if (%1)==() (
	echo 操作错误&&echo.
	pause
	goto help
)
echo.
echo.
echo              J M M J      EE  f M M J     EE  f M M J         J M M J 
echo            A         AA   EE p        AA  EE p       AA     A         AA 
echo           E          AAA  EE         AAA  EE         AAA   E          AAA
echo            Y         AA   EEY        AA   EEY        AA     Y         AA
echo              L M M J      EE  L M M J     EE  L M M J         L M M J
echo                           EE              EE
echo                           EE              EE
echo.
echo wuxianlin制作
echo http://bbs.myoppo.com
echo OPPO社区-玩机评测组 专用
echo 正在签名%~dp1%~nx1...
goto sign
:sign
java -jar "%~dp0\tools\signapk.jar" .\tools\shared.x509.pem .\tools\shared.pk8 %1 %~n1_signed%~x1
goto end
:end
echo.
echo 签名%~nx1完成
echo.已保存至%~dp1%~n1_signed%~x1
echo 谢谢使用！
pause
exit
:help
echo.
echo.本工具使用方法
echo.
echo.将您要签名的apk直接拖到本bat文件
echo.
echo.不会使用本工具请联系作者：wuxianlin
echo.
echo.QQ:571716775
echo.
pause
exit