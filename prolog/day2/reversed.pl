reversed([], []).
reversed([Head|[]], [Head]).
reversed([Head1|[Head2|[]]], [Head2, Head1]).
reversed([Head|Tail], Result) :- reversed(Tail, Reversed), append(Reversed, [Head], Result).