uplim = 999
lowlim = 100

function isPalindrome(n)
	s = string(n)
	return(s == reverse(s))
end

pmax = 0

for n1 in uplim:-1:lowlim
	for n2 in n1:-1:lowlim
		global pmax
		if isPalindrome(n1 * n2) && n1 * n2 > pmax
			pmax = n1 * n2
		end
		if n1 * n2 <= pmax
			break
		end
	end
end


println("Euler Problem 4:")
println(pmax)
