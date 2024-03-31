@echo off
color 0A
:inicio
set resp=0
set chemicals=0
set idea=0
set ufo=0
set evil=0
set fuel=0
title ASDF History - Introducion
echo Hi, are you okay?
echo A) Yes
echo S) No
echo D) Why not?
echo F) Of course not!
Set /p resp=Ans: 
if {%resp%}=={a} ( goto a0 )
if {%resp%}=={s} ( goto a1 )
if {%resp%}=={d} ( goto a2 )
if {%resp%}=={f} ( goto a3 )                                                                                    
cls
goto inicio

:a0
cls
echo So, isn't dark at all...
echo I don't even knew that losing the eyes are so painless
pause
goto b

:a1
cls
echo About it...
echo I don't think you will be able to see anything
pause
goto b

:a2
cls
echo I don't know, maybe some headache
echo Maybe not having your eyes anymore due to an terrible accident
pause
goto b

:a3
echo People ask this sort of thing, don't they?
echo If you were able to see me, would see that I'm completely clueless
pause
goto b

:b
echo Who I am!? How don't you remember?
echo I'm your cat, your animal language translator worked!
echo But the sad thing is that something in yor lab exploded and you...
pause
title ASDF History - The lab
echo Well, ya know, became completely blind
echo What do we do now?
pause
echo Cool idea, I'll be your guide cat!
echo So, we can go by this way and...
echo Oh, looks like your door is locked
echo Shame on you don't having a emergency exit

:lab0
set resp=0
cls
echo What do we do now?
echo A) I'll take the keys in my pocket
echo S) I'll search my drawer
echo D) Please, search by the floor
echo F) Let's break down this door!
Set /p resp=Ans: 
if {%resp%}=={a} ( goto b0 )
if {%resp%}=={s} ( goto b1 )
if {%resp%}=={d} ( goto b2 )
if {%resp%}=={f} ( goto b3 )
cls
goto lab0

:b0
if {%chemicals%} == {1} ( goto b00 )
echo Yeah, that's it, all your pockets have a huge hole
echo the key isn't with you, there's no way!
pause
cls
goto lab0

:b1
if {%chemicals%} == {1} ( goto b00 )
if {%idea%}=={1} ( goto b10 )
echo Oh, the keys isn't here?
pause
cls
goto lab0

:b2
if {%chemicals%} == {1} ( goto b00 )
echo I have two news, I'll give the good one first
echo The good news is that I found the key
echo The bad news is it is broken under the rubble
pause
cls
goto lab0

:b3
echo That's a very nice idea, but we haven't any explosives
if {%chemicals%} == {1} ( goto b30 )
set idea=1
pause
cls
goto lab0

:b00
echo I thought you'd blow up the door
pause
cls
goto lab0

:b10
echo What are you looking for?
echo Oh, I see... You'll make explosives!
set chemicals=1
pause
cls
goto lab0

:b30
echo Oh I see, if we mix this with this...
echo BOOOMM
echo Let's get out of here, all the place is falling apart!
title ASDF History - Sewers
echo Argh! This place stinks!
set lab=0
pause
cls

set sewerl=3
:sewers
set resp=0
cls
title ASDF History - Sewers
echo What do we do now?
echo A) Let's go with the flow
echo S) Let's move against the flow
echo D) Let's go up!
echo F) Let's get this room
Set /p resp=Ans: 
if {%resp%}=={a} ( goto c0 )
if {%resp%}=={s} ( goto c1 )
if {%resp%}=={d} ( goto c2 )
if {%resp%}=={f} ( goto c3 )
Set /p resp=Ans: 
goto sewers

:c0
if {%sewerl%}=={1} ( goto c01 )
if {%sewerl%}=={2} ( goto c02 )
if {%sewerl%}=={3} ( goto c03 )
if {%sewerl%}=={4} ( goto c04 )
if {%sewerl%}=={5} ( goto cdeadend )

:c1
if {%sewerl%}=={1} ( goto cdeadend )
if {%sewerl%}=={2} ( goto c12 )
if {%sewerl%}=={3} ( goto c13 )
if {%sewerl%}=={4} ( goto c14 )
if {%sewerl%}=={5} ( goto c15 )

:c2
if {%sewerl%}=={1} ( goto cnoladde )
if {%sewerl%}=={2} ( goto c22 )
if {%sewerl%}=={3} ( goto cnoladde )
if {%sewerl%}=={4} ( goto c24)
if {%sewerl%}=={5} ( goto cnoladde )

:c3
if {%sewerl%}=={1} ( goto c31 )
if {%sewerl%}=={2} ( goto cnoroom )
if {%sewerl%}=={3} ( goto c33 )
if {%sewerl%}=={4} ( goto cnoroom )
if {%sewerl%}=={5} ( goto c35)

:cdeadend
echo It's a dead end
pause
goto sewers

:cnoladde
echo There's no ladder
pause
goto sewers

