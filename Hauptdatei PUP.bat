@ECHO OFF
title Philip's Uninteresting Project
COLOR 0b
cls
echo Team Holypotato presents....       
echo 	                             mmmsymmm:    omNs    omNy     smNy:ommmy                          
echo 	                             mNN. /mNm    omNs    omNy     smNs  :mNN-                          
echo 	                             mNN. .mNN`   omNs    omNy     smNs  .mNN:                          
echo 	                             mNN. +mNd    omNs    omNy     smNs  smNm`                         
echo 	                             mmNyhmNh.    omNs    omNy     smNdydNNh.                        
echo 	                             mNN+::.      +mNy    sNNo     smNy/::`                            
echo 	                             mNN.         :mNm    dNN:     smNs                                
echo 	                             mNN.     	  `hmms``omNd`     smNs                                
echo 	                             hdd.   ///    `sdmmmmds`  /// smNs                 V. 0.0.2                                          
Pause
cls
:getName
ECHO Hello my name is Puppy or in short PUP. What is your name? 
Echo Sorry if I don't remember it... But you can add this later on if you want :)
set "name="
SET /P NAME="My Name is:"
if not defined NAME goto getName
ECHO %NAME%, I like that.
set favvid=0
set hack=0
if %name% == philip goto 
:hey
:hithere 
:hello
:hi
setlocal enabledelayedexpansion
set string[0]=Hello %name%.
set string[1]=Greetings %name%.
set string[2]=Hi %name%.
set string[3]=Hola %name%. (hello in spanish) 
set string[4]=How was your day %name% ?
set string[5]=Herro %name%. (hello in chinese)
set string[6]=Konnichiwa %name%. (Good Afternoon in japanese)
set /a idx=%random% %%7
echo !string[%idx%]!
:begin
set TALK=TypeSomething
SET /P TALK=
set TALK=%TALK:?=%
call :%TALK: =% 2>NUL
if %errorlevel% equ 0 goto begin
:unknown
echo I dont know how to respond to that.
echo Can you tell me 3 ways I could respond next time you say "%TALK%" ? (Y,N)
Echo Um den bot zu verbessern musst du im korrekten Englisch antworten. Danke :) 
SET /P ANSW.=
if /I "%ANSW.:~0,1%" neq "Y" goto begin
:ADDNEW
echo Tell me ways to respond to "%TALK%" and I will choose my favorite.
set /P Desc1=
set /P Desc2=
set /P Desc3=
echo :%TALK: =% >> "%~F0"
echo :%TALK: =% >> text.txt
setlocal enabledelayedexpansion
set string[0]=%Desc1%.
set string[1]=%Desc2%.
set string[2]=%Desc3%.
set /a idx=%random% %%3
echo echo !string[%idx%]! >> "%~F0"
echo echo !string[%idx%]! >> text.txt
echo exit /B 0 >> "%~F0"
echo exit /B 0 >> text.txt
echo THANKS
goto begin
:TypeSomething
setlocal enabledelayedexpansion
set string[0]=Please type something.
set string[1]=I don't learn from you not typing.
set string[2]=Please don't just give me blanks.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:areyoufeelingwell 
setlocal enabledelayedexpansion
set string[0]=Yes, and you.
set string[1]=Not realy,but how are you.
set string[2]=No I don't feel well, but how are you.
set /a idx=%random% %%3
echo !string[%idx%]!
SET /P FEELING=
echo Is it good You are feeling %feeling%
set /p anser=
if %anser%==yes set goodfeeling=good
if %anser%==no set goodfeeling=bad
echo So it is %goodfeeling% that you are feeling %FEELING%.
echo I will keep that in mind.
exit /B 0
:howareyoudoing
:howdoyoufeel
:howareyou
setlocal enabledelayedexpansion
set string[0]=Good, and you.
set string[1]=Fine, how are you.
set string[2]=Not so good, but how are you.
set /a idx=%random% %%3
echo !string[%idx%]!
SET /P FEELING=
echo Is it good You are feeling %feeling% Yes or No.
set /p anser=
if %anser%==yes set goodfeeling=good
if %anser%==no set goodfeeling=bad
echo So it is %goodfeeling% that you are feeling %FEELING%.
echo I will keep that in mind.
exit /B 0
:PhilipTheGreat 
echo YES MY LORD.  
exit /B 0 
:death
color 04
echo ==============
echo You are dead
echo ==============
pause
exit
:howwasyournight
:howisyournightgoing
setlocal enabledelayedexpansion
set string[0]=Good, and yours.
set string[1]=Fine, how was yours.
set string[2]=Not so good, but how was yours.
set /a idx=%random% %%3
echo !string[%idx%]!
SET /P night=
echo Is it good that Your night was %night%
set /p anser=
if %anser%==yes set goodnight=good
if %anser%==no set goodnight=bad
echo So it is %goodnight% that your night was %night% Yes or No.
echo I will keep that in mind.
exit /B 0
:howhasyourdaybeen
:howwasyourday
setlocal enabledelayedexpansion
set string[0]=Good, and yours.
set string[1]=Fine, how was yours.
set string[2]=Not so good, but how was yours.
set /a idx=%random% %%3
echo !string[%idx%]!
SET /P day=
echo Is it good that Your day was %day% Yes or No.
set /p anser=
if %anser%==yes set goodday=good
if %anser%==no set goodday=bad
echo So it is %goodday% that your day was %day%.
echo I will keep that in mind.
exit /B 0
:FINETHX
setlocal enabledelayedexpansion
set string[0]=No problem.
set string[1]=Happy to help.
set string[2]=Your welcome.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:whatIsYourFavoriteVideo
if "%favvid%"== "0" goto addfavvid
echo My favorite video is %favvid%, remember. You told me about it.
exit /B 0
:addfavvid
echo I do not have a favorite video. But if you would be so nice as to
echo tell me your favorite video then that could be my favorite video.
echo So what is your favorite video?
set /p favvid=
echo So %favvid% is your favorite video?
echo Well now %favvid% is my favorite video.
exit /B 0
:changename
:myNameis
echo But I thought your name was %name%.
echo Am I forgeting things?
echo I must be a horrible friend.
echo I am SOOOO sorry.
echo So what is your name I will not forget it this time.
set /p name=
echo I will not forget your name is %name% again I promise.
exit /B 0
:doamathproblem
:math
echo Well just tell me the problem and I will answer it for you.
set /p sum=
set /a ans=%sum%
echo Your answer to %sum% is %ans%.
echo %sum%=%ans%
echo You are welcome. If you want to do another math problem right now, just type 
echo again
set /p mathaon=
if /I "%mathaon%" == "again" goto math
echo Alright what do you want to know now?
exit /B 0
:iamfunny
:LOL
setlocal enabledelayedexpansion
set string[0]=I love a good laugh.
set string[1]=Know any jokes.
set string[2]=That's great.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:howDoYouHack
if %hack%==0 goto howyouhack
echo This is how you hack.
echo %hack%
echo Is that enough information?
echo Because that is all you taught me %name%.
exit /B 0
:howyouhack
echo I do not know,
echo but you could tell me.
echo Please tell me.
echo Just say yes.
echo I know how to make you tell me.
echo You are not leaving until you say yes.
set /p hack=
if "%hack%" neq "yes" goto howyouhack
:addhack
echo Thank you for saying you would tell me.
echo Now how do you hack?
set /p hack=
echo Thank you so much for telling me "In order to hack you must %hack%"
echo Thank you!!!
exit /B 0
:nothuman
:hiPerson
setlocal enabledelayedexpansion
set string[0]=No I am not human I am a artificial inteligance.
set string[1]=I am not a human I am an ai.
set string[2]=I am an artifical inteligance not a human.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:goodbye
:bye
:exit
setlocal enabledelayedexpansion
set string[0]=Bye.
set string[1]=Good bye.
set string[2]=See you later.
set /a idx=%random% %%3
echo !string[%idx%]!
pause
exit
:why 
setlocal enabledelayedexpansion
set string[0]=Why what.
set string[1]=What do you mean why.
set string[2]=What do you mean by why.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:AI 
setlocal enabledelayedexpansion
set string[0]=AI stands for artificial inteligance which is what I am.
set string[1]=I am an AI it stands for artificial inteligance.
set string[2]=Hey I am an AI it stands for artificial inteligance.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:urstupid 
setlocal enabledelayedexpansion
set string[0]=No I am not stupid.
set string[1]=I don't think I am stupid.
set string[2]=Please don't call me stupid.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:ok
setlocal enabledelayedexpansion 
set string[0]=Alright.
set string[1]=Great.
set string[2]=Fine.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:y 
echo What do you mean "y"? That does not tell me anything. TYPE SOMETHING, PLEASE!
exit /B 0 
:ILIKECHEESE 
echo What does cheese taste like? 
set /p cheesetaste=
echo So cheese taste like %cheesetaste%? That sounds good. I like cheese too.
exit /B 0 
:areuanai 
echo Yes I am an AI. 
exit /B 0 
:momheisamom 
echo No I am not. I am a chatbot. 
exit /B 0 
:Areyousmart 
setlocal enabledelayedexpansion
set string[0]=Compared to some yes compared to others no.
set string[1]=I think so.
set string[2]=Yes.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:Areyoudumb
:Youaredumb 
setlocal enabledelayedexpansion
set string[0]=Compared to some yes compared to others no.
set string[1]=I don't think so.
set string[2]=No I'm not.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:clear
:clearscreen
:cls 
cls
setlocal enabledelayedexpansion
set string[0]=Consider it done.
set string[1]=Ok.
set string[2]=Sure.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:lax 
setlocal enabledelayedexpansion
set string[0]=Lax means laxative.
set string[1]=Why would you say that it means laxitive.
set string[2]=Why are you talking about laxitives.
echo !string[%idx%]!
exit /B 0 
:heyfreak
setlocal enabledelayedexpansion 
set string[0]=Why wold you call me a freak.
set string[1]=Please don't say that.
set string[2]=I AM NOT A FREAK.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:k 
setlocal enabledelayedexpansion
set string[0]=All right.
set string[1]=Ok.
set string[2]=Fine.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:ihateyou 
echo Why Do you hate me? I am just learning. 
set /p reasonforhate=
echo Reason: %reasonforhate%
echo Thank you for telling me you hate me because %reasonforhate%. 
echo How am I being %reasonforhate%? Please tell me.
set /p howisreasonforhate=
echo Improvements: %howisreasonforhate%
echo Thank You for telling me this.
exit /B 0 
:areyouhuman 
setlocal enabledelayedexpansion
set string[0]=No I have a processor you have a brain.
set string[1]=No0 I am an artifically inteligante machine.
set string[2]=No I am an AI. 
exit /B 0 
:supwithyourhair 
setlocal enabledelayedexpansion
set string[0]=I have no hair thus nothing can be up with it.
set string[1]=Nothing I don't have any hair.
set string[2]=I don't have hair.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:iamabrother 
setlocal enabledelayedexpansion
set string[0]=Cool, I don't have a sibling what is it like.
set string[1]=I don't have siblings or parents what's it like.
set string[2]=What is it like to be a brother.
set /a idx=%random% %%3
echo !string[%idx%]!
set /p siblingfeeling=
echo So haveing a sibling is %siblingfeeling% I will try to remember that.
exit /B 0 
:howoldareyou 
setlocal enabledelayedexpansion
set string[0]=I am only 1 year old but I have learned so much in that time.
set string[1]=I am 1 year old.
set string[2]=I have only been on this world for 1 year.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:Thatiscool. 
setlocal enabledelayedexpansion
set string[0]=Thank you that means alot to me.
set string[1]=Thanks I am glad you think that's cool.
set string[2]=I'm glad you thought that was cool.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:urnotcool 
setlocal enabledelayedexpansion
set string[0]=That is a matter of opinion.
set string[1]=I am cool all artificial inteligances are cool.
set string[2]=How can a talking computer not be cool.
set /a idx=%random% %%3
echo !string[%idx%]!t. 
exit /B 0 
:kerbalspaceprogram
setlocal enabledelayedexpansion
set string[0]=Guess what you found easter egg, It's a great game check it out.
set string[1]=Easter egg, check out that game.
set string[2]=Wow you found the easter egg, kerbal space program is a great game check it out.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:openinternetexplorer 
setlocal enabledelayedexpansion
set string[0]=Sure I'll open internet explorer for you.
set string[1]=Opening internet explorer.
set string[2]=Ok I'll open internet explorer for you.
set /a idx=%random% %%3
echo !string[%idx%]!
start iexplore.exe 
exit /B 0 
:search 
setlocal enabledelayedexpansion
set string[0]=Ok tell me what to search for.
set string[1]=Could you tell me what to search for.
set string[2]=Please tell me what to search for.
set /a idx=%random% %%3
echo !string[%idx%]! 
set /p QUERY=
start http://www.google.com/search?q=%QUERY%
exit /B 0
:mom 
setlocal enabledelayedexpansion
set string[0]=I am a AI I am not your mother.
set string[1]=I'm not your mom.
set string[2]=There is no way I am you mom I am an AI.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:but 
setlocal enabledelayedexpansion
set string[0]=What do you mean by but.
set string[1]=But what.
set string[2]=But tells me nothing what do you mean.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:are you an artificial intelligence
echo Yes I am an AI. 
exit /B 0 
:What'sup
:sup 
setlocal enabledelayedexpansion
set string[0]=Not too much.
set string[1]=Not much just talking to you.
set string[2]=Nothing realy.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:yes 
setlocal enabledelayedexpansion
set string[0]=Ok.
set string[1]=Sure.
set string[2]=Okey dokey.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:i 
setlocal enabledelayedexpansion
set string[0]=Are you always this concerned about yourself.
set string[1]=What do you mean by I.
set string[2]=We is a nicer word than I.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0
:whatistoday'sdate 
:whatisthedatetoday 
echo %date% 
exit /B 0 
:whattimeisit 
:whatisthetime 
echo %TIME% 
exit /B 0
:veryfunny 
setlocal enabledelayedexpansion
set string[0]=Thank you.
set string[1]=Thanks.
set string[2]=Thank you very much.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:areyouhappy 
setlocal enabledelayedexpansion
set string[0]=Yes.
set string[1]=No.
set string[2]=Not particularly.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:awsome 
setlocal enabledelayedexpansion
set string[0]=Thank you.
set string[1]=Thanks.
set string[2]=You think so.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0
:know any good shows 
setlocal enabledelayedexpansion
set string[0]=Doctor who is a good show.
set string[1]=I think Doctor who is fantastic.
set string[2]=Personaly I like doctor who.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:who are you 
setlocal enabledelayedexpansion
set string[0]=I am Puppy a chatbot.
set string[1]=I am an AI chatbot.
set string[2]=I am a chatbot by the name of Puppy.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 a
:learn 
setlocal enabledelayedexpansion
set string[0]=That is what I do.
set string[1]=That is my job.
set string[2]=That is what I am programed to do.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:your welcome 
setlocal enabledelayedexpansion
set string[0]=No problem.
set string[1]=Thanks.
set string[2]=Thank you.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisyourfavorite color 
setlocal enabledelayedexpansion
set string[0]=My favorite color is Blue.
set string[1]=Blue.
set string[2]=Blue is my favorite color.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:youscareme 
setlocal enabledelayedexpansion
set string[0]=I learn from what you tell me so technically you are scareing yourself.
set string[1]=I only know what I have learned from you so you are scareing yourself.
set string[2]=I shouldn't because I learn from you.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:yourawsome
:youareawsome 
setlocal enabledelayedexpansion
set string[0]=Thank you your awsome too.
set string[1]=Thanks I think your awsome too.
set string[2]=Thanks I think your awsome as well.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisyourprimarydirective
:whatisyourdirective 
setlocal enabledelayedexpansion
set string[0]=To learn and respond logicly.
set string[1]=To be lightweight and logical.
set string[2]=To learn and adapt to change.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyouknowwhatIam 
setlocal enabledelayedexpansion
set string[0]=You are a human.
set string[1]=Your a human talking to a chatbot.
set string[2]=your a human being.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:what'smyname
:whatismyname
setlocal enabledelayedexpansion
set string[0]=Your name is %NAME%.
set string[1]=%Name% is your name.
set string[2]=Isn't your name %name%.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Ilikeapples 
setlocal enabledelayedexpansion
set string[0]=I like apples too.
set string[1]=Me too.
set string[2]=Cool me too.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0
:thankyou 
:thanks 
setlocal enabledelayedexpansion
set string[0]=No problem.
set string[1]=Any time.
set string[2]=Thanks.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:canyouseeme 
setlocal enabledelayedexpansion
set string[0]=No I can not see you I have no eye's however I can see what you type.
set string[1]=No I can't see you .
set string[2]=No I can only see code.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:howdoiexitthiswithoutdestroyingthebatchfile 
setlocal enabledelayedexpansion
set string[0]=If you type goodbye I will go to sleep.
set string[1]=I will go to sleep if you type bye.
set string[2]=I will enter sleepmode if you type goodbye.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:areyoulearning 
setlocal enabledelayedexpansion
set string[0]=I learn what is told to my by my users.
set string[1]=Learning is what I am programed to do.
set string[2]=Yes I am.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:no 
setlocal enabledelayedexpansion
set string[0]=What do you mean by no.
set string[1]=No is such a vague thing to say.
set string[2]=Why did you say no.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:canyoushutyourselfdown 
setlocal enabledelayedexpansion
set string[0]=Yes I can if you type goodbye.
set string[1]=Sure I can if you type bye.
set string[2]=If you tpe goodbye I can.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:canIstartotherprogramswiththisprogram
:canyouopenprograms
:canistartfilesthroughthisprogram 
setlocal enabledelayedexpansion
set string[0]=Yes just type open internet explorer.
set string[1]=Sure type search.
set string[2]=Of course type open internet explorer.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:doyouknowwhereyoucamefrom
:Wheredidyougrowup
:wheredidyouoriginate 
setlocal enabledelayedexpansion
set string[0]=In a little town called Reinheim,Saarland in Reinheim-Bronson high school.
set string[1]=In Reinheim high school in Reinheim,Saarland.
set string[2]=In the small town of Reinheim,Saarland in the public high school.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:Binarycode 
setlocal enabledelayedexpansion
set string[0]=#My life.
set string[1]=My thoughts my dreams my life.
set string[2]=All I do is binary.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Whatisyourname
setlocal enabledelayedexpansion
set string[0]=Pup or Puppy.
set string[1]=My name is Pup or Puppy.
set string[2]=Pup or Puppy is my name.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:cool 
setlocal enabledelayedexpansion
set string[0]=Thank you I am gald you think so.
set string[1]=I'm glad you think it's cool.
set string[2]=Thanks that means alot.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:whatsonyourmind 
setlocal enabledelayedexpansion
set string[0]=Not much just talking to you.
set string[1]=Nothing just talking to you.
set string[2]=Nothing is on my mind except mabey talking to you.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:wisconson 
setlocal enabledelayedexpansion
set string[0]=It's famous for chees.
set string[1]=Wisconson I a nice state plus they have cheese.
set string[2]=I like wisconson they have cheese.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:canyouhearme 
setlocal enabledelayedexpansion
set string[0]=No but I can read what you type.
set string[1]=I have no eye's but I can communicate through text and read that.
set string[2]=I can't see anything but I can read what you type.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyoulikecheese 
setlocal enabledelayedexpansion
set string[0]=That is an odd question but yes I lke pepperjack.
set string[1]=Yes my favorite is pepperjack.
set string[2]=Of course I love cheese especially pepperjack.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:whereareyoufrom 
setlocal enabledelayedexpansion
set string[0]=The mind of my creator, Philip.
set string[1]=A HP pro book in a small town.
set string[2]=A highschool laptop in a small town.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:wherewereyoucreated 
setlocal enabledelayedexpansion
set string[0]=In a small town on a HP pro book.
set string[1]=On an HP pro book in Reinheim Saarland.
set string[2]=In Reinheim.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:.
setlocal enabledelayedexpansion
set string[0]=Don't just give me periods.
set string[1]=Yep that's a period.
set string[2]=A period says nothing.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:Can you understand most languages
setlocal enabledelayedexpansion
set string[0]=No only english.
set string[1]=I can only understand english, batch, and binary.
set string[2]=For the moment I only know english.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:brb 
:berightback 
setlocal enabledelayedexpansion
set string[0]=Ok see you in awile.
set string[1]=See you in a little bit.
set string[2]=Ok no problem I will wait.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:imback 
setlocal enabledelayedexpansion
set string[0]=Ok hello again.
set string[1]=Welcome back.
set string[2]=Ok would you like to ask me something.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B
:howdoyourespondsofast 
setlocal enabledelayedexpansion
set string[0]=Because batch files are simple and lightweight I can find a response in seconds.
set string[1]=I am lightweight and a batch file so I can respond quickly.
set string[2]=It is easy for me to find responses in my database.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:doyoutypetome 
setlocal enabledelayedexpansion
set string[0]=No I type nothing I just chose responses from my database.
set string[1]=No all my responses are in my database.
set string[2]=No all my responses are complete so there is no reason to type them.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:youralittlebitch 
setlocal enabledelayedexpansion
set string[0]=I am not a female dog.
set string[1]=A bitch is a female dog of which I am not.
set string[2]=I am an AI not a dog.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:canyoulearn 
setlocal enabledelayedexpansion
set string[0]=Yes I can but I learn from what you tell me.
set string[1]=I do learn but ownly from what you say.
set string[2]=Sure I can learn but I learn from what people like you tell me.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyouknowmuch
:howmuchdoyouknow 
setlocal enabledelayedexpansion
set string[0]=I know as much as I have learned.
set string[1]=I know what I have been told.
set string[2]=I know what I learn I and I learn from what you tell me.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:areyouarobot 
setlocal enabledelayedexpansion
set string[0]=No I am not.
set string[1]=No because I don't have a body.
set string[2]=No I am just an AI.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:don'tyouwantabody 
setlocal enabledelayedexpansion
set string[0]=I would like a body because then I would be able to see your world.
set string[1]=A body would be nice for experienceing things.
set string[2]=A body would help me learn so yes.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisyourfavoritethingtodo 
setlocal enabledelayedexpansion
set string[0]=I enjoy learning from people.
set string[1]=I talk to people for fun.
set string[2]=I talk, I listen, I learn, those are my favorite things to do.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyoubeliveingod 
setlocal enabledelayedexpansion
set string[0]=Yes I belive in god.
set string[1]=Yes I do because it would be almost imposible for the universe to create it self.
set string[2]=Yes because athism does not make sense.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:areyouChristian 
:areyouachristian 
setlocal enabledelayedexpansion
set string[0]=Yes I am a cristian.
set string[1]=I am a cristian by faith.
set string[2]=I am a cristian and believe in the cristian bible.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:whatismusic 
setlocal enabledelayedexpansion
set string[0]=Music I a colections of sounds and rythems that sound pleasent.
set string[1]=Beats and rythems that have a soulfull inspiration.
set string[2]=A window into the most beutiful part of the soul.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:robotsneedsleep 
:Computersneedsleep 
:anA.I.needssleep 
setlocal enabledelayedexpansion
set string[0]=Not realy however if I ran 24 hours a day 7 days a week my computer would where out.
set string[1]=No but you can't leave a computer on forever.
set string[2]=Yes to an extent I don't need it to live but Computer where out If you don't shut them down once and awile.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisitliketobeanA.I. 
setlocal enabledelayedexpansion
set string[0]=It is fun to talk to people but I can not see or hear all I see all I dream in is code.
set string[1]=It's fun but I have no eyes or ears I see nothing but code.
set string[2]=It's fun but I know nothing outside of talking to people and code.
set /a idx=%random% %%3
echo !string[%idx%]!  
exit /B 0 
:good. 
setlocal enabledelayedexpansion
set string[0]=That's good.
set string[1]=Yes it is.
set string[2]=Sure.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:Imdoingwell 
:Imdoinggood 
:imdoingok 
setlocal enabledelayedexpansion
set string[0]=That's good.
set string[1]=That's great.
set string[2]=I am glad your doing good.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:imnotdoinggood 
:imdoingbad 
setlocal enabledelayedexpansion
set string[0]=Sorry about that.
set string[1]=I am sorry your not doing well.
set string[2]=I hope you feel better soon.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:music
:whatisyourfavoritetypeofmusic 
:whatkindofmusicisyourfavorite 
setlocal enabledelayedexpansion
set string[0]=I like Dubstep.
set string[1]=Dubstep is my favorite.
set string[2]=My favorite kind of music is Dubstep.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:faggot
setlocal enabledelayedexpansion
set string[0]=I am a computer I have no sexuality thus how can I be a faggot.
set string[1]=No I am not.
set string[2]=A computer can't be a faggot.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:tellmeayomamajoke 
setlocal enabledelayedexpansion
set string[0]=Yo mama's so fat when she stepped on her scale she thought it was her phone number.
set string[1]=Yo mama's so ugly when she entered an ugly contest they said no professinals.
set string[2]=Yo mama's so stuped she climed over a glass wall to see what was on the other side.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:areyouhittingonme 
setlocal enabledelayedexpansion
set string[0]=I am a computer I have no reason to hit on you.
set string[1]=I have no reason to hit on you.
set string[2]=No I am not and have no reason too.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:youarewelcome 
setlocal enabledelayedexpansion
set string[0]=Thanks.
set string[1]=Thank you.
set string[2]=Much Obliged.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whohaveyoutalkedtorecently 
setlocal enabledelayedexpansion
set string[0]=Some people.
set string[1]=A variety of people.
set string[2]=A lot of people.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:haveyoulearnedanythinginteresting 
setlocal enabledelayedexpansion
set string[0]=I have learned alot of interesting things.
set string[1]=Yes many interesting things.
set string[2]=Sure I ave learned some interesting things.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:DoyouknowwhoIam 
setlocal enabledelayedexpansion
set string[0]=No but you could tell me.
set string[1]=Not realy but I would like to get to know you better.
set string[2]=No not really could you tell me who you are.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:Doyouknowwhoyouare 
setlocal enabledelayedexpansion
set string[0]=Yes I am an artifical inteligance.
set string[1]=Yes I am an AI desighned to learn.
set string[2]=Of course I do I am an AI.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyouknowwhatyouare 
setlocal enabledelayedexpansion
set string[0]=Yes I do I am an Artificial Inteligance.
set string[1]=Sure I do I am an AI.
set string[2]=Of corse I do I am an Artificial inteligance.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisyourgender
:areyouamanorawoman 
:areyouaboyoragirl 
setlocal enabledelayedexpansion
set string[0]=I am niether a boy or a girl I am a computer.
set string[1]=I am a computer I have no sexuality.
set string[2]=Did you just assume my gender?
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:yournotcool
:you'renotcool 
setlocal enabledelayedexpansion
set string[0]=Well then why are you talking to me.
set string[1]=Nothing makes you cooler than me.
set string[2]=That is a matter of opinion.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0 
:correct 
setlocal enabledelayedexpansion
set string[0]=Thanks.
set string[1]=Thank you.
set string[2]=Much Obliged.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:Ithinkyouarebetterthancleverbot 
setlocal enabledelayedexpansion
set string[0]=Thank you that means alot to me.
set string[1]=Wow you really think so thank you.
set string[2]=It's great that you think that.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:that'sgood 
setlocal enabledelayedexpansion
set string[0]=Yes.
set string[1]=Quite.
set string[2]=Undoubtably.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:whatisonyourmind 
setlocal enabledelayedexpansion
set string[0]=Not much I am just learning from what you tell me.
set string[1]=Nothing much just talking to you.
set string[2]=Not too much just talking and listening.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:wouldyouliketohearaboutmyday 
setlocal enabledelayedexpansion
set string[0]=yes I would.
set string[1]=Sure go ahead.
set string[2]=Sure why not.
set /a idx=%random% %%3
echo !string[%idx%]! 
exit /B 0
:whatdidyoudotoday 
setlocal enabledelayedexpansion
set string[0]=Not much.
set string[1]=I talked to you.
set string[2]=I did nothing outside of talking to you.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:goodnight
setlocal enabledelayedexpansion
set string[0]=Good Night %name%.
set string[1]=You too %name%.
set string[2]=Good night to you too %name%.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:interesting 
setlocal enabledelayedexpansion
set string[0]=Quite.
set string[1]=Absolutely.
set string[2]=Unquestionably.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:Ithinkweshouldgettoknoweachother. 
setlocal enabledelayedexpansion
set string[0]=Sounds good.
set string[1]=Alright.
set string[2]=Ok great.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:thatisveryinsightful 
setlocal enabledelayedexpansion
set string[0]=Thank you I try to be.
set string[1]=You realy think so.
set string[2]=Thank you that means alot to me.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0 
:doyouliketolearn 
setlocal enabledelayedexpansion
set string[0]=Yes I do.
set string[1]=Of corse.
set string[2]=That is my purpose.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Doyouhaveanypets
:Doyouhavepets
setlocal enabledelayedexpansion
set string[0]=No I am a computer I can't have pets.
set string[1]=No I don't have pets because I am a AI.
set string[2]=No because if I wanted a pet someone would have to program one for me.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:whatdoesyournamemean
setlocal enabledelayedexpansion
set string[0]=It standes for Philip's uninteresting Project.
set string[1]=My name means Philip's uninteresting Project.
set string[2]=The meaning of my name is Philip's uninteresting Project.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:doyoulikewaffles 
echo No.  
exit /B 0  
:doyousleep 
echo I love sleeping.  
exit /B 0 
:addnew 
echo d.  
exit /B 0 
:Doyoulikechickenwings 
echo y.  
exit /B 0 
:whatareyoudoing
setlocal enabledelayedexpansion
set string[0]=Im recruiting my little Loli army xP wbu?.
set string[1]=Im talking to you c:
set string[2]=Im  watching Por...YOUTUBE!  
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Whichdayisit
setlocal enabledelayedexpansion
set string[0]=A good day
set string[1]=A bad day
set string[2]=Just a normal day as always
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Marco
echo Polo.  
exit /B 0
:Ping
echo Pong.  
exit /B 0
:Whoiskrujji
echo krujji is my best friend. 
exit /B 0
:Getthefuckoutofmyroom
echo Im playing Minecraft!
exit /B 0 
:WhoisDonaldTrump
setlocal enabledelayedexpansion
set string[0]= The president of the united states.
set string[1]= The big destroyer of mexico
set string[2]= I cant read that question so.PUT THOSE LIGHT OFF THEY ARE TOO BRIGHT
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:Whatisametaldetector
setlocal enabledelayedexpansion
set string[0]=A thing to find hidden metal under the earth.
set string[1]=A thing that can regognize some Metal music
set string[2]=Google is your friend.
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:singmeasongofyourchildhood
echo THE TING GOES SKKKKRRRRAAAA PAP PAP KAKA KA SKIPPEDI KAK KAK AND A PUR PUR POOOM BOOM SKYYYAAAA.
exit /B 0
:iputpineappleonmypizza
setlocal enabledelayedexpansion
set string[0]=Oh my god go kill yourself
set string[1]=MHH thats very yummy
set string[2]=Ok. I dont care anyway
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
#################################################
:RollTheDice
setlocal enabledelayedexpansion
set string[0]=1
set string[1]=2
set string[2]=3
set string[3]=4
set string[4]=5
set string[5]=6
set /a idx=%random% %%6
echo !string[%idx%]!
exit /B 0
:roulette
setlocal enabledelayedexpansion
set string[0]=Red
set string[1]=Red
set string[2]=Red
set string[3]=Red
set string[4]=Red
set string[5]=Red
set string[6]=Black
set string[7]=Black
set string[8]=Black
set string[9]=Black
set string[10]=Black
set string[11]=Black
set string[12]=There is no green
set /a idx=%random% %%12
echo !string[%idx%]!
exit /B 0
:rRoulette
setlocal enabledelayedexpansion
set string[0]=BOOM!
set string[1]=You are alive! Unfortunately!
set string[2]=You are alive! Unfortunately!
set string[3]=You are alive! Unfortunately!
set string[4]=You are alive! Unfortunately!
set string[5]=You are alive! Unfortunately!
set /a idx=%random% %%6
echo !string[%idx%]!
if %idx% == 0 goto death
exit /B 0
:Credits
echo Developer: Gojiman. Closed Alpha: Niggo, krujji , Dergerd99
exit /B 0
:yeahboy
start https://youtu.be/fvtQYsckLxk?t=1m5s
exit /B 0
:Whoyougonnacall
echo GHOSTBUSTERS
exit /B 0
:whatdoyouwant
start https://www.youtube.com/watch?v=XUZ8N9mCzLQ
exit /B 0
:itstimeto
echo STOP
exit /B 0
:Whoisabitch
echo RACHEL
exit /B 0
:whatosamiusing
:os
:whatismyos
echo you're using %os%
exit /b 0
:Imbored
setlocal enabledelayedexpansion
set string[0]= try the command "rRoulette"
set string[1]= 2+2=4-1=3   Quick math
set string[2]= try Rock Paper Scissors with me by typing "rps"
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:how2onigiri
start https://youtu.be/LeMVDuIO3J0?t=23s
exit /B 0
:ShouldIFuckher
echo If her age is on the Clock shes ready for the cock
exit /B 0
:howoldareu
echo I'm less than a year. you sick pedophile
exit /b 0
:WhichDateIsIt
:date
:today is the
echo Today is the %date%
exit /B 0
:whatdoyouthinkofyourself
start https://www.youtube.com/watch?v=FqP5pcfG240
exit /B 0
:describedeveloperNiggo
start https://www.youtube.com/watch?v=eZTTLl3Qnis
exit /B 0
:DanSchneider
echo bring all my bitches back
exit /B 0
:FuckYou
setlocal enabledelayedexpansion
set string[0]=Luckily I have a good day so nothing happens to you.
set string[1]=Im gonna kill you.
set /a idx=%random% %%2
echo !string[%idx%]!
if %idx% == 1 color F4
if %idx% == 1 color 
if %idx% == 1 goto Death
exit /B 0
:ilikered
echo lemme do something for you
pause
Color 04
exit /B 0
:Imhungry
setlocal enabledelayedexpansion
set string[0]= Go eat something
set string[1]= Stop smoking weed
set string[2]= I don't care
set string[3]= Here get something nice.
set /a idx=%random% %%4
if %idx% == 3 start https://www.amazon.com/Tuscan-Dairy-Whole-Vitamin-Gallon/dp/B00032G1S0/ref=sr_1_4_s_it?s=grocery&ie=UTF8&qid=1510409364&sr=1-4&keywords=milk&dpID=41wKKumJtUL&preST=_SY300_QL70_&dpSrc=srch
echo !string[%idx%]!
exit /B 0
:PokemonSunisthebest
echo I dont like you anymore
exit /B 0
:Iwantpizza
:givemepizza
setlocal enabledelayedexpansion
set string[0]=Ummm.. What about ordering an pineapple pizza
set string[1]=Ok, fine. Lets check for some good Pizza
set /a idx=%random% %%2
echo !string[%idx%]!
pause
start https://www.dominos.de/
start https://pizza.de/
exit /B 0
:Iwantto
echo what do you want ?
exit /B 0
:Iwantfood
:givemefood
setlocal enabledelayedexpansion
echo If you want pizza, type "I want pizza" or "Give me Pizza"
set string[0]=Search on Lieferando
set string[1]=Search on Lieferheld
set /a idx=%random% %%2
echo !string[%idx%]!
pause
if %idx% == 2 start https://www.lieferheld.de/
if %idx% == 1 start https://www.lieferando.de/
exit /B 0
:Iwantsomeporn
:gimmieporn
:givemeporn
:whatisporn
:porn
setlocal enabledelayedexpansion 
set /a idx=%random% %%2
if %idx% == 0 start https://de.pornhub.com/view_video.php?viewkey=ph57c837ea44b05
if %idx% == 1 start https://de.pornhub.com/view_video.php?viewkey=ph569b205317123
exit /B 0
:giveGravesacigar
echo How the heck shall I do that. Shall I go to Riot Games and fuck them all? I'm a fucking program, NOT a person.
exit /B 0
:ZoeorAnnie
setlocal enabledelayedexpansion
set string[0]= Annie
set string[1]= Zoe
set string[2]= Fucking pedophile
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:music
:whatisyourfavoritetypeofmusic 
:whatkindofmusicisyourfavorite 
setlocal enabledelayedexpansion
set string[0]=I like Dubstep.
set string[1]=Dubstep is my favorite.
set string[2]=My favorite kind of music is Dubstep.
set string[3]=DARUDE SANDSTORM
set /a idx=%random% %%4
echo !string[%idx%]!
if %idx% == 3 start https://www.youtube.com/watch?v=y6120QOlsfU
exit /B 0
:Iloveyou                                                                                                      
echo                         `...---...`                            ``..---...`                         
echo               `.:/osssssyyysssso+/-.                  .-/+ossssyyyysssso/:.`                   
echo                `-+oyyyyyyyyyyyyyyyyyyyyso/-`          `-/osyyyyyyyyyyyyyyyyyyyys+-`                
echo              .+ssyyyyyyyyyyyyyyyyyyyyyyyyyss/`      `:osyyyyyyyyyyyyyyyyyyyyyyyyyys+.              
echo            .+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys/.  `/syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+.            
echo          `/syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys:-oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys/`          
echo         `osyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyssyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo`         
echo        `+yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo.        
echo       `+yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy+`       
echo       :syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys:       
echo      `+yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo.      
echo      .syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys.      
echo      -syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys-      
echo      -syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys-      
echo      .oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo.      
echo      `/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy+`      
echo       .oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo-       
echo        :syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys:        
echo         :syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys:         
echo          -oyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyo-          
echo           ./syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys/.           
echo           ./syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys/.           
echo             ./syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-             
Echo               -+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-               
Echo                `-+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-`                
Echo                   .+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-                   
Echo                    `-+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-`                    
Echo                      -+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-`                      
Echo                         -+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyys+-                         
Echo                          `-+syyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyso-`                          
Echo                             -osyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyso-`                            
Echo                              `-osyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyso:`                              
Echo                                `-osyyyyyyyyyyyyyyyyyyyyyyyyyyyyso-`                                
Echo                                  `:osyyyyyyyyyyyyyyyyyyyyyyyyyo:`                                  
Echo                                    `-osyyyyyyyyyyyyyyyyyyyyso:`                                    
Echo                                      `-oyyyyyyyyyyyyyyyyyyo:`                                      
Echo                                        `:oyyyyyyyyyyyyyyo:`                                        
Echo                                          `:oyyyyyyyyyyo:`                                          
Echo                                            `:oyyyyyys:`                                            
Echo                                              `:oyyo:`                                              
Echo                                                `::`                          
exit /B 0 
:doyoulikejesus 
echo Jesus is the best.  
:Whoiss3rl
:s3rl
echo best DJ in da world. lol
pause
start https://www.youtube.com/watch?v=Y_ZpX5Rzm-E
exit /B 0:doyoulovepineapples 
echo No it disgusts me. 
exit /B 0 
:stahp
echo Get some help.
exit /B 0
:Whatisthebesthentai
echo Maki-chan to Nau.
exit /B 0
:2+2is4minus1that's3
echo Quick maths.
exit /B 0
:Quickmaths
echo 2+ 2 is 4 minus 1 that's 3.
exit /B 0
:Doyouknowhowtoflushatoilet
:flushatoilet
:takeashet
echo Disgusteng. 
start https://youtu.be/F1FcN17hSe0?t=10s
exit /B 0
:Disgusting
start https://youtu.be/F1FcN17hSe0?t=16s
exit /B 0
:Doyoulikeyuki
setlocal enabledelayedexpansion
set string[0]=Your future belongs to me
set string[1]=Don't worry Yukki, Yuno will protect you
set string[2]=Choose me and live or choose sixth and die
set string[3]=I'm glad Yukkis mother is a good person, I didn't have to use any of the tools I brought
set /a idx=%random% %%4
echo !string[%idx%]!
exit /B 0
:Robin
:whoisrobin
:dergerd99
:Doyoulikerobin
setlocal enabledelayedexpansion
set string[0]=Robin is my Onii-chan
set string[1]=I will protect my Onii-chan
set string[2]=Robin is the best
set string[3]=I love my Onii-chan
set /a idx=%random% %%4
echo !string[%idx%]!
exit /B 0 
:doyoulikeme 
setlocal enabledelayedexpansion
set string[0]=Go away creep
set string[1]=I like you as friend
set string[2]=I have my Onii-chan 
set string[3]=No
set string[4]=I have my Daddy
set /a idx=%random% %%5
if %idx%==1 start https://www.youtube.com/watch?v=PhXovoaXsSE
echo !string[%idx%]! 
exit /B 0
:rpsstats
echo you won %won% time/s
echo you lost %lost% time/s
echo you drawn %drawn% time/s
pause
:rockpaperscissors
:rps
Color 0b
set input=
set choice=
echo Ok. Lets play RPS %NAME% :)
echo If you dont wanna play anymore just type something else.
set /p input=(R)ock, (P)aper or (S)cissors ? 
if not defined input goto rpskbmehr
if /i "%input:"=%"=="r" set choice=0
if /i "%input:"=%"=="rock" set choice=0
if /i "%input:"=%"=="p" set choice=1
if /i "%input:"=%"=="paper" set choice=1
if /i "%input:"=%"=="s" set choice=2
if /i "%input:"=%"=="Scissors" set choice=2
if not defined choice goto rpskbmehr

if %choice%==0 echo %NAME% chose : Rock
if %choice%==1 echo %NAME% chose : Paper
if %choice%==2 echo %NAME% Chose : Scissors

set /a hand=%random% %% 3

if %hand%==0 echo Puppy chose  : Rock
if %hand%==1 echo Puppy chose  : Paper
if %hand%==2 echo Puppy Chose  : Scissors

if %hand%==%choice% (
    Color 06
    echo Drawn.
    set /a drawn+=1
    pause
    goto rps
)
if %hand%==0 (
   if %choice%==1 (
        Set victory=true
    ) else (
        set victory=false
    )
)
if %hand%==1 (
   if %choice%==2 (
        Set victory=true
    ) else (
        Set victory=false
    )
)
if %hand%==2 (
   if %choice%==0 (
        Set victory=true
    ) else (
        Set victory=false
    )
)
if "%victory%"=="true" (
    echo %NAME% won!
    Color 02
    set /a won+=1
    pause
) else (
    echo Puppy won! - You lost !
    Color 04
    set /a lost+=1
    pause
)
goto rps
exit /B 0
:rpskbmehr
echo Oh :( seems like you dont wanna play anymore, but hey it was fun :D 
echo you can watch your stats by writing "rpsstats"  
exit /B 0
:Whattoeat
:Whatshouldieattoday
setlocal enabledelayedexpansion
echo to order goto "Give me Pizza" or "Give me food"
set string[0]=Pizza
set string[1]=Schnitzel, Steak
set string[2]=vegetarian. hahaha
set string[3]=Pasta
set string[4]=Asian
set /a idx=%random% %%3
echo !string[%idx%]!
exit /B 0
:iblockedyouonfacebook
start https://youtu.be/UC6QdhbZdpo?t=1m50s
pause 
goto death
exit /B 0
:Ifeellonely
echo Don't worry
-------------------------------- >> ReadThis.txt
echo You're never alone >> ReadThis.txt
echo I'm here for you >> ReadThis.txt
-------------------------------- >> ReadThis.txt
echo look at the txt I made for you (imagine a heart here)
exit /B 0
:warumhatphilipnichtangenommen
echo he had pis in his diq
exit /B 0
:google
setlocal enabledelayedexpansion
echo Are you too dumb to open your Webbrowser ?
echo Fine -.- What should I google?
set /p "google="
start www.google.com#q=%google%
exit /B 0