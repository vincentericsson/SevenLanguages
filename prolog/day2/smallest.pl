smallest([], []).
smallest([Head|[]], Head).
smallest([Head|Tail], Result) :-
	smallest(Tail, Result1),
	(Result1 > Head ->
		Result is Head;
		Result is Result1
	).