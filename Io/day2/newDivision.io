division := Number getSlot("/")
Number / := method(i, if(i==0, 0, self division(i)))
(1 / 5) println
(1 / 0) print