:cnoroom
echo There's only a plain wall
pause
goto sewers

:c01
set sewerl=2
goto sewers

:c02
set sewerl=3
goto sewers

:c03
set sewerl=4
goto sewers

:c04
set sewerl=5
goto sewers

:c12
set sewerl=1
goto sewers

:c13
set sewerl=2
goto sewers

:c14
set sewerl=3
goto sewers

:c15
set sewerl=4
goto sewers

:c22
echo There's a car parked up here
if {%fuel%} == {0} ( set fuel=1)
if {%chemicals%} == {2} ( goto c220 )
pause
goto sewers

:c24
title ASDF History - Alley
echo We are in an alley!
echo That's strange, there's no one in the streets, what happened here?
pause
goto alley

:c31
if {%chemicals%} == {2} ( goto c310 )
echo Look's like your archrival locked his lab too
pause
goto sewers

:c33
echo Look, this room is empty!
pause
goto mystery

:c35
if {%chemicals%} == {2} ( goto c350 )
echo There's rubble obstructing the passage to your lab
echo I wonder if we can remove this somehow
pause
goto sewers

:c220
echo I don't think its a good idea fire this thing up
echo Anyway, we don't want to broke no one's car
goto sewers

:c310
if {%evil%} == {1} ( goto c3100 )
echo Yes, the door is in this direction
echo Wow! The whole door shrank
set evil=1
pause
goto sewers

:c350
if {%lab%} == {1} ( goto thelab )
echo All the rubble shrank and now we can enter back in our lab!
set lab=1
pause
goto thelab

:c3100
if {%idea%} == {4} ( goto c31000 )
if {%evil%} == {2} ( goto cnoroom )
echo Now the door shank so much that I can't even see it
set evil=2
pause
goto sewers

:c31000
echo A nice kick, shame it was in the wall
echo Yes, the little door is in that way
echo Now I need to find that thing, isn't?
pause
echo Here it is! Let's upgrade the animal translator!
set idea=5
pause
goto sewers

:mystery
if {%alienglasses%}=={1} ( goto nomyster )
echo I feel something strange, but there's nothing here
echo I'll not stay here, we shall return
pause
goto sewers

:nomyster
echo Now I can see everything!
echo We are in a Lab with lots of those
echo little strange creatures
pause
goto alienlab

:alley
set resp=0
cls
title ASDF History - Alley
echo What do we do now?
echo A) Let's search for something in the thash can
echo S) Let's wait here for someone
echo D) Let's go back!
echo F) Let's go to the streets
Set /p resp=Ans: 
if {%resp%}=={a} ( goto d0 )
if {%resp%}=={s} ( goto d1 )
if {%resp%}=={d} ( goto d2 )
if {%resp%}=={f} ( goto d3 )
Set /p resp=Ans: 
goto alley

:d0
echo Hey, why you can and not I?
if {%idea%}=={3} ( goto d00 )
:d11
echo There's nothing!?
set idea=2
pause
goto alley

:d1
pause
pause
pause
if {%ufo%} == {2} ( goto d10 )
echo No one in sight...
pause
goto alley

:d2
echo Aww back to the stinky place
pause
goto sewers

:d3
echo It's suposed to have a light like this?
echo AAAHHHH we're floating!
pause
if not {%ufo%} == {0} ( goto d30 )
echo What are those things!?
echo They look like you, but they are about my size!
set ufo=1
pause
goto ufo

:d00
if {%alienglasses%} == {1} ( goto d11 )
echo Hey, this looks like one of those things that that guy was wearing
echo What!? Why are you putting it in me?
set alienglasses=1
pause
goto alley
pause 

:d10
echo There are some of those things here
echo But this has something in the eye
if {%idea%} == {2} (set idea=3)
echo It has gone to the sewers
pause
goto alley

:d30
set ufo=1

:ufo
set resp=0
cls
title ASDF History - Ufo
echo What do we do now?
echo A) Let's get back!
echo S) Let's attack them!
echo D) Let's search for something
echo F) Hey you, what do you want from us?
Set /p resp=Ans: 
if {%resp%}=={a} ( goto e0 )
if {%resp%}=={s} ( goto e1 )
if {%resp%}=={d} ( goto e2 )
if {%resp%}=={f} ( goto e3 )
Set /p resp=Ans: 
goto ufo

:e0
if {%ufo%}=={2} ( goto alley )
echo The light is pushing us back!
pause
goto ufo

:e1
if {%idea%} == {8} ( goto 31 )
if {%ufo%} == {2} ( goto e10 )
echo There's a invisible wall between us!
pause
goto ufo

:e2
echo There's a lever right here, I'll switch it
if {%ufo%} == {2} ( set ufo=1)
if {%ufo%} == {1} ( set ufo=2)
pause
goto ufo

