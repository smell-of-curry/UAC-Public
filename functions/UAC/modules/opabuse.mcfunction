#This actually keeps people from doing dmg in creative. using game bug.
#Yes I know weakness in theory  will nerf your damage. However, with strength, your hits won't even register on any mob.
execute @s[m=c,name=!NightwalkerLots] ~~~ effect @s strength 30 5 true
execute @s[m=!c,name=!NightwalkerLots] ~~~ effect @s strength 30 5 true

#Disable the GodMode tool & vanish mode
execute @s[tag=staffstatus,scores={opamtoggle=1}] ~~~ tag @s remove tgmGodMode
execute @s[tag=staffstatus,scores={opamtoggle=1}] ~~~ scoreboard players reset @s tgmGodMode
execute @s[tag=staffstatus,scores={opamtoggle=1}] ~~~ tag @s remove spectate
execute @s[tag=staffstatus,scores={opamtoggle=1}] ~~~ scoreboard players reset @s vnsh

#Adds a tag for the enabled/disabled check
execute @s[scores={opamtoggle=1}] ~~~ scoreboard players set @s OPAM 1
execute @s[scores={opamtoggle=0}] ~~~ scoreboard players set @s OPAM 0
scoreboard players operation @s opamtoggle = opamtoggledummy opamtoggle

#This hides this from the in-game function command directory
execute @f ~~~ hide
tag @f[tag=""] add hide
