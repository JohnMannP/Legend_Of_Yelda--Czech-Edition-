@echo off
chcp 65001
Taskkill  /F /IM wscript.exe
cls
setlocal ENABLEDELAYEDEXPANSION
set q=0
set g=0
start MainMusic.vbs
cls
echo Vítej ve hře:
timeout 1 /nobreak > nul
color 0A
echo LEGEND
timeout 1 /nobreak > nul
color 0B
echo OF
timeout 1 /nobreak > nul
color 0C
echo YELDA
color 0D
color 0A
color 0B
color 0C
color 0D
color 0A
color 0B
color 0C
color 0D
color 0A
color 0B
color 0C
color 0D
color 0A
color 0B
color 0C
color 0D
color 0A
color 0B
color 0C
color 0D
color 0A
color 0B
color 0C
echo Zmáčkni cokoliv pro pokračování!
pause > nul
cls
set /p jmeno=Jak se budeš jmenovat? : 
echo      ^|Lore:                                                                ^|
echo      ^|Jsi hrdina jménem %jmeno%.                                        
pause > nul
echo      ^|Po zlém snu se probudíš ve svém málém skromném domku.                ^|
pause > nul
echo      ^|Probudil tě tvůj nejlepší kamarád jménem Joe.                        ^|
pause > nul
echo      ^|Rychle ti řekl, že někdo unesl princeznu Yeldu.                      ^|
pause > nul
echo      ^|*Vstaneš z postele a rychle běžíš k hradu princezny Yeldy.*          ^|
pause > nul
echo      ^|V hradu je velké ticho a nikdo tam není.                             ^|
pause > nul
echo      ^|*Přijdeš do hlavní místnosti hradu a uvidíš uprostřed malého kluka.* ^|
pause > nul
echo      ^|*Přiblížíš se.*                                                      ^|
pause > nul
echo      ^|Kluk se rychle otočí a běží k tobě. Z úst mu teče krev.              ^|
pause > nul
echo      ^|*Vytasíš meč a připravíš se k boji.*                                 ^|
pause > nul
Taskkill  /F /IM wscript.exe
start /min AttackMusic.vbs
cls
echo ^|V boji budeš muset reagovat RYCHLE!                                     ^|
pause > nul 
echo ^|Budeš počítat příklad, abys zabil nepřítele.                            ^|
pause > nul
echo ^|Pokud neodpovíš včas, nebo příklad vypočítáš špatně, tak prohraješ!     ^|
pause > nul 
cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul
:boj1
cls
set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!10 +1
set /a b=%random% %%!10 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne1
if not %d%==%c% goto spatne1

:smrt1
cls
echo ^|Zkus to znovu!                     ^|
pause > nul 
goto boj1

:spravne1
cls
echo ^|*Usekl jsi šílenému chlapci nohu!* ^|
pause > nul
echo ^|*Krvácí!*                          ^|
pause > nul
goto next1

:spatne1
cls
start smrt.vbs
pause > nul
goto smrt1

:next1
cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul
cls
set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!10 +1
set /a b=%random% %%!10 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne2
if not %d%==%c% goto spatne1

:spravne2
cls
echo ^|*Rozsekl jsi chlapci hruď a chlapec padl.*        ^|
pause > nul
goto end1

:end1
Taskkill  /F /IM wscript.exe
start VictoryMusic.vbs
cls
echo VYHRÁL JSI
timeout 6 /nobreak > nul
:smrt2
cls
echo ^|Mrtvola šíleného chlapce z ničeho nic zmizela.           ^|
pause > nul
echo ^|*Uvidíš, jak se něco hýbe pod rozbitým stolem.*          ^|
pause > nul
:otazka
echo ^|Chceš to zkontrolovat?                                   ^|                               
set /P otazka=[Ano/Ne]? : 
if /I "%otazka%" EQU "Ano" goto odpoved1
if /I "%otazka%" EQU "Ne" goto odpoved2
if /I "%otazka%" EQU "ano" goto odpoved1
if /I "%otazka%" EQU "ne" goto odpoved2
cls
goto otazka

:odpoved2
cls
echo ^|*Rozhodneš se nezkontrolovat rozbitý stůl a otočíš se směrem ke vchodu.*      ^|
pause > nul
echo ^|*Z ničeho nic na tebe spadne velký balvan a ty umřeš.*                        ^|
pause > nul
start smrt.vbs
goto smrt2

