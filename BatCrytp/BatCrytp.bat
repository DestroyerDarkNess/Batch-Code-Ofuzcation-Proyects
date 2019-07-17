@echo off
title batcrypt v0.1
color a
Rem Bat_Crypt=batcrypt
Rem BatOfuser v 2.1
Rem Ofusca tu codigo Batch y Ejecutalo
Rem script creado por Aincrad / S4Lsalsoft
Rem funciona por linea de comandos

IF ["%~1"]==["-e"] goto o
IF ["%~1"]==["-E"] goto o
IF ["%~1"]==["-d"] goto d
IF ["%~1"]==["-D"] goto d
IF ["%~1"]==["-help"] goto help
IF ["%~1"]==["-HELP"] goto help
echo ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo ³   Esta herramienta cifra un codigo de algun proyecto Batch    ³
echo ³   Para luego ejecutarlo.                                      ³
echo ³                                                               ³
echo ³   Funcionamiento del script:                                  ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ³   batcrypt -e "Ubicacion del bat" cifra el Bat                ³
echo ³                                                               ³
echo ³   Ejemplo:                                                    ³
echo ³   batcrypt -e "%userprofile%\Desktop\pto.bat"                 ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ        
echo ³   batcrypt -d "Ubicacion del bat" descifra un batch           ³
echo ³                                                               ³
echo ³   Ejemplo:                                                    ³  
echo ³   batcrypt -d "%userprofile%\Desktop\pto.bat"                 ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo ³                                                               ³
echo ³   Esta version tiene un bug, Porfavor no cifrar               ³ 
echo ³   palabras que esten dentro de el simbolo %% .                ³
echo ³                                                               ³
echo ³  PARA MAS INFORMACION:                                        ³
echo ³                                                               ³
echo ³           batcrypt -help                                      ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ 
pause>NUL 
goto mas
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:Charlist
Set "Alpha=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
Set "Numeric=0123456789"
Set "Special=\|@#~!$%&/()=?<>;,.-_+*[]{}`'^^":
Set "Special_UTF8=…‚¡¢£…ŠÖ•—µ‚Öàé·ÔÞãëŽ‰‹”šŽÓØ™š¤¥¦§ú¨­ï"
Rem Special_UTF8= áéíóú àèìòù ÁÉÍÓÚ ÀÈÌÒÙ äëïöü ÄËÏÖÜ ñ Ñ ª º · ¿ ¡ '
:o
set archivo="%~2"
cls
:sal
set p=set
set t=var
set "resultado=%resultado:"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz%" "
echo @echo off >> "cifrado.bat"
echo %p% %t%^=%resultado% >> "cifrado.bat"
goto :Ofuscador
 
:::::::::::::::::
:Ofuscador
:::::::::::::::::
 
:Lineas
Set Linea=0
For /F "Tokens=*" %%a in ('Type %archivo% ^| Find /V /C ""') do (Set Total=%%a)
 
:Leer_Ofuscador
If "%linea%" EQU "%total%" (Goto :Fin_Ofuscador)
 
For /F "Tokens=*" %%a in ('Type %archivo% ^| MORE +%Linea%') do (
    Echo: Ofuscando: "%%a"
    Set /A Linea+=1
    Set "String=%%a"
    If not defined string (Goto :Leer_Ofuscador)
    Echo %%a>"%TEMP%\String.tmp"
    FOR %%? IN (%TEMP%\String.tmp) DO ( SET /A Longitud=%%~z? - 2 )
    Goto :Ofuscar
)
 
 
:Ofuscar
 
 
If "%Count%" EQU "%Longitud%" (
    call :Write_Ofuscador
    Goto :Leer_Ofuscador)
 
::Comilladoble
Set "String=%String:"=€%"& rem "
 
::Espacio
If "%String:~0,1%" EQU " " (Set "New_String=%New_String% ")
 
