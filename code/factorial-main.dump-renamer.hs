Main.fact 0 = 0
Main.fact n = n * Main.fact (n - 1)
Main.main = print $ Main.fact 5
