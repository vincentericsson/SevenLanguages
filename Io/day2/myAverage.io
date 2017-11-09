List testNumber := method(self foreach(v, (v proto == Number) ifFalse(Exception raise("Not only numbers"))))
List myAverage := method(self testNumber; if(self size == 0, 0, self sum / self size))

list(1,2,3,4,5,6,7,8,9,10) myAverage println
list() myAverage println
list(1,2,"asdf") myAverage print