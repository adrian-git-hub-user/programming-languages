fun sum_list (xs : int list) = 
	if null xs
		then 0
	else
		hd xs + sum_list(tl xs);

sum_list[3,2,1]

fun countdown (x: int) = 
	if x = 0
		then []
	else 
		x :: countdown(x - 1);

countdown(3)