::Alpha
If "%String:~0,1%" EQU "a" (Set "New_String=%New_String%%%var:~27,1%%")
If "%String:~0,1%" EQU "b" (Set "New_String=%New_String%%%var:~28,1%%")
If "%String:~0,1%" EQU "c" (Set "New_String=%New_String%%%var:~29,1%%")
If "%String:~0,1%" EQU "d" (Set "New_String=%New_String%%%var:~30,1%%")
If "%String:~0,1%" EQU "e" (Set "New_String=%New_String%%%var:~31,1%%")
If "%String:~0,1%" EQU "f" (Set "New_String=%New_String%%%var:~32,1%%")
If "%String:~0,1%" EQU "g" (Set "New_String=%New_String%%%var:~33,1%%")
If "%String:~0,1%" EQU "h" (Set "New_String=%New_String%%%var:~34,1%%")
If "%String:~0,1%" EQU "i" (Set "New_String=%New_String%%%var:~35,1%%")
If "%String:~0,1%" EQU "j" (Set "New_String=%New_String%%%var:~36,1%%")
If "%String:~0,1%" EQU "k" (Set "New_String=%New_String%%%var:~37,1%%")
If "%String:~0,1%" EQU "l" (Set "New_String=%New_String%%%var:~38,1%%")
If "%String:~0,1%" EQU "m" (Set "New_String=%New_String%%%var:~39,1%%")
If "%String:~0,1%" EQU "n" (Set "New_String=%New_String%%%var:~40,1%%")
If "%String:~0,1%" EQU "o" (Set "New_String=%New_String%%%var:~41,1%%")
If "%String:~0,1%" EQU "p" (Set "New_String=%New_String%%%var:~42,1%%")
If "%String:~0,1%" EQU "q" (Set "New_String=%New_String%%%var:~43,1%%")
If "%String:~0,1%" EQU "r" (Set "New_String=%New_String%%%var:~44,1%%")
If "%String:~0,1%" EQU "s" (Set "New_String=%New_String%%%var:~45,1%%")
If "%String:~0,1%" EQU "t" (Set "New_String=%New_String%%%var:~46,1%%")
If "%String:~0,1%" EQU "u" (Set "New_String=%New_String%%%var:~47,1%%")
If "%String:~0,1%" EQU "v" (Set "New_String=%New_String%%%var:~48,1%%")
If "%String:~0,1%" EQU "w" (Set "New_String=%New_String%%%var:~49,1%%")
If "%String:~0,1%" EQU "x" (Set "New_String=%New_String%%%var:~50,1%%")
If "%String:~0,1%" EQU "y" (Set "New_String=%New_String%%%var:~51,1%%")
If "%String:~0,1%" EQU "z" (Set "New_String=%New_String%%%var:~52,1%%")
If "%String:~0,1%" EQU "A" (Set "New_String=%New_String%%%var:~1,1%%")
If "%String:~0,1%" EQU "B" (Set "New_String=%New_String%%%var:~2,1%%")
If "%String:~0,1%" EQU "C" (Set "New_String=%New_String%%%var:~3,1%%")
If "%String:~0,1%" EQU "D" (Set "New_String=%New_String%%%var:~4,1%%")
If "%String:~0,1%" EQU "E" (Set "New_String=%New_String%%%var:~5,1%%")
If "%String:~0,1%" EQU "F" (Set "New_String=%New_String%%%var:~6,1%%")
If "%String:~0,1%" EQU "G" (Set "New_String=%New_String%%%var:~7,1%%")
If "%String:~0,1%" EQU "H" (Set "New_String=%New_String%%%var:~8,1%%")
If "%String:~0,1%" EQU "I" (Set "New_String=%New_String%%%var:~9,1%%")
If "%String:~0,1%" EQU "J" (Set "New_String=%New_String%%%var:~10,1%%")
If "%String:~0,1%" EQU "K" (Set "New_String=%New_String%%%var:~11,1%%")
If "%String:~0,1%" EQU "L" (Set "New_String=%New_String%%%var:~12,1%%")
If "%String:~0,1%" EQU "M" (Set "New_String=%New_String%%%var:~13,1%%")
If "%String:~0,1%" EQU "N" (Set "New_String=%New_String%%%var:~14,1%%")
If "%String:~0,1%" EQU "O" (Set "New_String=%New_String%%%var:~15,1%%")
If "%String:~0,1%" EQU "P" (Set "New_String=%New_String%%%var:~16,1%%")
If "%String:~0,1%" EQU "Q" (Set "New_String=%New_String%%%var:~17,1%%")
If "%String:~0,1%" EQU "R" (Set "New_String=%New_String%%%var:~18,1%%")
If "%String:~0,1%" EQU "S" (Set "New_String=%New_String%%%var:~19,1%%")
If "%String:~0,1%" EQU "T" (Set "New_String=%New_String%%%var:~20,1%%")
If "%String:~0,1%" EQU "U" (Set "New_String=%New_String%%%var:~21,1%%")
If "%String:~0,1%" EQU "V" (Set "New_String=%New_String%%%var:~22,1%%")
If "%String:~0,1%" EQU "W" (Set "New_String=%New_String%%%var:~23,1%%")
If "%String:~0,1%" EQU "X" (Set "New_String=%New_String%%%var:~24,1%%")
If "%String:~0,1%" EQU "Y" (Set "New_String=%New_String%%%var:~25,1%%")
If "%String:~0,1%" EQU "Z" (Set "New_String=%New_String%%%var:~26,1%%")
 
