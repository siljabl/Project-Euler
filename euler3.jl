input = 600851475143

function largestPrime(n)
	solved = false
	lim = n
	if lim % 2 == 0
		lim /= 2
	end

	pmax = 3
	primes = zeros(0)
	global i = pmax

	while !solved
		if lim % i == 0
			pmax = i
			lim /= i
			append!(primes, pmax)
		end

		if lim <= pmax
			solved = true
		end

		i += 2
	end
	return pmax #, primes
end


println("Euler Problem 3:")
println(largestPrime(input))

