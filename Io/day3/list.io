Builder := Object clone
Builder extra := ""
Builder forward := method(
	writeln(extra, call message name, " [")
	extra = " " .. extra
	call message arguments foreach(
		arg,
		content := self doMessage(arg);
		if(content type == "Sequence", writeln(extra, content))
	)
	extra = extra exSlice(1)
	writeln(extra, "]")
)
Builder ul(
	li("Io"),
	li("Lua"),
	li("Javascript"))