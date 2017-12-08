smaller(_, [], []).
smaller(Element, [Head|Tail], Smaller) :-
	smaller(Element, Tail, Smaller1),
	(Element > Head ->
		append([Head], Smaller1, Smaller);
		Smaller1 = Smaller
	).
larger(_, [], []).
larger(Element, [Head|Tail], Larger) :-
	larger(Element, Tail, Larger1),
	(Element @=< Head ->
		append([Head], Larger1, Larger);
		Larger1 = Larger
	).
sorted([], []).
sorted([Head|[]], [Head]).
sorted([Head|Tail], Result) :-
	smaller(Head, Tail, Smaller),
	larger(Head, Tail, Larger),
	sorted(Smaller, SmallerSorted),
	sorted(Larger, LargerSorted),
	append(SmallerSorted, [Head], Intermediate),
	append(Intermediate, LargerSorted, Result).