::Numeric
If "%String:~0,1%" EQU "0" (Set "New_String=%New_String%0")
If "%String:~0,1%" EQU "1" (Set "New_String=%New_String%1")
If "%String:~0,1%" EQU "2" (Set "New_String=%New_String%2")
If "%String:~0,1%" EQU "3" (Set "New_String=%New_String%3")
If "%String:~0,1%" EQU "4" (Set "New_String=%New_String%4")
If "%String:~0,1%" EQU "5" (Set "New_String=%New_String%5")
If "%String:~0,1%" EQU "6" (Set "New_String=%New_String%6")
If "%String:~0,1%" EQU "7" (Set "New_String=%New_String%7")
If "%String:~0,1%" EQU "8" (Set "New_String=%New_String%8")
If "%String:~0,1%" EQU "9" (Set "New_String=%New_String%9")
 
::Special
If "%String:~0,1%" EQU "á" (Set "New_String=%New_String%^^á")
If "%String:~0,1%" EQU "é" (Set "New_String=%New_String%^^é")
If "%String:~0,1%" EQU "í" (Set "New_String=%New_String%^^í")
If "%String:~0,1%" EQU "ó" (Set "New_String=%New_String%^^ó")
If "%String:~0,1%" EQU "ú" (Set "New_String=%New_String%^^ú")
If "%String:~0,1%" EQU "à" (Set "New_String=%New_String%^^à")
If "%String:~0,1%" EQU "è" (Set "New_String=%New_String%^^è")
If "%String:~0,1%" EQU "ì" (Set "New_String=%New_String%^^ì")
If "%String:~0,1%" EQU "ò" (Set "New_String=%New_String%^^ò")
If "%String:~0,1%" EQU "ù" (Set "New_String=%New_String%^^ù")
If "%String:~0,1%" EQU "Á" (Set "New_String=%New_String%Á")
If "%String:~0,1%" EQU "É" (Set "New_String=%New_String%É")
If "%String:~0,1%" EQU "Í" (Set "New_String=%New_String%Í")
If "%String:~0,1%" EQU "Ó" (Set "New_String=%New_String%^^Ó")
If "%String:~0,1%" EQU "Ú" (Set "New_String=%New_String%^Ú")
If "%String:~0,1%" EQU "À" (Set "New_String=%New_String%^À")
If "%String:~0,1%" EQU "È" (Set "New_String=%New_String%^È")
If "%String:~0,1%" EQU "Ì" (Set "New_String=%New_String%^^Ì")
If "%String:~0,1%" EQU "Ò" (Set "New_String=%New_String%^^Ò")
If "%String:~0,1%" EQU "Ù" (Set "New_String=%New_String%^^Ù")
If "%String:~0,1%" EQU "ä" (Set "New_String=%New_String%^^ä")
If "%String:~0,1%" EQU "ë" (Set "New_String=%New_String%^^ë")
If "%String:~0,1%" EQU "ï" (Set "New_String=%New_String%^^ï")
If "%String:~0,1%" EQU "ö" (Set "New_String=%New_String%^^ö")
If "%String:~0,1%" EQU "ü" (Set "New_String=%New_String%^^ü")
If "%String:~0,1%" EQU "Ä" (Set "New_String=%New_String%^Ä")
If "%String:~0,1%" EQU "Ë" (Set "New_String=%New_String%^^Ë")
If "%String:~0,1%" EQU "Ï" (Set "New_String=%New_String%^^Ï")
If "%String:~0,1%" EQU "Ö" (Set "New_String=%New_String%^^Ö")
If "%String:~0,1%" EQU "Ü" (Set "New_String=%New_String%^^Ü")
If "%String:~0,1%" EQU "ñ" (Set "New_String=%New_String%^^ñ")
If "%String:~0,1%" EQU "Ñ" (Set "New_String=%New_String%^^Ñ")
If "%String:~0,1%" EQU "ª" (Set "New_String=%New_String%^^ª")
If "%String:~0,1%" EQU "º" (Set "New_String=%New_String%º")
If "%String:~0,1%" EQU "¿" (Set "New_String=%New_String%¿")
If "%String:~0,1%" EQU "´" (Set "New_String=%New_String%^^´")
 
