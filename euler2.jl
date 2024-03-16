lim = 4*10^6
f1 = 1
f2 = 2

function even(n)
	return n * ((n + 1) % 2)
end


Σ = f2
f = 0

while f < lim
	global f, f1, f2
	global Σ

	f = f1 + f2
	f1 = f2
	f2 = f

	Σ += even(f)
end


println("Euler problem 2: ")
println(Σ)
