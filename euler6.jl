# My solution
N = 100
Arr = collect(1:1:N)

result = sum(Arr)^2 - sum(Arr .* Arr)
println(result)

# Better solution..

function sumFast(n)
	return n * (n + 1) / 2
end

function squareSum(n)
	return n / 6 + n^2 / 2 + n^3 / 3
end

println(sumFast(N)^2 - squareSum(N))