:odpoved1
start MainMusic.vbs
cls
echo ^|*Najdeš pod stolem tvého přítele Joea.*                                                                         ^|
pause > nul 
echo ^|"%jmeno%, děkuji, že jsi mě zachránil. Asi bych se tu dole udusil, nebýt tebe."                                 ^|
pause > nul
echo ^|"Jak jsi se sem dostal dřív než já?"                                                                            ^|
pause > nul
echo ^|"To opravdu nevím %jmeno%, hlavní je to, že jsem viděl temného čaroděje Dragmíra, jak unáší princeznu Yeldu."   ^|
pause > nul
echo ^|"Odletěl směrem na sever!"                                                                                      ^|
pause > nul
echo ^|Okamžitě se vydáš na sever.                                                                                     ^|
pause > nul
echo ^|*Když přijdeš k východu hradu, z ničeho nic se zjeví dvě slizská stvoření.*                                     ^|
pause > nul 
echo ^|*Připrav se na boj!*                                                                                            ^|
pause > nul
Taskkill /F /IM wscript.exe
start AttackMusic.vbs
cls
:fight
cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul
set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!25 +1
set /a b=%random% %%!25 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne3
if not %d%==%c% goto spatne2

:spatne2
cls
start smrt.vbs
echo Zkus to znovu!
pause > nul
goto fight 

:spravne3
cls
echo ^|*Podařilo se ti zarazit meč do slizského stvoření.*                           ^|
pause > nul
echo ^|*Slizské stvoření meč pohltí.*                                                ^|
pause > nul
echo ^|*Po pohlcení meče stvoření umřelo. A meč byl vyplivnut směrem k tobě!*        ^|
pause > nul
echo ^|*Meč tě sekne do ruky!*                                                       ^|
pause > nul
echo ^|*Zbývá ještě jeden!*                                                          ^|
pause > nul

cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul

set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!25 +1
set /a b=%random% %%!25 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne4
if not %d%==%c% goto spatne2

:spravne4
Taskkill /F /IM wscript.exe
cls
echo Podařilo se ti porazit obě stvoření!
pause > nul
echo Vyhrál jsi boj!
start VictoryMusic.vbs
timeout 6 /nobreak > nul
start MainMusic.vbs
cls
echo ^|*Měl by sis vyléčit ruku.*                                        ^|
pause > nul
echo ^|"%jmeno%! Co se ti stalo? Máš ruku od krve! Tady máš."            ^|
pause > nul
echo ^|*Joe ti podal léčivé bylinky.*                                    ^|
pause > nul
echo ^|"Příště, až budeš potřebovat něco vyléčit, použij tyto bylinky"   ^|
pause > nul
:otazka2
echo ^|Chceš se vyléčit?                                                 ^|                               
set /P otazka=[Ano/Ne]? : 
if /I "%otazka%" EQU "Ano" goto odpoved3
if /I "%otazka%" EQU "Ne" goto odpoved4
if /I "%otazka%" EQU "ano" goto odpoved3
if /I "%otazka%" EQU "ne" goto odpoved4
cls
goto otazka2

:odpoved4
cls
echo ^|*Nevyléčíš se a vykrvácíš.*        ^|
start smrt.vbs
pause > nul
cls
goto otazka2

:odpoved3
cls
echo ^|*Vyléčíš se a krvácení přestane.*                                   ^|
pause > nul
echo ^|*Vydáš se na sever.*                                                ^|
pause > nul
echo ^|*Hned před severními hradbami uvidíš zlého čaroděje Dragmíra!*      ^|
pause > nul 
echo ^|*Tohle je velmi nečekané. Byl jsi dost rychlý a dohnal jsi ho!*     ^|
pause > nul
echo ^|*Na tohle jsi se cvičil celý život! Tento boj bude velmi drsný.*    ^|
pause > nul
Taskkill /F /IM wscript.exe
start AttackMusic.vbs
cls

:fight2

cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul

set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!50 +1
set /a b=%random% %%!50 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne5
if not %d%==%c% goto spatne3

:spatne3
cls
start smrt.vbs
echo ^|*Dragmír tě svou hůlkou zabil.*         ^|
pause > nul
cls
goto fight2

