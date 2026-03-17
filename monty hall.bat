@echo off
chcp 65001 > nul 2>&1
title Monty Hall
color f0

:inicio
cls
echo.
echo  -silvio santos: mahoeee, hihi,
echo  ora se nao e o nosso concorrente %username%!
echo   -bem vindo ao paradoxo de monty hall
echo  e o jogo das tres portas, voce escolhe uma, a gente abre outra e voce escolhe
echo  se fica ou noa, hihi
echo.
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
set /a num=%random% %% 3
set /a num1=%random% %% 2
set /p porta=  pra comecar %username% , escolha uma porta de 1 a 3:

if "%porta%"=="1" goto porta1
if "%porta%"=="2" goto porta2
if "%porta%"=="3" goto porta3
if "%porta%" geq "4" goto denovo

:porta1
cls
echo.
echo %username% voce escolheu a porta 1
echo.
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo agora vamos abrir uma porta pra mostrar que o seu premio nao esta dentro dela
echo.
pause

if "%num%"=="0" if "%num1%"=="0" goto porta111
if "%num%"=="0" if "%num1%"=="1" goto porta112
if "%num%"=="1" goto porta12   
if "%num%"=="2" goto porta13
     

:porta111
echo.
echo  abrimos a porta 2 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]     [   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca1=lembrando que voce escolheu a numero 1 (manter=1/mudar=2)

if "%troca1%"=="1" goto ganhou
if "%troca1%"=="2" goto perdeu
if "%troca1%" geq "3" goto denovo

:porta112
echo.
echo  abrimos a porta 3 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]     [
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 2
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca2=lembrando que voce escolheu a numero 1 (manter=1/mudar=2)

if "%troca2%"=="1" goto ganhou
if "%troca2%"=="2" goto perdeu
if "%troca2%" geq "3" goto denovo

:porta12
echo.
echo  abrimos a porta 3 pra mostrar que não tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]     [
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 2
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca3=lembrando que voce escolheu a numero 1 (manter=1/mudar=2)

if "%troca3%"=="1" goto perdeu
if "%troca3%"=="2" goto ganhou
if "%troca3%" geq "3" goto denovo

:porta13
echo.
echo  abrimos a porta 2 pra mostrar que não tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]     [   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca4=lembrando que voce escolheu a numero 1 (manter=1/mudar=2)

if "%troca4%"=="1" goto perdeu
if "%troca4%"=="2" goto ganhou
if "%troca4%" geq "3" goto denovo
::-----------------------------------------------
:porta2
cls
echo.
echo %username% voce escolheu a porta 2
echo.
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo agora vamos abrir uma porta pra mostrar que o seu premio nao esta dentro dela
echo.
pause

if "%num%"=="0" goto porta21
if "%num%"=="1" if "%num1%"=="0" goto porta221
if "%num%"=="1" if "%num1%"=="1" goto porta222   
if "%num%"=="2" goto porta23

:porta21
echo.
echo  abrimos a porta 3 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]     [
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca5=lembrando que voce escolheu a numero 2 (manter=1/mudar=2)

if "%troca5%"=="1" goto ganhou
if "%troca5%"=="2" goto perdeu
if "%troca5%" geq "3" goto denovo

:porta221
echo.
echo  abrimos a porta 3 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]     [
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 2
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca6=lembrando que voce escolheu a numero 2 (manter=1/mudar=2)

if "%troca6%"=="1" goto ganhou
if "%troca6%"=="2" goto perdeu
if "%troca6%" geq "3" goto denovo

:porta222
echo.
echo  abrimos a porta 3 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]     [
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 2
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca7=lembrando que voce escolheu a numero 2 (manter=1/mudar=2)

if "%troca7%"=="1" goto ganhou
if "%troca7%"=="2" goto perdeu
if "%troca7%" geq "3" goto denovo

:porta23
echo.
echo  abrimos a porta 1 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]     [   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 2 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca8=lembrando que voce escolheu a numero 2 (manter=1/mudar=2)

if "%troca8%"=="1" goto perdeu
if "%troca8%"=="2" goto ganhou
if "%troca8%" geq "3" goto denovo

::-----------------------------------------------------
:porta3
cls
echo.
echo %username% voce escolheu a porta 3
echo.
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
echo agora vamos abrir uma porta pra mostrar que o seu premio nao esta dentro dela
echo.
pause

if "%num%"=="0" goto porta31   
if "%num%"=="1" goto porta32
if "%num%"=="2" if "%num1%"=="0" goto porta331
if "%num%"=="2" if "%num1%"=="1" goto porta332

:porta31
echo.
echo  abrimos a porta 2 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]     [   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]  X  [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 1 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca9=lembrando que voce escolheu a numero 3 (manter=1/mudar=2)

if "%troca9%"=="1" goto perdeu
if "%troca9%"=="2" goto ganhou
if "%troca9%" geq "3" goto denovo

:porta32
echo.
echo  abrimos a porta 1 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]     [   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]  X  [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 2 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca10=lembrando que voce escolheu a numero 3 (manter=1/mudar=2)

if "%troca10%"=="1" goto perdeu
if "%troca10%"=="2" goto ganhou
if "%troca10%" geq "3" goto denovo

:porta331
echo.
echo  abrimos a porta 1 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]     [   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]  X  [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 2 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca11=lembrando que voce escolheu a numero 3 (manter=1/mudar=2)

if "%troca11%"=="1" goto ganhou
if "%troca11%"=="2" goto perdeu
if "%troca11%" geq "3" goto denovo

:porta332
echo.
echo  abrimos a porta 2 pra mostrar que nao tem nada nela
echo.   _______   _______   _______
echo    ]porta[   ]     [   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]  X  [
echo ___]_____[___]_____[___]_____[____
echo.
echo  agora lhe resta as portas 2 e 3
echo.
echo.
echo voce tem certeza da sua escolha? fecha nessa? ou deseja trocar de porta?  
set /p troca12=lembrando que voce escolheu a numero 3 (manter=1/mudar=2)

if "%troca12%"=="1" goto ganhou
if "%troca12%"=="2" goto perdeu
if "%troca12%" geq "3" goto denovo

:denovo
cls
echo.
echo desculpa %username% , acho que voce nao entendeu a ideia do jogo, vamos voltar pro comeco
pause
cls
goto inicio

:ganhou
cls
echo.
echo    PARABENS VOCE GANHOU
echo.
set /p fim="deseja jogar novamente? (sim-1/nao-2)

if "%fim%"=="1" goto inicio
if "%fim%"=="2" exit
if "%fim%" geq "3" exit

:perdeu
cls
echo.
echo   ooh nao,voce perdeu :((((
echo.
pause

set /a nu=num+1

if "%nu%"=="1" goto final1
if "%nu%"=="2" goto final2
if "%nu%"=="3" goto final3

:final1 
echo.
echo infelizmente a porta certa era a:
echo          porta numero 1 
echo.   _______   _______   _______
echo    ]PRIZE[   ]porta[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]  X  [   ]     [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
set /p fim="deseja jogar novamente? (sim-1/nao-2)

if "%fim%"=="1" goto inicio
if "%fim%"=="2" exit
if "%fim%" geq "3" exit

:final2 
echo.
echo infelizmente a porta certa era a:
echo          porta numero 2 
echo.   _______   _______   _______
echo    ]porta[   ]PRIZE[   ]porta[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]  X  [   ]     [
echo ___]_____[___]_____[___]_____[____
echo.
set /p fim="deseja jogar novamente? (sim-1/nao-2)

if "%fim%"=="1" goto inicio
if "%fim%"=="2" exit
if "%fim%" geq "3" exit

:final3 
echo.
echo infelizmente a porta certa era a:
echo          porta numero 3 
echo.   _______   _______   _______
echo    ]porta[   ]porta[   ]PRIZE[
echo    ] (1) [   ] (2) [   ] (3) [ 
echo    ]     [   ]     [   ]  X  [
echo ___]_____[___]_____[___]_____[____
echo.
set /p fim="deseja jogar novamente? (sim-1/nao-2)

if "%fim%"=="1" goto inicio
if "%fim%"=="2" exit
if "%fim%" geq "3" exit





