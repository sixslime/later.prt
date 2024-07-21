#> later.prt:api > enable
#--------------------
# ...
#--------------------
# ...
#--------------------
#> enables player-relative time for the last task scheduled by later:api/delay.
#--------------------
#- literal shorthand for `data modify storage later:data tasks[-1].prt set value true`
#--------------------
# ...
#--------------------

data modify storage later:data tasks[-1].prt set value true