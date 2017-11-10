rand := Random value(100) floor + 1

diff := nil

in  := File standardInput
out := File standardOutput

10 repeat(
    "Guess the number:" println
	out flush
	guess := in readLine asNumber
	(guess==rand) ifTrue("Correct!" println; break)
	"Bad guess" println
	(diff!=nil)  ifTrue(
	    (diff < ((rand - guess) abs)) ifTrue("colder" println) ifFalse("warmer" println)
	)
	diff = (rand - guess) abs
)
