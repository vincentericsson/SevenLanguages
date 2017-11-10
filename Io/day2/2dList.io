TwoDimList := Object clone
TwoDimList dim := method(x, y,
    self _lst := List clone
	y repeat(
	    self _lst append(
		    List clone preallocateToSize(x) setSize(x))))
TwoDimList set := method(x, y, value, _lst at(y) atPut(x, value))
TwoDimList get := method(x, y, self _lst at(y) at(x))
TwoDimList transpose := method(
	new := TwoDimList clone
	new dim( self _lst size, self _lst at(0) size)
	for(i, 0, self _lst at(0) size - 1,
		for(j, 0, self _lst size - 1,
		    new set(j, i, self get(i, j))))
	new)

TwoDimList write := method(name,
	File with(name) open write(self serialized) close)
TwoDimList read := method(name,
    doRelativeFile(name))

lst := TwoDimList clone
lst dim(3,1)
lst println
lst set(0,0,"value 1")
lst set(1,0,"value 2")
lst println
tr := lst transpose
tr print
lst write("2d.txt")
TwoDimList read("2d.txt") print
