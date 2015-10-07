repeat {
	dice <- sample(1:6, 3,replace = TRUE)
	recover()
	if (sum(dice) == 18) break()
}