:e3
if {%idea%} == {8} ( goto 31 )
if {%idea%} == {7} ( goto happy )
echo I think they don't understand
if not {%idea%} == {6} ( echo If at least we had anything to translate them... )
if {%idea%} == {6} ( goto e30 )
pause
goto ufo

:e10
goto alienatt

:e30
if {%ufo%} == {1} ( goto e300 )
if {%ufo%} == {2} ( goto e301 )
goto ufo

:e31
echo They'd gone...
goto ufo

:e300
echo There's a invisible wall between us!
pause
goto ufo

:e301
echo Meow!
echo Now I can understand you, we can ask you a favor
echo We are in need of fuel for back to our own galaxy
echo We need about a 1.5845 Kg of fossil fuel
pause
goto alienfuel

:alienfuel
echo Do you know were we can take some?
echo A) Yes
echo S) No
echo D) Maybe
echo F) Get out of here!
Set /p resp=Ans: 
if {%resp%}=={a} ( goto h0 )
if {%resp%}=={s} ( goto h1 )
if {%resp%}=={d} ( goto h2 )
if {%resp%}=={f} ( goto h3 )
Set /p resp=Ans: 

:h0
if {%fuel%}=={1} ( goto h00)
echo You do not know were the fuel are, but insist to "help"?
echo this is an insult!
pause
goto h3

:h1
if {%idea%}=={7} ( goto h3 )
pause
goto ufo

:h2
echo I see that you have been injured recently
echo If you help us, we will cure you, you will help?
set idea=7
pause
goto alienfuel

:h3
echo Because of your insolence, I will punish you!
goto end
pause
goto alienfuel

:h00
echo Thank you very much, bye!
set idea=8
goto alley

:alienlab
set resp=0
cls
title ASDF History - Alien Lab
echo What do we do now?
echo A) Let's get back!
echo S) Let's attack them!
echo D) Let's look for something
echo F) Hey you, what do you want from us?
Set /p resp=Ans: 
if {%resp%}=={a} ( goto f0 )
if {%resp%}=={s} ( goto f1 )
if {%resp%}=={d} ( goto f2 )
if {%resp%}=={f} ( goto f3 )
Set /p resp=Ans: 
goto alienlab

:f0
echo Yes, I think this is the best idea
pause
goto sewers

:f1
goto alienatt

:f2
if {%chemicals%} == {2} ( goto f20 )
echo There are some water guns with a weird liquid on it
echo Please, don't point this to me, I hate water!
if {%chemicals%} == {1} (set chemicals=2)
pause
goto alienlab

:f3
echo I think they don't understand
echo If at least we had anythin to translate them?
pause
goto alienlab

:f20
echo There's nothing new here
pause
goto alienlab

:thelab
set resp=0
cls
title ASDF History - The Lab
echo What do we do now?
echo A) Let's get to the oficce!
echo S) I'll check my drawer
echo D) Idk, let the world burn, I have back my Lab
echo F) Let's go back
Set /p resp=Ans: 
if {%resp%} == {a} ( goto g0 )
if {%resp%} == {s} ( goto g1 )
if {%resp%} == {d} ( goto g2 )
if {%resp%} == {f} ( goto g3 )
goto thelab

:g0
if {%idea%} == {5} ( goto g00 )
echo Let's upgrade the animal language translator to
echo allow us to talk with these aliens!
set idea=3.5
pause
goto thelab

:g1
echo There's nothing more here?
if  {%idea%} == {3.5} ( goto g10 )
:g11
pause
goto thelab

:g2
cls
echo Are you sure?
echo A) OMG, no!
echo S) No, I`m not sure
echo D) Maybe not
echo F) Yeah, let the world burn
Set p resp=Ans?
if }%resp%| == }a| ( goto thelab )
if }%resp%| == }s| ( goto thelab )
if }%resp%| == }d| ( goto thelab )
if }%resp%| == }f| ( goto slowdeat )
pause
goto g2

:g3
goto sewers

:g00
echo Now take this... meow!
echo Meow? Meow!
pause
echo Oh, this is heavy! Now this works with the strange ones?
set idea=6
pause
goto thelab

:g10
echo maybe someone took what you need
set idea=4
goto g11

:alienatt
if not {%chemicals%} == {2} ( goto attack )
echo Gotcha! Wait, what?
echo This don't work in them!
:attack
echo But they're armed with water guns!
echo Master, you're shrinking!
echo NOOOOOO!
goto end

:slowdeat
start iexplore.exe
goto slowdeat

:happy
echo Meow!
echo I received orders of the commander of our fleet
echo I will repare your eyes, there is it
echo By tomorrow you will began to see again!
pause
goto credits

:credits
cls
echo Thanks for playing!
echo Game made by Alvaro Carvalho
echo Contacts:
echo Twitter - A11v1r15
echo Facebook - Facebook.com/a11v1r15
echo e-mail - A11v1r15@Rocketmail.com
pause
cls
echo Now that you finished the game
echo What do YOU do now?
pause
:end
cls
echo GAME OVER
pause