#> later.prt:api > enable
#--------------------
# ...
#--------------------
# ...
#--------------------
#> enables player-relative-time for the last task scheduled by later:api/delay.
#--------------------
#- literal shorthand for `data modify storage later:data tasks[-1].prt set value true`
#--------------------
# 1 - success
# 0 - no scheduled tasks or the last task already has player-relative-time enabled.
#--------------------

return run data modify storage later:data tasks[-1].prt set value true