' PROGRAM NAME - OREGON TRAIL - UPDATED VERSION
' Original version from 01/01/78 by Bill Heinemann, updated for modern BASIC

DECLARE SUB PrintInstructions()
DECLARE FUNCTION GetUserInput(prompt AS STRING) AS STRING
DECLARE FUNCTION GetIntegerInput(prompt AS STRING, minValue AS INTEGER, maxValue AS INTEGER) AS INTEGER
DECLARE SUB RandomizeShooting(level AS INTEGER)
DECLARE SUB IllnessRoutine(eatingChoice AS INTEGER, BYREF miscSupplies AS INTEGER, BYREF blizzardFlag AS INTEGER)
DECLARE SUB MainTurn()

DIM C AS STRING
DIM oxenSpending, foodSpending, ammoSpending, clothingSpending, miscSpending AS INTEGER
DIM cashLeft, totalMileage, bullets, food, clothing, miscSupplies AS INTEGER
DIM currentTurn AS INTEGER
DIM userShootingSkill AS INTEGER

' Initial game setup
PRINT "DO YOU NEED INSTRUCTIONS (YES/NO)"
C = GetUserInput("")
IF UCASE(C) = "YES" THEN
    PrintInstructions()
END IF

' Get player's shooting skill
PRINT "HOW GOOD A SHOT ARE YOU WITH YOUR RIFLE?"
PRINT "  (1) ACE MARKSMAN,  (2) GOOD SHOT,  (3) FAIR TO MIDDLIN'"
PRINT "  (4) NEED MORE PRACTICE,  (5) SHAKY KNEES"
userShootingSkill = GetIntegerInput("", 1, 5)

' Initial purchases
PRINT "HOW MUCH DO YOU WANT TO SPEND ON YOUR OXEN TEAM?"
oxenSpending = GetIntegerInput("", 200, 300)

PRINT "HOW MUCH DO YOU WANT TO SPEND ON FOOD?"
foodSpending = GetIntegerInput("", 0, 700 - oxenSpending)

PRINT "HOW MUCH DO YOU WANT TO SPEND ON AMMUNITION?"
ammoSpending = GetIntegerInput("", 0, 700 - oxenSpending - foodSpending)

PRINT "HOW MUCH DO YOU WANT TO SPEND ON CLOTHING?"
clothingSpending = GetIntegerInput("", 0, 700 - oxenSpending - foodSpending - ammoSpending)

PRINT "HOW MUCH DO YOU WANT TO SPEND ON MISCELLANEOUS SUPPLIES?"
miscSpending = GetIntegerInput("", 0, 700 - oxenSpending - foodSpending - ammoSpending - clothingSpending)

' Calculate remaining cash
cashLeft = 700 - oxenSpending - foodSpending - ammoSpending - clothingSpending - miscSpending
PRINT "AFTER ALL YOUR PURCHASES, YOU NOW HAVE $"; cashLeft; " LEFT."

' Initial resource setup
totalMileage = 0
bullets = ammoSpending * 50
food = foodSpending
clothing = clothingSpending
miscSupplies = miscSpending

' Main game loop
currentTurn = 1
DO WHILE totalMileage < 2040
    MainTurn()
    currentTurn += 1
LOOP

PRINT "CONGRATULATIONS! YOU'VE MADE IT TO OREGON CITY!"
END

' Subroutine for printing instructions
SUB PrintInstructions()
    PRINT "THIS PROGRAM SIMULATES A TRIP OVER THE OREGON TRAIL FROM"
    PRINT "INDEPENDENCE, MISSOURI TO OREGON CITY, OREGON IN 1847."
    PRINT "YOUR FAMILY OF FIVE WILL COVER THE 2040-MILE OREGON TRAIL"
    PRINT "IN 5-6 MONTHS --- IF YOU MAKE IT ALIVE."
    PRINT "YOU HAVE $900 TO SPEND ON SUPPLIES, BUT YOU'VE JUST PAID"
    PRINT "$200 FOR A WAGON, LEAVING YOU WITH $700."
    PRINT "YOU'LL NEED TO SPEND THE REMAINING MONEY ON OXEN, FOOD,"
    PRINT "AMMUNITION, CLOTHING, AND MISCELLANEOUS SUPPLIES."
    PRINT "GOOD LUCK!"
