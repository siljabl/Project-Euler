# My solution
Σ = 0
lim = 1000

for i in 1:(lim-1)
	global Σ
	if i % 3 == 0
		Σ += i
	elseif i % 5 == 0
		Σ += i
	end
end

println("Euler problem 1: ")
println(Σ)


# Other solution
function SumMultiples(n)
	p = div(lim-1, n)
	return n * p * (p + 1) / 2
end

Σ = SumMultiples(3) + SumMultiples(5) - SumMultiples(15)