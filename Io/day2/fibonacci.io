Fib := clone Object
fib := clone Fib
fib a := 1
fib b := 1

fib loop := method(i, a=1; b=1; i=i-2; while(i > 0, a=a+b; b=a-b;i = i-1))
fib loop(4)
fib a println

fib loop(10)
fib a println

fib rec := method(i, (i>0) ifTrue(a=a+b; b=a-b; rec(i-1)))
fib recurse := method(i, a=1; b=1; i=i-2; rec(i))

fib recurse(4)
fib a println

fib recurse(10)
fib a println