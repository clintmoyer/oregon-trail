# Oregon Trail

The original Oregon Trail game unchanged since 1971. Shared in the May 1978 issue of Creative Computing magazine.

<img width="400" alt="magazine article title" src="https://github.com/user-attachments/assets/491481ca-03d2-4cef-bf9d-908c6bd038a1"><img width="400" alt="magazine article code" src="https://github.com/user-attachments/assets/fbb6ae7e-adfa-4136-9ed1-11dd98de0f33">

## Gameplay

<img width="700" src="https://github.com/user-attachments/assets/fe939bae-eb1c-4499-bfd8-bc2fd096ba0e" />

## Build

### FreeBASIC (Windows/Linux)

```bash
fbc freebasic/oregon.bas
```

Download FreeBASIC: https://github.com/freebasic/fbc

### QB64 (macOS/Windows/Linux)

```bash
qb64 -c qb4/oregon.bas
```

Download QB64: https://github.com/QB64Team/qb64

### Original

The original source code was written in BASIC 3.1 for a CDC Cyber 70 series mainframe.

Requirements:
* DtCyber (Control Data 6000 Series Emulator)
* NOS 1.x or NOS 2.x deadstart tape image

https://github.com/kej715/DtCyber

Alternatively, run on the Apple II emulator from MicroM8.
Apple II original devices used Applesoft BASIC and cannot run the program.
This emulator adds support for BASIC 3.1 libraries.

https://paleotronic.com/software/microm8

<img width="700" src="https://github.com/user-attachments/assets/d261d8a9-ed77-4032-b3a8-3dc652ad1060" />

## Timeline

* December 3, 1971: Oregon Trail v1 published by Don Rawitsch to HP 2100 minicomputer
* 2 weeks later: Rawitsch deletes program from computer at end of semester
* October 1974: Rawitsch hired by MECC
* November 1974: Rawitsch rewrites original game from teletype paper copy
* 1975: Oregon Trail v2 published by MECC for statewide timeshare system
* 1978: Rawitsch published the full BASIC source code in the May–June 1978 issue of Creative Computing magazine
* 1985: Oregon Trail v3 published by Philip Bouchard for Apple II with color graphics
* 1995: Oregon Trail II published by SoftKey Multimedia developed by MECC

## History

In 1971, Don Rawitsch, Bill Heinemann, and Paul Dillenberger were all seniors at Carleton College in Minnesota. They were at Bryant Junior High School in Minneapolis to complete their student teaching requirements.

While they were all student teachers, they had different focus areas:

* Don Rawitsch was a history major assigned to teach an 8th-grade history unit on "The Western Expansion of the Mid-19th Century."
* Bill Heinemann and Paul Dillenberger were math majors teaching math classes.

The game was born because Rawitsch was looking for an innovative way to engage his students with history beyond textbooks. He originally designed it as a board game on a large sheet of paper on the floor of the apartment the three men shared.

When Heinemann and Dillenberger saw the board game, they realized it would work much better as a computer program. They had experience with programming and access to the school district's mainframe via a teletype terminal located in a former janitor's closet at the school.

Over the course of about two weeks, they developed the code:

* Heinemann and Dillenberger handled the programming logic and algorithms (like the hunting mechanic).
* Rawitsch provided the historical research and narrative.

They often worked late into the night at the school to use the teletype. Interestingly, some of their own students—including a young student who would later become the musician Prince—were among the first to test the game at the school before it was officially debuted in Rawitsch's history class on December 3, 1971.

Some of the changes introduced in the Minnesota release (1975):

* The Death Rates: He adjusted the likelihood of disease and accidents based on actual historical frequency found in pioneer journals.
* The Economy: He balanced the prices of oxen, food, and clothing to reflect 1840s inflation.
* The Shooting Mechanic: He updated the "BANG" typing mechanic to include words like "POW" or "WHAM" so students couldn't just keep their fingers on the same four keys.

## References

- [Don Rawitsch Reddit AMA](https://www.reddit.com/r/IAmA/comments/43ooqf/i_am_don_rawitsch_a_coinventor_of_the_original)
- [Don Rawitsch GDC Presentation](http://www.gdcvault.com/play/1024251/Classic-Game-Postmortem-Oregon-Trail)
- [Oregon Trail's Co-Creator Interview (Slate)](http://www.slate.com/blogs/future_tense/2016/02/01/oregon_trail_co_creator_don_rawitsch_answers_questions_in_reddit_ama_about.html)
- [The Forgotten History of The Oregon Trail (Vice)](https://motherboard.vice.com/en_us/article/qkx8vw/the-forgotten-history-of-the-oregon-trail-as-told-by-its-creators)
- [The History Behind The Oregon Trail (Wired)](https://www.wired.com/2007/06/the-history-beh)
