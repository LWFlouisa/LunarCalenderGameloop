# LunarCalenderGameloop
Having to refactor how the Lunar Calender works for my text adventures.

## Lunar Phases
This game loop follows the basic lunar phases, basing decrements and increments on what phase of the lunar cycle, multiplied by the player level. A level 15 player during a New Moon will always be stronger than a Full Moon player at level one, even if a Level 15 could never compete against a Level 15 in Full Moon in their respective environments.

~~~
new_moon
waxing_crescent
first_quarter
waxing_gibbous
full_moon
waning_gibbous
last_quarter
waning_crescent
~~~
