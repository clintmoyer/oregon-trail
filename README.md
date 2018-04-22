Oregon Trail
============

The original Oregon Trail.

![screenshot](https://i.imgur.com/EW2vHKg.png)

Contents
--------

1. [Building](#building)
2. [Background On The OREGON Program](#background-on-the-oregon-program)
3. [Historical Backup Information](#historical-backup-information)
4. [References](#references)
5. [License/Copying](#license--copying)

Building
--------

This source code can be compiled with [FreeBASIC](https://www.freebasic.net).
FreeBASIC is a completely [free, open-source](https://github.com/freebasic/fbc)
BASIC compiler that has syntax most similar to MS-QuickBASIC.

The QuickBASIC dialect should be selected to leverage classic features
such as line numbers.

Install the compiler, and then the source code may be compiled.

    $ fbc -lang qb OREGON.bas

Background On The OREGON Program
--------------------------------

In 1971, Don Rawitsch and Bill Heinemann were participating together in
a practice teaching program as students at Careton College, Northfield,
Minnesota. Don was teaching a class on the history of the American West
and provided the preliminary information which Bill, a math teacher,
used to construct the OREGON program. The program was first implemented
on the Minneapolis Schools timesharing system. On the completion of the
practice teaching program, the program was removed from the Minneapolis
system and remained only as a curled up listing until Don joined the
[MECC](https://en.wikipedia.org/wiki/MECC) staff in 1974 and loaded it
onto the MECC system. Don then proceeded to do further research on the
Oregon Trail and modified the program for historical accuracy to produce
the present version. The program has been implemented on
[Hewlett-Packard](https://en.wikipedia.org/wiki/HP_Time-Shared_BASIC),
[UNIVAC](https://en.wikipedia.org/wiki/List_of_UNIVAC_products), and
[Control Data systems](https://en.wikipedia.org/wiki/Control_Data_Corporation).

Historical Backup Information
-----------------------------

Although historical information about the trip to Oregon is not
extremely plentiful, primary and secondary sources were used whenever
possible to make the simulation authentic. Probability curves for being
attacked by riders and for being in the mountains are representative
of the geographic features of the land. (Riders attack more frequently
on the plains.)

### Bibliography

* __Ghent, William J.__, _The Road to Oregon_, Longmans, Green & Co.,
New York, 1929.
* __Hancock, Samuel__, _Narrative of Samuel Hancock_, George H. Harrap
& Co., Ltd., London, 1927.
* __Meeker, Ezra__, _Ox Team Days on the Oregon Trail_, E. Meeker,
New York, 1907.
* __Morgan, Dale L.__, _Overland in 1846_, Talisman Press, Georgetown,
California, 1963.

### Mileage and route of the Trail

* Morgan, insert-back cover, "map of T.H. Jefferson - 1849".
* Hancock, xiv, xv, information based on a map of 1846.
* Meeker, _Ox Team Days_, pp. 252-53.
* Meeker, _Ox Team Days_, p. 61 - says travelers averaged 15-25 miles
per day, though they didn't travel every day. In the simulation,
players make about 175-200 miles every two-week period.
* Ghent, p. 73 - says ox-drawn wagons made 2 miles per hour, or 20
miles on good days and 5-10 miles on bad days.

### Costs of resources

* Meeker, _Ox Team Days_, p. 13, says in 1850's sugar cost 18¢/lb.,
salt cost $3.00/barrel, calico cost 15¢/yd.
* Ghent, p. 99, says a team of oxen cost about $200 (for eight);
references a guidebook of the time which recommends the following to
be included for each adult: 150 lbs. of flour, 25 lbs. of bacon,
25 lbs. of sugar, 15 lbs. of coffee. In the simulation, the player
spends $200-$300 on an oxen team. Based on the Meeker information,
if the average commodity cost about 20¢/lb. and the average family
of five eats as much as four adults, a good food stock would cost
about $175. This is a reasonable amount to start with in the simulation.

### Frequency of misfortunes occuring

* [Table 1](https://i.imgur.com/Z1OQzLM.png) shows a frequency anaylsis
of events mentioned in the diaries of three people that traveled the
entire length of the trail. The probabilities of events occuring in the
simulation are based on this analysis.

### Miscellaneous

* Dates and days of the week shown are correct for 1847.
* The average trip in the simulation takes about 12 two-week turns.
There were six forts on the trail. In the simulation a player gets the
option to stop at a fort every other turn.

References
----------

* [Don Rawitsch Reddit AMA](https://www.reddit.com/r/IAmA/comments/43ooqf/i_am_don_rawitsch_a_coinventor_of_the_original)
* [Don Rawitsch presentation](http://www.gdcvault.com/play/1024251/Classic-Game-Postmortem-Oregon-Trail)
* [Oregon Trail’s Co-Creator Didn’t Make Much Money. He Should Have Chosen to Be a Banker.](http://www.slate.com/blogs/future_tense/2016/02/01/oregon_trail_co_creator_don_rawitsch_answers_questions_in_reddit_ama_about.html)
* [The Forgotten History of 'The Oregon Trail,' As Told By Its Creators](https://motherboard.vice.com/en_us/article/qkx8vw/the-forgotten-history-of-the-oregon-trail-as-told-by-its-creators)
* [The History Behind The Oregon Trail](https://www.wired.com/2007/06/the-history-beh)

License / Copying
-----------------

This project makes no effort to change the original source code shared
in
[Creative Computing May 1978 issue](https://ia800307.us.archive.org/3/items/creativecomputing-1978-05/Creative_Computing_v04_n03_1978_May-June.pdf). Dan Rawitsch described
his program in-depth in this issue and shared the source code in classic
BASIC.
