OperatorTable addAssignOperator(":", "addStuff")
curlyBrackets := method(
	content := Map clone
	call message arguments foreach (arg, arg println, content doMessage(arg))
)
Map addStuff := method(key, value,
	self atPut(key, value)
)
Builder := Object clone
Builder extra := ""
Builder forward := method(
	string := ""
	string = string .. "<" .. call message name
	extra = "  " .. extra
	body := ""
	call message arguments foreach(
		arg,
		content := self doMessage(arg);
		if (content type == "Map", content foreach(k, v,
			k = k asMutable removePrefix("\"") removeSuffix("\"")
			string = string .. " " .. k .. "=\"" .. v .. "\"")
		)
		if(content type == "Sequence", body = body .. extra .. content .. "\n")
	)
	string = string .. ">\n" .. body
	extra = extra exSlice(2)
	string = string .. extra .. "</" .. call message name .. ">"
)
doFile("code.io") print