If "%String:~0,1%" EQU "€" (Set "New_String=%New_String%€")
If "%String:~0,1%" EQU "\" (Set "New_String=%New_String%^\")
If "%String:~0,1%" EQU "|" (Set "New_String=%New_String%^|")
If "%String:~0,1%" EQU "@" (Set "New_String=%New_String%@")
If "%String:~0,1%" EQU "#" (Set "New_String=%New_String%#")
If "%String:~0,1%" EQU "~" (Set "New_String=%New_String%^~")
If "%String:~0,1%" EQU "!" (Set "New_String=%New_String%^!")
If "%String:~0,1%" EQU "$" (Set "New_String=%New_String%$")
If "%String:~0,1%" EQU "%%" (Set "New_String=%New_String%%%")
If "%String:~0,1%" EQU "&" (Set "New_String=%New_String%^&")
If "%String:~0,1%" EQU "/" (Set "New_String=%New_String%/")
If "%String:~0,1%" EQU "(" (Set "New_String=%New_String%(")
If "%String:~0,1%" EQU ")" (Set "New_String=%New_String%)")
If "%String:~0,1%" EQU "=" (Set "New_String=%New_String%=")
If "%String:~0,1%" EQU "?" (Set "New_String=%New_String%?")
If "%String:~0,1%" EQU "<" (Set "New_String=%New_String%^<")
If "%String:~0,1%" EQU ">" (Set "New_String=%New_String%^>")
If "%String:~0,1%" EQU ";" (Set "New_String=%New_String%;")
If "%String:~0,1%" EQU "," (Set "New_String=%New_String%,")
If "%String:~0,1%" EQU "." (Set "New_String=%New_String%.")
If "%String:~0,1%" EQU "-" (Set "New_String=%New_String%-")
If "%String:~0,1%" EQU "_" (Set "New_String=%New_String%_")
If "%String:~0,1%" EQU "+" (Set "New_String=%New_String%+")
If "%String:~0,1%" EQU "*" (Set "New_String=%New_String%*")
If "%String:~0,1%" EQU "[" (Set "New_String=%New_String%^[")
If "%String:~0,1%" EQU "]" (Set "New_String=%New_String%^]")
If "%String:~0,1%" EQU "{" (Set "New_String=%New_String%{")
If "%String:~0,1%" EQU "}" (Set "New_String=%New_String%}")
If "%String:~0,1%" EQU "`" (Set "New_String=%New_String%`")
If "%String:~0,1%" EQU "'" (Set "New_String=%New_String%'")
If "%String:~0,1%" EQU "^" (Set "New_String=%New_String%^^^")
If "%String:~0,1%" EQU ":" (Set "New_String=%New_String%:")
 
