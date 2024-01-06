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
;========= GIT ------- V1.1.1
;====================================
gch=git checkout  $*
gchb=git checkout -b  $*
gchd=git checkout develop $*
gs=git status  $*
gaa= git add -A  $* 
gap= git add -p $*
gb= git branch $*
gbr= git branch -r $*

gcm=git commit -m  $*
gca=git commit --amend
gcane=git commit --amend --no-edit

gls=git log --oneline --all --graph --decorate  $*
glo=git log --oneline $*
glof=git log --oneline -n 5 $*
glot=git log --oneline -n 10 $*
glon=git log --oneline -n $*
glg=git log --graph $*
glgo=git log --graph --oneline $*

gpod=git pull origin develop
gpodr=git pull origin develop --rebase
gpro=git pull --rebase origin $*

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
;=======================
; other commands
;=======================
noded=cd C:\Users\pc\Documents\Dev\node
shutn=cd C:\Users\pc\Documents\Dev\node\chut-up-node
reactd=cd C:\Users\pc\Documents\Dev\react
shutr=cd C:\Users\pc\Documents\Dev\react\shut-up-react
devd=cd C:\Users\pc\Documents\Dev

as= cd C:\cmder\config
sas= cd C:\cmder\config && code .


