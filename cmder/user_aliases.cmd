1 ;= @echo off
  2 ;= rem Call DOSKEY and use this file as the macrofile
  3 ;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
  4 ;= rem In batch mode, jump to the end of the file
  5 ;= goto:eof
  6 ;= Add aliases: `alias name=command`
  7 ;= Remove alias: `unalias name`
  8
  9 ..=cd ..  ^M
 10 aliases=vim C:\Users\tyler.hitzeman\ProgramFiles_Local\cmder\config\user_aliases.cmd  ^M
 12 clear=cls
 13 cmderr=cd /d "%CMDER_ROOT%"
 14 cpl=cd C:\Users\tyler.hitzeman\ProgramFiles_Local  ^M
 15 gcm=git commit -m "$*"  ^M
 16 gst=git status  ^M
 17 history=cat "%CMDER_ROOT%\config\.history"
 18 ls=ls -GFhal --color=auto  ^M
 20 pwd=cd
 21 src=cd C:\Users\tyler.hitzeman\src  ^M
 22 tf=tail -f $*  ^M
 23 unalias=alias /d $1
 24 wtf=echo You got this, dawg  ^M
 25 home=cd C:\Users\tyler.hitzeman  ^M
 26 gl=git pull  ^M
 27 gco=git checkout $*  ^M
 28 gcob=git checkout -b $*  ^M
 29 ga.=git add .  ^M
 30 ga=git add $*  ^M
 31 gp=git push  ^M
 32 cdd=cd C:\Users\tyler.hitzeman\Desktop\  ^M
 33 vvim=vim ~/.vimrc  ^M