Set "String=%String:~1%"
Set /A Count+=1
Goto :Ofuscar
 
:Write_Ofuscador
Set "New_String=%New_String:€="%"& rem "
Echo %New_String%>>"cifrado.bat"
If NOT Errorlevel 0 (Echo ERROR & pause & Exit /B 1)
Set "New_String="
Set "Count="
Goto :EOF
 
:Fin_Ofuscador
Echo REM By Salvafor F. Krilewski  >> "cifrado.bat"
Del /Q "%TEMP%\String.tmp"
Cls
echo Fin | More
pause
Exit
 
 
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:d
set archivo="%~2"
cls
:Lineas
Set Linea=0
For /F "Tokens=*" %%a in ('Type %Archivo% ^| Find /V /C ""') do (Set Total=%%a)
 
 
:Leer_Desofuscador
For /F "Tokens=*" %%a in ('Type %Archivo% ^| MORE /E +%Linea%') do (
    Set /A Linea+=1
    Set "String=%%a"
    Goto Desofuscar
)
 
:Desofuscar
 
::Alpha
Set "String=%String:var:~27,1=a%"
Set "String=%String:var:~28,1=b%"
Set "String=%String:var:~29,1=c%"
Set "String=%String:var:~30,1=d%"
Set "String=%String:var:~31,1=e%"
Set "String=%String:var:~32,1=f%"
Set "String=%String:var:~33,1=g%"
Set "String=%String:var:~34,1=h%"
Set "String=%String:var:~35,1=i%"
Set "String=%String:var:~36,1=j%"
Set "String=%String:var:~37,1=k%"
Set "String=%String:var:~38,1=l%"
Set "String=%String:var:~39,1=m%"
Set "String=%String:var:~40,1=n%"
Set "String=%String:var:~41,1=o%"
Set "String=%String:var:~42,1=p%"
Set "String=%String:var:~43,1=q%"
Set "String=%String:var:~44,1=r%"
Set "String=%String:var:~45,1=s%"
Set "String=%String:var:~46,1=t%"
Set "String=%String:var:~47,1=u%"
Set "String=%String:var:~48,1=v%"
Set "String=%String:var:~49,1=w%"
Set "String=%String:var:~50,1=x%"
Set "String=%String:var:~51,1=y%"
Set "String=%String:var:~52,1=z%"
Set "String=%String:var:~1,1=A%"
Set "String=%String:var:~2,1=B%"
Set "String=%String:var:~3,1=C%"
Set "String=%String:var:~4,1=D%"
Set "String=%String:var:~5,1=E%"
Set "String=%String:var:~6,1=F%"
Set "String=%String:var:~7,1=G%"
Set "String=%String:var:~8,1=H%"
Set "String=%String:var:~9,1=I%"
Set "String=%String:var:~10,1=J%"
Set "String=%String:var:~11,1=K%"
Set "String=%String:var:~12,1=L%"
Set "String=%String:var:~13,1=M%"
Set "String=%String:var:~14,1=N%"
Set "String=%String:var:~15,1=O%"
Set "String=%String:var:~16,1=P%"
Set "String=%String:var:~17,1=Q%"
Set "String=%String:var:~18,1=R%"
Set "String=%String:var:~19,1=S%"
Set "String=%String:var:~20,1=T%"
Set "String=%String:var:~21,1=U%"
Set "String=%String:var:~22,1=V%"
Set "String=%String:var:~23,1=W%"
Set "String=%String:var:~24,1=X%"
Set "String=%String:var:~25,1=Y%"
Set "String=%String:var:~26,1=Z%"
 
::Numeric
Set "String=%String:0=0%"
Set "String=%String:1=1%"
Set "String=%String:2=2%"
Set "String=%String:3=3%"
Set "String=%String:4=4%"
Set "String=%String:5=5%"
Set "String=%String:6=6%"
Set "String=%String:7=7%"
Set "String=%String:8=8%"
Set "String=%String:9=9%"
 
