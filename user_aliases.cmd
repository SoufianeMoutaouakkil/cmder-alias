;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
gl=git log --oneline --all --graph --decorate  $*
l=ls --show-control-chars -CFGNhp --color --ignore={"NTUSER.DAT*","ntuser.dat*"} $*
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
pwsh=%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe -ExecutionPolicy Bypass -NoLogo -NoProfile -NoExit -Command "Invoke-Expression '. ''%CMDER_ROOT%/vendor/profile.ps1'''"



;====================================
;========= GIT ------- V0.0.1
;====================================
; CHECKOUT
;=====================
gch=git checkout  $*
gchb=git checkout -b  $*
gchd=git checkout develop $*
gchm=git checkout master $*
gchmn=git checkout main $*

; STATUS
;=====================
gs=git status  $*

; ADD
;=====================
gaa= git add -A  $* 
gap= git add -p $*

; BRANCH
;=====================
gb= git branch $*
gbr= git branch -r $*

; COMMIT
;=====================
gcm=git commit -m  $*
gca=git commit --amend
gcane=git commit --amend --no-edit

; LOG
;=====================
gls=git log --oneline --all --graph --decorate  $*
glo=git log --oneline $*
glof=git log --oneline -n 5 $*
glot=git log --oneline -n 10 $*
glon=git log --oneline -n $*
glg=git log --graph $*
glgo=git log --graph --oneline $*

; PULL
;=====================
gpod=git pull origin develop
gpodr=git pull origin develop --rebase
gpro=git pull --rebase origin $*

; RESET
;=====================
gr=git reset *$
grh=git reset --hard *$

;====================================
;=========  symfony commands ------- V1.1.1
;====================================
sf=symfony $*
sc=symfony console $*
sss=symfony server:start $*
sssd=symfony server:start -d $*
sse=symfony server:stop $*
ssls=symfony server:list $*
sslg=symfony server:log $*
sol=symfony open:local $*

;=======================
; NODE & NPM commands
;=======================
npmrd= npm run dev
npmt= npm test
npms= npm start

;====================================
;========= PHPUnit
;====================================
testsuite= vendor\bin\phpunit.bat --configuration unit_test\test\phpunit.xml --testsuite $1

;====================================
;========= DOCKER
;====================================
dk= docker *$

dkctls= docker container ls $*
dkimls= docker image ls $*

dkim= docker image $*
dkimrm= docker image rm $*
dkct= docker container $*
dkbd= docker build $*
dkrn= docker run $*
dkrm= docker rm $*
dkin= docker inspect $*
dklg= docker logs $*
dkst= docker stats $*

;=======================
; other commands
;=======================
@REM set github="C:\Users\SMOUTAOUAKK\Documents\GitHub"
@REM set dev="C:\Users\SMOUTAOUAKK\Documents\Dev"
@REM set WWWD="C:\Users\alten113\Documents\wamp64\www"
apmc= cd %WWWD%\APIMC
ecco= cd %WWWD%\ECCO
democode= cd %WWWD%\demo && code .
demo= cd %WWWD%\demo

alsd=cd /d "%CMDER_ROOT%"/config

shutup  = cd %github%\shut-up
shutupr = cd %github%\shut-up\shut-up-react
shutupn = cd %github%\shut-up\shut-up-node

noded= cd %dev%\node
shutrd= cd %dev%\node\shut-up-react
shutnd= cd %dev%\node\shut-up-node