END SUB

' Function to get user input as a string
FUNCTION GetUserInput(prompt AS STRING) AS STRING
    DIM inputStr AS STRING
    PRINT prompt;
    INPUT "", inputStr
    GetUserInput = inputStr
END FUNCTION

' Function to get validated integer input within a range
FUNCTION GetIntegerInput(prompt AS STRING, minValue AS INTEGER, maxValue AS INTEGER) AS INTEGER
    DIM inputVal AS INTEGER
    DO
        PRINT prompt;
        INPUT "", inputVal
        IF inputVal >= minValue AND inputVal <= maxValue THEN EXIT DO
        PRINT "INVALID INPUT. PLEASE ENTER A VALUE BETWEEN "; minValue; " AND "; maxValue
    LOOP
    GetIntegerInput = inputVal
END FUNCTION

' Shooting subroutine
SUB RandomizeShooting(level AS INTEGER)
    DIM response AS STRING
    DIM timeTaken AS INTEGER
    DIM startTime AS DOUBLE
    DIM shootWord AS STRING

    SELECT CASE INT(RND * 4) + 1
        CASE 1: shootWord = "BANG"
        CASE 2: shootWord = "BLAM"
        CASE 3: shootWord = "POW"
        CASE 4: shootWord = "WHAM"
    END SELECT

    PRINT "TYPE "; shootWord;
    startTime = TIMER
    INPUT "", response
    timeTaken = INT((TIMER - startTime) * 1000)

    IF response = shootWord THEN
        PRINT "NICE SHOT!"
    ELSE
        PRINT "YOU MISSED!"
    END IF
END SUB

' Main turn routine
SUB MainTurn()
    DIM choice AS INTEGER

    PRINT "TOTAL MILEAGE: "; totalMileage
    PRINT "FOOD: "; food; " BULLETS: "; bullets; " CLOTHING: "; clothing; " MISC. SUPPLIES: "; miscSupplies; " CASH: $"; cashLeft

    PRINT "DO YOU WANT TO (1) STOP AT A FORT, (2) HUNT, OR (3) CONTINUE?"
    choice = GetIntegerInput("", 1, 3)

    SELECT CASE choice
        CASE 1: ' Fort
            PRINT "FORT: BUY SUPPLIES."
        CASE 2: ' Hunt
            IF bullets >= 40 THEN
                RandomizeShooting(userShootingSkill)
            ELSE
                PRINT "TOUGH---YOU NEED MORE BULLETS TO GO HUNTING."
            END IF
        CASE 3: ' Continue
            totalMileage += 100 + INT(RND * 50)
    END SELECT
END SUB

' Illness subroutine
SUB IllnessRoutine(eatingChoice AS INTEGER, BYREF miscSupplies AS INTEGER, BYREF blizzardFlag AS INTEGER)
    IF RND < 0.1 + 0.35 * (eatingChoice - 1) THEN
        PRINT "MILD ILLNESS---MEDICINE USED"
        miscSupplies -= 2
    ELSEIF RND < 0.6 THEN
        PRINT "SERIOUS ILLNESS---YOU MUST STOP FOR MEDICAL ATTENTION"
        miscSupplies -= 10
    ELSE
        PRINT "BAD ILLNESS---MEDICINE USED"
        miscSupplies -= 5
    END IF

    IF miscSupplies < 0 THEN
        PRINT "YOU RAN OUT OF MEDICAL SUPPLIES AND DIED."
        END
    END IF
END SUB

