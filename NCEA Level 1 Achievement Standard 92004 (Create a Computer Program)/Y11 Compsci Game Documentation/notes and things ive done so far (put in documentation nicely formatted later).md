v1: make money per second, can click for money
v2: continuation of above, added upgrades to increase money per click and money per second
v3: started from nothing again, made a system that allows saving and loading

v4(current/in progress): began combining v2 and v3. added the framework nessecary for multiple resources to the stat manager script. created a framework to show text when hovering over an achievement icon. began to develop a system for having multiple saves. created a tracker for ticks (20 per second) and seconds elapsed. created a tracker of unlocked achievements and only show the unlocked ones. created a new upgrades system


bugs i fixed: 
using the >= instead of the <= operator. i was checking if the cost was equal to or more than you have, not less than or equal to what you have.

used get("b") instead of a["b"] (the correct one), but fixed it

strings and nodepaths

TODO:
finish multi-save system - save resources, unlocks, upgrades, achivements - done
allow players to set a name(not doing, reflect)
add some easter egg achievements (hitchhikers guide, foundation, dune, etc.) (not doing bc time and complexity)
create the achievements system (not many exist bc time, reflect) (not doing any besides a welcome bc no time)
create the new upgrades system - done
create the new system that has multiple resources, gained in various ways - done