::Special_UTF8
Set "String=%String:Special_UTF8:~0,1=…%"
Set "String=%String:Special_UTF8:~1,1=‚%"
Set "String=%String:Special_UTF8:~2,1=¡%"
Set "String=%String:Special_UTF8:~3,1=¢%"
Set "String=%String:Special_UTF8:~4,1=£%"
Set "String=%String:Special_UTF8:~5,1=…%"
Set "String=%String:Special_UTF8:~6,1=Š%"
Set "String=%String:Special_UTF8:~7,1=Ö%"
Set "String=%String:Special_UTF8:~8,1=•%"
Set "String=%String:Special_UTF8:~9,1=—%"
Set "String=%String:Special_UTF8:~10,1=µ%"
Set "String=%String:Special_UTF8:~11,1=‚%"
Set "String=%String:Special_UTF8:~12,1=Ö%"
Set "String=%String:Special_UTF8:~13,1=à%"
Set "String=%String:Special_UTF8:~14,1=é%"
Set "String=%String:Special_UTF8:~15,1=·%"
Set "String=%String:Special_UTF8:~16,1=Ô%"
Set "String=%String:Special_UTF8:~17,1=Þ%"
Set "String=%String:Special_UTF8:~18,1=ã%"
Set "String=%String:Special_UTF8:~19,1=ë%"
Set "String=%String:Special_UTF8:~20,1=Ž%"
Set "String=%String:Special_UTF8:~21,1=‰%"
Set "String=%String:Special_UTF8:~22,1=‹%"
Set "String=%String:Special_UTF8:~23,1=”%"
Set "String=%String:Special_UTF8:~24,1=š%"
Set "String=%String:Special_UTF8:~25,1=Ž%"
Set "String=%String:Special_UTF8:~26,1=Ó%"
Set "String=%String:Special_UTF8:~27,1=Ø%"
Set "String=%String:Special_UTF8:~28,1=™%"
Set "String=%String:Special_UTF8:~29,1=š%"
Set "String=%String:Special_UTF8:~30,1=¤%"
Set "String=%String:Special_UTF8:~31,1=¥%"
Set "String=%String:Special_UTF8:~32,1=^ª%"
Set "String=%String:Special_UTF8:~33,1=§%"
Set "String=%String:Special_UTF8:~34,1=^·%"
Set "String=%String:Special_UTF8:~35,1=¿%"
Set "String=%String:Special_UTF8:~36,1=­%"
Set "String=%String:Special_UTF8:~37,1=ï%"
 
::Special
Set "String=%String:Special:~0,1=^\%"
Set "String=%String:Special:~1,1=^|%"
Set "String=%String:Special:~2,1=@%"
Set "String=%String:Special:~3,1=#%"
Set "String=%String:Special:~4,1=^~%"
Set "String=%String:Special:~5,1=^^^!%"
Set "String=%String:Special:~6,1=$%"
Set "String=%String:Special:~7,1=€%"
Set "String=%String:Special:~8,1=^&%"
Set "String=%String:Special:~9,1=/%"
Set "String=%String:Special:~10,1=(%"
Set "String=%String:Special:~11,1=)%"
Set "String=%String:Special:~12,1==%"
Set "String=%String:Special:~13,1=?%"
Set "String=%String:Special:~14,1=^<%"
Set "String=%String:Special:~15,1=^>%"
Set "String=%String:Special:~16,1=;%"
Set "String=%String:Special:~17,1=,%"
Set "String=%String:Special:~18,1=.%"
Set "String=%String:Special:~19,1=-%"
Set "String=%String:Special:~20,1=_%"
Set "String=%String:Special:~21,1=+%"
Set "String=%String:Special:~22,1=*%"
Set "String=%String:Special:~23,1=^[%"
Set "String=%String:Special:~24,1=^]%"
Set "String=%String:Special:~25,1={%"
Set "String=%String:Special:~26,1=}%"
Set "String=%String:Special:~27,1=`%"
Set "String=%String:Special:~28,1='%"
Set "String=%String:Special:~29,1=^^^^%"
Set "String=%String:Special:~30,1=:%"
 
 
Echo string "%STRING%"
Call :Write_Desofuscador
 
:Write_Desofuscador