:spravne5
cls
echo ^|*Sekl si Dragmíra do pravé ruky.*                                              ^|
pause > nul 
echo ^|*Dragmír má velmi dobré brnění, ale ne tak dobré, aby přežilo tvůj meč!*       ^|
pause > nul
echo ^|*Dragmírovi teče krev z ruky.*                                                 ^|
pause > nul

:otazka3
echo ^|Chceš Dragmíra seknout znovu do pravé ruky?                                    ^|                               
set /P otazka=[Ano/Ne]? : 
if /I "%otazka%" EQU "Ano" goto odpoved_prava
if /I "%otazka%" EQU "Ne" goto odpoved_leva
if /I "%otazka%" EQU "ano" goto odpoved_prava
if /I "%otazka%" EQU "ne" goto odpoved_leva
cls
goto otazka3

:odpoved_prava

cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul

set /a q+=1
if %q%==11 goto done
set pass=2
set /a a=%random% %%!50 +1
set /a b=%random% %%!50 +1

set /a c=%a% + %b%
cls
echo Kolik je %a% + %b%
set /p d= || set d=-1
if %d%==%c% goto spravne6
if not %d%==%c% goto spatne3

:spravne6
cls
echo ^|*Sekl jsi Dragmíra do pravé ruky.*                                     ^|
pause > nul
echo ^|*Dragmír velmi krvácí!*                                                ^|
pause > nul
echo ^|*Dragmír si po chvíli trochu zastaví krvácení kouzlem.*                ^|
pause > nul
cls
goto dragmir_umira

:odpoved_leva
pause > nul
echo ^|*Sekneš Dragmíra do levé ruky.*                    ^|
pause > nul
echo ^|*Dragmír se po chvíli vyléčí a zabije tě.*         ^|
start smrt.vbs
pause > nul
cls
goto otazka3

:dragmir_umira
echo ^|*Dragmír stále krvácí!*                                    ^|
pause > nul  
echo ^|*Teď je tvoje šance! Sekni Dragmíra znovu do pravé ruky!*  ^|
pause > nul
echo ^|*Máš na to 5 vteřin!*                                      ^|

cls
echo BOJ ZAČÍNÁ ZA:
timeout 1 /nobreak > nul
echo 3
timeout 1 /nobreak > nul
echo 2
timeout 1 /nobreak > nul
echo 1
timeout 1 /nobreak > nul

:odpoved420
cls
choice /c 123456789 /n /t 5 /d 1 /m "Kolik je (25 - 23) * 2? : "
if errorlevel 4 goto spravne420
goto spatne3


:spravne420
Taskkill /F /IM wscript.exe
cls
echo ^|*Dragmírovi upadla pravá ruka!*                                    ^|   
start DeathSound.vbs
timeout 3 /nobreak > nul
echo ^|*DRAGMÍR UMŘEL!*                                                   ^|   
start VictoryMusic.vbs
timeout 6 /nobreak > nul
start Ending.vbs
cls
echo ^|*Princezna Yelda je zachráněna!*                                   ^|
pause > nul
echo ^|"%jmeno%!"                                                         ^|
pause > nul
echo ^|"Děkuji ti. Zachránil jsi mě a celé království."                   ^|
pause > nul
echo ^|*Za chvíli přijde dav lidí a všichni budou oslavovat tvoji výhru!* ^|
pause > nul
echo ^|*Jsi opravdový hrdina, %jmeno%.*                                   ^|
pause > nul
cls
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                   DĚKUJI, ŽE JSI DOHRÁL                    ^|
echo ^|            MOJI *ORIGINÁLNÍ* HRU S *ORIGINÁLNÍM*           ^|
echo ^|                 NÁZVEM "Legend of Yelda"                   ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
pause > nul
echo ^|                         KONEC                              ^|
echo ^|         Profesionální programátor: Jan Šabatka             ^|
echo ^|                                                            ^|
echo ^|         Příběh vytvořil: Jan Šabatka                       ^|
echo ^|                                                            ^|
echo ^|         Hlavní sponzor: Jonáš Konečný                      ^|
echo ^|                                                            ^|
echo ^|   Nejlepší opravář matematického příkladu: Marcel Gažík    ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
echo ^|                                                            ^|
pause > nul
echo ^|              Užij si tuhle úžasnou hudbu. :)               ^|   
pause > nul
Taskkill /F /IM wscript.exe





















