lim = 20
π = lim

for i in lim-1:-1:1
	global π

	π *= Int(i / gcd(π, i))
end

println(π)