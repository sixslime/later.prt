#> later.prt:_/impl/player/reg
#--------------------
# _/load
#--------------------

data modify storage later.prt:data _.players append value {}
data modify storage later.prt:data _.players[-1].UUID set from entity @s