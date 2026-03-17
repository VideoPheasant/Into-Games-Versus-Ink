=== function report_time ===

//We assume the game starts at 8AM, and that one unit of the time variable is 1 minute. We can then calculate the number of hours on the clock

~temp hours = time / 60 + 8

//We can get the number of clock minutes by cycling around 60 using the % to return the remainder after integer division. Fancy!

~temp minutes = time % 60

//Since the game features a countdown, we might as well report that time as well by repeating the above two operations against the time between now and dinner. This time we add nothing to the hours, because we don't expect to run that high or represent the value on a clock.

~temp time_to_dinner = dinner_time - time
~temp remaining_hours = time_to_dinner / 60
~temp remaining_minutes = time_to_dinner % 60

//Then we give a readout of the time. If there are less than ten hours on the clock we show a 0 at the front, otherwise we just show the actual hours in total. We do the same with less than to minutes to ensure we get a leading zero there as well.

The time is {hours < 10:0}{hours}:{minutes < 10:0}{minutes}.


//We also want to display the time until dinner, along with a message that supercedes everything else in case it is in fact dinner time.

{   time_to_dinner == 0:

Oh shit! It's dinner time! 

-   else:


You have {remaining_hours > 0:{remaining_hours} hour{remaining_hours > 1:s}} {remaining_minutes > 0 && remaining_hours > 0:and}{remaining_minutes > 0: {remaining_minutes} minute{remaining_minutes > 1:s}} until dinner time.

    }

                            
=== function advance_time(x) ===

~time = time + x